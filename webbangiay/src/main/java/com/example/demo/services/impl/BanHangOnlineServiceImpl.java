package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.HoaDon;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.repositories.ChiTietSanPhamRepository;
import com.example.demo.repositories.GioHangChiTietRepository;
import com.example.demo.services.BanHangOnlineService;
import com.example.demo.util.UserLoginCommon;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class BanHangOnlineServiceImpl implements BanHangOnlineService {

    @Autowired
    private GioHangChiTietRepository gioHangChiTietRepository;

    @Autowired
    private ChiTietSanPhamRepository chiTietSanPhamRepository;

    @Autowired
    private UserLoginCommon common;

    @Override
    public Long countGioHang() {
        return gioHangChiTietRepository.countByKhachHang(common.getUserLogin());
    }

    @Override
    public List<GioHangChiTiet> getListGioHang() {
        return gioHangChiTietRepository.findAllByKhachHang(common.getUserLogin());
    }

    @Override
    @Transactional
    public Boolean themVaoGioHang(BanHangRequest banHangRequest) {
        try {
            ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(UUID.fromString(banHangRequest.getChiTietSanPham())).get();
            Optional<GioHangChiTiet> gioHangChiTiet = gioHangChiTietRepository.
                    findByKhachHangAndChiTietSanPham(common.getUserLogin(), chiTietSanPham);

            if (gioHangChiTiet.isEmpty()) {
                GioHangChiTiet gioHangChiTietNew = new GioHangChiTiet();
                gioHangChiTietNew.setChiTietSanPham(chiTietSanPham);
                gioHangChiTietNew.setKhachHang(common.getUserLogin());
                gioHangChiTietNew.setSoLuong(banHangRequest.getSoLuong());
                gioHangChiTietRepository.save(gioHangChiTietNew);
            } else {
                gioHangChiTiet.get().setSoLuong(gioHangChiTiet.get().getSoLuong() + banHangRequest.getSoLuong());
                gioHangChiTietRepository.save(gioHangChiTiet.get());
            }
        } catch (Exception e) {
            throw e;
        }
        return true;
    }

    @Override
    @Transactional
    public Boolean updateGioHang(List<BanHangRequest> list) {
        list.stream().forEach(el -> {

            try {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(UUID.fromString(el.getChiTietSanPham())).get();
                Optional<GioHangChiTiet> gioHangChiTiet = gioHangChiTietRepository.
                        findByKhachHangAndChiTietSanPham(common.getUserLogin(), chiTietSanPham);

                gioHangChiTiet.get().setSoLuong(el.getSoLuong());
                gioHangChiTietRepository.save(gioHangChiTiet.get());
            } catch (Exception e) {
                throw e;
            }
        });
        return true;
    }

    @Override
    public Boolean deleteGioHang(List<UUID> listId) {
        gioHangChiTietRepository.deleteAllById(listId);
        return true;
    }

    @Override
    public Boolean taoHoaDon(List<ChiTietSanPham> list, HoaDon hoaDon) {
        return null;
    }

    @Override
    public Boolean thanhToan(HoaDon hoaDon) {
        return null;
    }

    @Override
    public Boolean thayDoiTrangThaiHoaDon(HoaDon hoaDon) {
        return null;
    }
}

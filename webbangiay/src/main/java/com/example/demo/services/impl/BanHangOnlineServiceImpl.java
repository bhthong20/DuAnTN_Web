package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.models.dto.HoaDonRequest;
import com.example.demo.models.dto.SanPhamAddHoaDon;
import com.example.demo.repositories.ChiTietSanPhamRepository;
import com.example.demo.repositories.GioHangChiTietRepository;
import com.example.demo.repositories.HoaDonChiTietRepository;
import com.example.demo.repositories.HoaDonRepository;
import com.example.demo.repositories.KhuyenMaiRepository;
import com.example.demo.services.BanHangOnlineService;
import com.example.demo.util.UserLoginCommon;
import jakarta.transaction.Transactional;
import org.apache.coyote.BadRequestException;
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
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private KhuyenMaiRepository khuyenMaiRepository;

    @Autowired
    private VNPayService vnPayService;

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
    public Boolean themVaoGioHang(BanHangRequest banHangRequest) throws BadRequestException {
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
                if (gioHangChiTiet.get().getSoLuong() + banHangRequest.getSoLuong() > chiTietSanPham.getSoLuongTon()) {
                    throw new BadRequestException("Số lượng sản phẩm không đủ");
                }
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
    public Boolean updateGioHang(List<BanHangRequest> list) throws BadRequestException {
        try {
            for (BanHangRequest el: list) {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(UUID.fromString(el.getChiTietSanPham())).get();
                Optional<GioHangChiTiet> gioHangChiTiet = gioHangChiTietRepository.
                        findByKhachHangAndChiTietSanPham(common.getUserLogin(), chiTietSanPham);

                if (el.getSoLuong() > chiTietSanPham.getSoLuongTon()) {
                    throw new BadRequestException("Sản phẩm " + chiTietSanPham.getSanPham().getTenSP() +
                            ". Có màu " + chiTietSanPham.getMauSac().getTen() +
                            ". Có kích cớ: " + chiTietSanPham.getKichThuoc().getSize() +
                            ". Có chất liệu: " + chiTietSanPham.getChatLieu().getTenChatLieu() +
                            ". Chỉ còn lại " + chiTietSanPham.getSoLuongTon());
                }

                gioHangChiTiet.get().setSoLuong(el.getSoLuong());
                gioHangChiTietRepository.save(gioHangChiTiet.get());
            }
        } catch (Exception e) {
            throw e;
        }
        return true;
    }

    @Override
    public Boolean deleteGioHang(List<UUID> listId) {
        gioHangChiTietRepository.deleteAllById(listId);
        return true;
    }

    @Override
    @Transactional
    public UUID taoHoaDon(List<BanHangRequest> list) throws BadRequestException {
        try {
            HoaDon hoaDon = new HoaDon();
            hoaDon.setKhachHang(common.getUserLogin());
            hoaDon.setLoai(1);
            hoaDon.setTrangThai(9);
            hoaDon.setMa("HĐ" + hoaDonRepository.findAll().size());
            hoaDon.setId(hoaDonRepository.save(hoaDon).getId());

            for (BanHangRequest el: list) {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(UUID.fromString(el.getChiTietSanPham())).get();
                Optional<GioHangChiTiet> gioHangChiTiet = gioHangChiTietRepository.
                        findByKhachHangAndChiTietSanPham(common.getUserLogin(), chiTietSanPham);

                if (el.getSoLuong() > chiTietSanPham.getSoLuongTon()) {
                    throw new BadRequestException("Sản phẩm " + chiTietSanPham.getSanPham().getTenSP() +
                            ". Có màu " + chiTietSanPham.getMauSac().getTen() +
                            ". Có kích cớ: " + chiTietSanPham.getKichThuoc().getSize() +
                            ". Có chất liệu: " + chiTietSanPham.getChatLieu().getTenChatLieu() +
                            ". Chỉ còn lại " + chiTietSanPham.getSoLuongTon());
                }

                if (!gioHangChiTiet.isEmpty()) {
                    gioHangChiTietRepository.deleteById(gioHangChiTiet.get().getId());
                }

                HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
                hoaDonChiTiet.setHoaDon(hoaDon);
                hoaDonChiTiet.setChiTietSanPham(chiTietSanPham);
                hoaDonChiTiet.setSoLuong(el.getSoLuong());
                hoaDonChiTiet.setDonGia(el.getDonGia());
                hoaDonChiTiet.setTrangThai(0);

                hoaDonChiTietRepository.save(hoaDonChiTiet);
            }
            return hoaDon.getId();
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public HoaDon findHoaDonById(UUID id) {
        return hoaDonRepository.findById(id).orElse(null);
    }

    @Override
    public List<HoaDonChiTiet> listHoaDonChiTiet(UUID id) {
        return hoaDonChiTietRepository.findHoaDonChiTietByHoaDonAndTrangThai(hoaDonRepository.findById(id).orElse(null), 0);
    }

    @Override
    public List<HoaDon> listHoaDon(int trangThai) {
        if (trangThai == -1) {
            return hoaDonRepository.findAllByLoaiAndKhachHang(1, common.getUserLogin());
        }
        return hoaDonRepository.findAllByLoaiAndTrangThaiAndKhachHang(1, trangThai, common.getUserLogin());
    }

    @Override
    @Transactional
    public Boolean updateHoaDon(List<BanHangRequest> banHangRequests, UUID idHoaDon) throws BadRequestException {
        try {
            HoaDon hoaDon = hoaDonRepository.findById(idHoaDon).get();
            for (BanHangRequest el: banHangRequests) {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(UUID.fromString(el.getChiTietSanPham())).get();
                Optional<HoaDonChiTiet> hoaDonChiTiet = hoaDonChiTietRepository.
                        findHoaDonChiTietByHoaDonAndChiTietSanPham(hoaDon, chiTietSanPham);

                if (el.getSoLuong() > chiTietSanPham.getSoLuongTon()) {
                    throw new BadRequestException("Sản phẩm " + chiTietSanPham.getSanPham().getTenSP() +
                            ". Có màu " + chiTietSanPham.getMauSac().getTen() +
                            ". Có kích cớ: " + chiTietSanPham.getKichThuoc().getSize() +
                            ". Có chất liệu: " + chiTietSanPham.getChatLieu().getTenChatLieu() +
                            ". Chỉ còn lại " + chiTietSanPham.getSoLuongTon());
                }
                hoaDonChiTiet.get().setDonGia(el.getDonGia());
                hoaDonChiTiet.get().setSoLuong(el.getSoLuong());
                hoaDonChiTietRepository.save(hoaDonChiTiet.get());
            }
        } catch (Exception e) {
            throw e;
        }
        return true;
    }

    @Override
    @Transactional
    public Boolean deleteHoaDon(List<UUID> listId, UUID idHoaDon) {
        try {
            HoaDon hoaDon = hoaDonRepository.findById(idHoaDon).get();
            for (UUID el: listId) {
                hoaDonChiTietRepository.deleteById(el);
            }
            if (hoaDonChiTietRepository.countByHoaDon(hoaDon) == 0) {
                hoaDonRepository.delete(hoaDon);
                return false;
            }
        } catch (Exception e) {
            throw e;
        }
        return true;
    }

    @Override
    @Transactional
    public String thanhToan(HoaDonRequest hoaDonRequest) throws BadRequestException {
        try {
            for (SanPhamAddHoaDon el: hoaDonRequest.getSanPhamAddHoaDons()) {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamRepository.findById(el.getSanPhamId()).get();
                Optional<HoaDonChiTiet> hoaDonChiTiet = hoaDonChiTietRepository.
                        findById(el.getHoaDonId());

                if (el.getQuantity() > chiTietSanPham.getSoLuongTon()) {
                    throw new BadRequestException("Sản phẩm " + chiTietSanPham.getSanPham().getTenSP() +
                            ". Có màu " + chiTietSanPham.getMauSac().getTen() +
                            ". Có kích cớ: " + chiTietSanPham.getKichThuoc().getSize() +
                            ". Có chất liệu: " + chiTietSanPham.getChatLieu().getTenChatLieu() +
                            ". Chỉ còn lại " + chiTietSanPham.getSoLuongTon());
                }

                hoaDonChiTiet.get().setDonGia(el.getDonGia());
                hoaDonChiTiet.get().setSoLuong(el.getQuantity());
                hoaDonChiTietRepository.save(hoaDonChiTiet.get());
            }
            if (hoaDonRequest.getIdKhuyenMai() != null) {
                hoaDonRequest.getHoaDon().setKhuyenMai(khuyenMaiRepository.findById(hoaDonRequest.getIdKhuyenMai()).get());
            }

            String returnUrl = "";

            if (hoaDonRequest.getHoaDon().getPhuongThucThanhToan() == 1) {
                hoaDonRequest.getHoaDon().setTrangThai(3);
                returnUrl = vnPayService.createOrder(hoaDonRequest.getHoaDon().getTongTien().intValue(), hoaDonRequest.getHoaDon().getId().toString());
            } else {
                hoaDonRequest.getHoaDon().setTrangThai(0);
                returnUrl = "/ban-hang-online/hoa-don-detail?id=" + hoaDonRequest.getHoaDon().getId().toString();
            }

            hoaDonRepository.save(hoaDonRequest.getHoaDon());

            return returnUrl;
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    @Transactional
    public Boolean thayDoiTrangThaiHoaDon(UUID idHoaDon, int trangThai) {
        HoaDon hoaDon = hoaDonRepository.findById(idHoaDon).get();
        if (common.getUserLogin().getRole().equals("ADMIN")) {
            hoaDon.setNhanVien(common.getUserLogin());
        } else {
            hoaDon.setKhachHang(common.getUserLogin());
        }
        hoaDon.setTrangThai(trangThai);
        return true;
    }
}

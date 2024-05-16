package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.KhachHang;
import com.example.demo.models.NhanVien;
import com.example.demo.models.dto.HoaDonRequest;
import com.example.demo.models.dto.SanPhamAddHoaDon;
import com.example.demo.repositories.ChiTietSanPhamRepository;
import com.example.demo.repositories.HoaDonChiTietRepository;
import com.example.demo.repositories.HoaDonRepository;
import com.example.demo.repositories.KhuyenMaiRepository;
import com.example.demo.services.BanHangTaiQuayService;
import com.example.demo.services.HoaDonService;
import com.example.demo.services.KhachHangService;
import com.example.demo.util.RolesConstant;
import com.example.demo.util.UserLoginCommon;
import jakarta.transaction.Transactional;
import org.apache.coyote.BadRequestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class BanHangTaiQuayServiceImpl implements BanHangTaiQuayService {

    @Autowired
    private HoaDonService hoaDonService;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @Autowired
    private ChiTietSanPhamRepository chiTietSanPhamService;

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private KhuyenMaiRepository khuyenMaiRepository;

    @Autowired
    private UserLoginCommon common;

    @Override
    public List<HoaDon> getAllHoaDon() {
        return hoaDonRepository.findAllByLoai(0);
    }

    @Override
    public List<HoaDon> createHoaDon() throws BadRequestException {
        List<HoaDon> hoaDons = hoaDonRepository.findAllByLoaiAndTrangThai(0, 9);
        if (hoaDons.size() >= 10) {
            throw new BadRequestException("Bạn chỉ được tạo tối thiểu 10 hóa đơn chờ");
        }
        HoaDon hoaDon = new HoaDon();
        String maHD = "HĐ" + (hoaDonService.findAll().size() + 1);
        hoaDon.setMa(maHD);
        hoaDon.setLoai(0);
        hoaDon.setNgayTao(Date.valueOf(LocalDate.now()));
        hoaDon.setTrangThai(9);
        hoaDonService.add(hoaDon);
        return hoaDonService.findAll();
    }

    @Override
    public List<HoaDonChiTiet> findHoaDonDto(UUID id) {
        return hoaDonChiTietRepository.findHoaDonChiTietByHoaDonAndTrangThai(hoaDonService.findById(id), 0);
    }

    @Override
    public List<ChiTietSanPham> getChiTietSanPham(List<UUID> listId) {
        if (listId.size() == 0) {
            return chiTietSanPhamService.findAllByIsDelete(1);
        }
        return chiTietSanPhamService.findAllByIsDeleteAndIdNotIn(1, listId);
    }

    @Override
    public ChiTietSanPham getDetailSanPham(UUID id) {
        return chiTietSanPhamService.findById(id).orElse(null);
    }

    @Override
    @Transactional
    public List<HoaDonChiTiet> shoppingProduct(List<SanPhamAddHoaDon> sanPhamAddHoaDons) {
        if (sanPhamAddHoaDons.size() != 0) {
            sanPhamAddHoaDons.get(0);
            HoaDon hoaDon = hoaDonService.findById(sanPhamAddHoaDons.get(0).getHoaDonId());
            Map<UUID, HoaDonChiTiet> hoaDonChiTietMap = getMapHoaDonChiTietById(hoaDon.getId());

            List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();
            List<ChiTietSanPham> chiTietSanPhams = new ArrayList<>();

            sanPhamAddHoaDons.forEach(el -> {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamService.findById(el.getSanPhamId()).orElseGet(null);

                if (chiTietSanPham != null) {
                    if (hoaDonChiTietMap.containsKey(chiTietSanPham.getId())) {
                        HoaDonChiTiet hoaDonChiTiet = hoaDonChiTietMap.get(chiTietSanPham.getId());
                        chiTietSanPham.setSoLuongTon(hoaDonChiTiet.getSoLuong() + hoaDonChiTiet.getChiTietSanPham().getSoLuongTon() - el.getQuantity());
                        if (chiTietSanPham.getSoLuongTon() <= 0) {
                            chiTietSanPham.setIsDelete(0);
                        } else {
                            chiTietSanPham.setIsDelete(1);
                        }
                        hoaDonChiTiet.setDonGia(el.getDonGia());
                        hoaDonChiTiet.setSoLuong(el.getQuantity());
                        hoaDonChiTietList.add(hoaDonChiTiet);
                        chiTietSanPhams.add(chiTietSanPham);
                    } else {
                        HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
                        hoaDonChiTiet.setHoaDon(hoaDon);
                        hoaDonChiTiet.setChiTietSanPham(chiTietSanPham);
                        hoaDonChiTiet.setDonGia(el.getDonGia());
                        hoaDonChiTiet.setTrangThai(0);
                        hoaDonChiTiet.setSoLuong(el.getQuantity());
                        hoaDonChiTietList.add(hoaDonChiTiet);
                        chiTietSanPham.setSoLuongTon(chiTietSanPham.getSoLuongTon() - el.getQuantity());
                        if (chiTietSanPham.getSoLuongTon() <= 0) {
                            chiTietSanPham.setIsDelete(0);
                        } else {
                            chiTietSanPham.setIsDelete(1);
                        }

                        chiTietSanPhams.add(chiTietSanPham);
                    }
                }
            });
            hoaDonChiTietRepository.saveAll(hoaDonChiTietList);
            chiTietSanPhamService.saveAll(chiTietSanPhams);
            return hoaDonChiTietList;
        }
        return null;
    }

    @Override
    @Transactional
    public Boolean deleteProduct(List<UUID> listId) {
        try {
            List<HoaDonChiTiet> hoaDonChiTietList = hoaDonChiTietRepository.findHoaDonChiTietByIdIn(listId).stream().map(el -> {
                el.setTrangThai(1);
                return el;
            }).collect(Collectors.toList());
            List<ChiTietSanPham> chiTietSanPhams = hoaDonChiTietList.stream().map(el -> {
                ChiTietSanPham chiTietSanPham = el.getChiTietSanPham();
                chiTietSanPham.setSoLuongTon(chiTietSanPham.getSoLuongTon() + el.getSoLuong());

                if (chiTietSanPham.getSoLuongTon() <= 0) {
                    chiTietSanPham.setIsDelete(0);
                } else {
                    chiTietSanPham.setIsDelete(1);
                }

                return chiTietSanPham;
            }).collect(Collectors.toList());
            hoaDonChiTietRepository.saveAll(hoaDonChiTietList);
            chiTietSanPhamService.saveAll(chiTietSanPhams);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public List<KhachHang> getAllKhachHang() {
        return khachHangService.findAll();
    }

    @Override
    public Boolean changeStatusHoaDon(HoaDonRequest request) {
        List<SanPhamAddHoaDon> sanPhamAddHoaDons = request.getSanPhamAddHoaDons();
        if (sanPhamAddHoaDons.size() != 0) {
            sanPhamAddHoaDons.get(0);
            HoaDon hoaDon = request.getHoaDon();
            Map<UUID, HoaDonChiTiet> hoaDonChiTietMap = getMapHoaDonChiTietById(hoaDon.getId());

            List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();
            List<ChiTietSanPham> chiTietSanPhams = new ArrayList<>();

            sanPhamAddHoaDons.forEach(el -> {
                ChiTietSanPham chiTietSanPham = chiTietSanPhamService.findById(el.getSanPhamId()).orElseGet(null);

                if (chiTietSanPham != null) {
                    if (hoaDonChiTietMap.containsKey(chiTietSanPham.getId())) {
                        HoaDonChiTiet hoaDonChiTiet = hoaDonChiTietMap.get(chiTietSanPham.getId());
                        chiTietSanPham.setSoLuongTon(hoaDonChiTiet.getSoLuong() +
                                hoaDonChiTiet.getChiTietSanPham().getSoLuongTon() - el.getQuantity());

                        if (chiTietSanPham.getSoLuongTon() <= 0) {
                            chiTietSanPham.setIsDelete(0);
                        } else {
                            chiTietSanPham.setIsDelete(1);
                        }

                        hoaDonChiTiet.setDonGia(el.getDonGia());
                        hoaDonChiTiet.setSoLuong(el.getQuantity());
                        hoaDonChiTietList.add(hoaDonChiTiet);
                        chiTietSanPhams.add(chiTietSanPham);
                    } else {
                        HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
                        hoaDonChiTiet.setHoaDon(hoaDon);
                        hoaDonChiTiet.setChiTietSanPham(chiTietSanPham);
                        hoaDonChiTiet.setDonGia(el.getDonGia());
                        hoaDonChiTiet.setTrangThai(0);
                        hoaDonChiTiet.setSoLuong(el.getQuantity());
                        hoaDonChiTietList.add(hoaDonChiTiet);
                        chiTietSanPham.setSoLuongTon(chiTietSanPham.getSoLuongTon() - el.getQuantity());

                        if (chiTietSanPham.getSoLuongTon() <= 0) {
                            chiTietSanPham.setIsDelete(0);
                        } else {
                            chiTietSanPham.setIsDelete(1);
                        }

                        chiTietSanPhams.add(chiTietSanPham);
                    }
                }
            });
            hoaDonChiTietRepository.saveAll(hoaDonChiTietList);
            chiTietSanPhamService.saveAll(chiTietSanPhams);

            KhachHang khachHang = request.getKhachHang();
            if (khachHang.getId() == null) {
                String maKhachHang = "KH00" + (khachHangService.findAll().size() + 1);
                khachHang.setMa(maKhachHang);
                khachHang.setTaiKhoan(maKhachHang);
                khachHang.setMatKhau(maKhachHang);
                khachHang.setId(khachHangService.add(khachHang).getId());
            }

            if (request.getIdKhuyenMai() != null) {
                hoaDon.setKhuyenMai(khuyenMaiRepository.findById(request.getIdKhuyenMai()).orElse(null));
            }
            hoaDon.setKhachHang(khachHang);
            hoaDon.setNhanVien((NhanVien) common.getUserLogin());
            hoaDonService.update(hoaDon.getId(), hoaDon);
            return true;
        }
        return false;
    }

    @Override
    public Boolean rejectHoaDon(List<UUID> listId, UUID idHoaDon) {
        try {
            List<HoaDonChiTiet> hoaDonChiTietList = hoaDonChiTietRepository.findHoaDonChiTietByIdIn(listId).stream().map(el -> {
                el.setTrangThai(0);
                return el;
            }).collect(Collectors.toList());
            List<ChiTietSanPham> chiTietSanPhams = hoaDonChiTietList.stream().map(el -> {
                ChiTietSanPham chiTietSanPham = el.getChiTietSanPham();
                chiTietSanPham.setSoLuongTon(chiTietSanPham.getSoLuongTon() + el.getSoLuong());

                if (chiTietSanPham.getSoLuongTon() <= 0) {
                    chiTietSanPham.setIsDelete(0);
                } else {
                    chiTietSanPham.setIsDelete(1);
                }

                return chiTietSanPham;
            }).collect(Collectors.toList());
            chiTietSanPhamService.saveAll(chiTietSanPhams);

            HoaDon hoaDon = hoaDonService.findById(idHoaDon);
            hoaDon.setTrangThai(8);
            hoaDonService.update(idHoaDon, hoaDon);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return null;
    }
    private Map<UUID, HoaDonChiTiet> getMapHoaDonChiTietById(UUID idHoaDon) {
        Map<UUID, HoaDonChiTiet> map = new HashMap<>();
        findHoaDonDto(idHoaDon).forEach(el -> {
            map.put(el.getChiTietSanPham().getId(), el);
        });
        return map;
    }
}

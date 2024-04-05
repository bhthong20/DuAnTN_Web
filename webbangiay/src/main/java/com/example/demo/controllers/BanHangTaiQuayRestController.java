package com.example.demo.controllers;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.KhachHang;
import com.example.demo.models.dto.SanPhamAddHoaDon;
import com.example.demo.services.BanHangTaiQuayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/ban-hang-tai-quay/rest")
public class BanHangTaiQuayRestController {

    @Autowired
    private BanHangTaiQuayService banHangTaiQuayService;

    @GetMapping("/danh-sach-hoa-don")
    public List<HoaDon> getAllHoaDon() {
        return banHangTaiQuayService.getAllHoaDon();
    }

    @GetMapping("/tao-moi-hoa-don")
    public List<HoaDon> createHoaDon() {
        return banHangTaiQuayService.createHoaDon();
    }

    @GetMapping("/hoa-don-chi-tiet")
    public List<HoaDonChiTiet> findHoaDonChiTietById(@RequestParam(name = "id", defaultValue = "") String id) {
        return banHangTaiQuayService.findHoaDonDto(UUID.fromString(id));
    }

    @GetMapping("/get-all-san-pham")
    public List<ChiTietSanPham> getChiTietSanPham() {
        return banHangTaiQuayService.getChiTietSanPham();
    }

    @PostMapping("/mua-san-pham")
    public List<HoaDonChiTiet> shoppingProduct(@RequestBody List<SanPhamAddHoaDon> sanPhamAddHoaDons) {
        return banHangTaiQuayService.shoppingProduct(sanPhamAddHoaDons);
    }

    @PostMapping("/xoa-san-pham")
    public Boolean deleteProduct(@RequestBody List<String> idSanPham) {
        return banHangTaiQuayService.deleteProduct(idSanPham.stream().map(el -> UUID.fromString(el)).collect(Collectors.toList()));
    }

    @GetMapping("/get-all-khach-hang")
    public List<KhachHang> getAllKhachHang() {
        return banHangTaiQuayService.getAllKhachHang();
    }
}

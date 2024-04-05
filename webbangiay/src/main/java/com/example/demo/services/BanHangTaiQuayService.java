package com.example.demo.services;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.KhachHang;
import com.example.demo.models.dto.SanPhamAddHoaDon;

import java.util.List;
import java.util.UUID;

public interface BanHangTaiQuayService {
    List<HoaDon> getAllHoaDon();
    List<HoaDon> createHoaDon();
    List<HoaDonChiTiet> findHoaDonDto(UUID id);
    List<ChiTietSanPham> getChiTietSanPham();
    List<HoaDonChiTiet> shoppingProduct(List<SanPhamAddHoaDon> sanPhamAddHoaDons);
    Boolean deleteProduct(List<UUID> listId);
    List<KhachHang> getAllKhachHang();
    Boolean changeStatusHoaDon(List<SanPhamAddHoaDon> sanPhamAddHoaDons, int status);
    Boolean rejectHoaDon(List<UUID> listId, UUID idHoaDon);
}

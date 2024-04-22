package com.example.demo.services;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.HoaDon;
import com.example.demo.models.dto.BanHangRequest;
import org.apache.coyote.BadRequestException;

import java.util.List;
import java.util.UUID;

public interface BanHangOnlineService {
    Long countGioHang();
    List<GioHangChiTiet> getListGioHang();
    Boolean themVaoGioHang(BanHangRequest banHangRequest) throws BadRequestException;
    Boolean updateGioHang(List<BanHangRequest> banHangRequests) throws BadRequestException;
    Boolean deleteGioHang(List<UUID> listId);
    Boolean taoHoaDon(List<ChiTietSanPham> list, HoaDon hoaDon);
    Boolean thanhToan(HoaDon hoaDon);
    Boolean thayDoiTrangThaiHoaDon(HoaDon hoaDon);
}

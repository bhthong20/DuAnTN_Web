package com.example.demo.services;

import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.models.dto.HoaDonRequest;
import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.coyote.BadRequestException;

import java.util.List;
import java.util.UUID;

public interface BanHangOnlineService {
    Long countGioHang(HttpServletRequest httpServletRequest);
    List<GioHangChiTiet> getListGioHang(HttpServletRequest httpServletRequest) ;
    Boolean themVaoGioHang(BanHangRequest banHangRequest, HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest) throws BadRequestException;
    Boolean updateGioHang( HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,List<BanHangRequest> banHangRequests) throws BadRequestException;
    Boolean deleteGioHang(HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,List<UUID> listId);
    UUID taoHoaDon(HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,List<BanHangRequest> list) throws BadRequestException;
    HoaDon findHoaDonById(UUID id);
    List<HoaDonChiTiet> listHoaDonChiTiet(UUID id);
    List<HoaDon> listHoaDon(int trangThai);
    Boolean updateHoaDon(List<BanHangRequest> banHangRequests, UUID idHoaDon) throws BadRequestException;
    Boolean deleteHoaDon(List<UUID> listId, UUID idHoaDon);
    String thanhToan(HoaDonRequest hoaDonRequest) throws BadRequestException;
    Boolean thayDoiTrangThaiHoaDon(UUID idHoaDon, int trangThai) throws BadRequestException;
    Boolean quayLaiTrangThai(UUID idHoaDon) throws BadRequestException;
    int countHoaDonByTrangThai(int trangThai);
}

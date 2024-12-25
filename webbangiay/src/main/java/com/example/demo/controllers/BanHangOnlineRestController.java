package com.example.demo.controllers;

import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.models.dto.HoaDonRequest;
import com.example.demo.models.dto.TrangThaiHoaDonRequest;
import com.example.demo.services.BanHangOnlineService;
import com.example.demo.util.CallApiGiaHangTietKiem;
import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.coyote.BadRequestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/ban-hang-online/rest")
public class BanHangOnlineRestController {

    @Autowired
    private BanHangOnlineService service;

    @Autowired
    private CallApiGiaHangTietKiem giaHangTietKiem;

    @GetMapping("/phi-giao-hang")
    public Map<String, Object> getPhiGiaoHang(@RequestParam(name = "province") String province, @RequestParam(name = "district") String district) {
        return giaHangTietKiem.getPhiGiaoHang(province, district);
    }

    @GetMapping("/count-gio-hang")
    public Long countGioHang(HttpServletRequest httpServletRequest) {
        return service.countGioHang(httpServletRequest);
    }

    @PostMapping("/them-gio-hang")
    public Boolean themVaoGioHang(@RequestBody BanHangRequest banHangRequest, HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest) throws BadRequestException {
        return service.themVaoGioHang(banHangRequest,httpServletResponse,httpServletRequest);
    }

    @GetMapping("/list-gio-hang")
    public List<GioHangChiTiet> getListGioHang(HttpServletRequest httpServletRequest)  {
        return service.getListGioHang(httpServletRequest);
    }

    @PostMapping("/delete-gio-hang")
    public Boolean deleteGioHang(HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,@RequestBody List<UUID> list) {
        return service.deleteGioHang(httpServletResponse,httpServletRequest,list);
    }

    @PostMapping("/update-gio-hang")
    public Boolean updateGioHang( HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,@RequestBody List<BanHangRequest> list) throws BadRequestException {
        return service.updateGioHang(httpServletResponse,httpServletRequest,list);
    }

    @PostMapping("/tao-hoa-don")
    public UUID taoHoaDon(HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest,@RequestBody List<BanHangRequest> list) throws BadRequestException {
        return service.taoHoaDon(httpServletResponse,httpServletRequest,list);
    }

    @PostMapping("/list-hoa-don")
    public Map<String, Object> getListHoaDonChiTiet(@RequestParam(name = "id") String id) {
        Map<String, Object> map = new HashMap<>();
        map.put("hoaDon", service.findHoaDonById(UUID.fromString(id)));
        map.put("hoaDonChiTiet", service.listHoaDonChiTiet(UUID.fromString(id)));
        return map;
    }

    @GetMapping("/list-hoa-don")
    public List<HoaDon> getListHoaDon(@RequestParam("trangThai") int trangThai) {
        return service.listHoaDon(trangThai);
    }

    @GetMapping("/count-hoa-don")
    public int countHoaDonByTrangThai(@RequestParam("trangThai") int trangThai) {
        return service.countHoaDonByTrangThai(trangThai);
    }

    @PostMapping("/update-hoa-don")
    public Boolean updateHoaDon(@RequestBody List<BanHangRequest> list, @RequestParam(name = "id") String id) throws BadRequestException {
        return service.updateHoaDon(list, UUID.fromString(id));
    }

    @PostMapping("/delete-hoa-don")
    public Boolean deleteHoaDon(@RequestBody List<UUID> list, @RequestParam(name = "id") String id) {
        return service.deleteHoaDon(list, UUID.fromString(id));
    }

    @PostMapping("/thanh-toan-hoa-don")
    public String thanhToanHoaDon(@RequestBody HoaDonRequest hoaDonRequest) throws BadRequestException {
        return service.thanhToan(hoaDonRequest);
    }

    @PostMapping("/thay-doi-trang-thai")
    public Boolean thayDoiTrangThai(@RequestBody TrangThaiHoaDonRequest request) throws BadRequestException {
        return service.thayDoiTrangThaiHoaDon(request.getIdHoaDon(), request.getTrangThai());
    }

    @PostMapping("/quay-lai-trang-thai/{id}")
    public Boolean quayLaiTrangThai(@PathVariable(name = "id") String id) throws BadRequestException {
        return service.quayLaiTrangThai(UUID.fromString(id));
    }

}

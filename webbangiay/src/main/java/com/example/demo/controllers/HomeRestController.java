package com.example.demo.controllers;

import com.example.demo.models.dto.HomeQuangBaRequest;
import com.example.demo.models.dto.HomeQuangBaRespose;
import com.example.demo.models.dto.SanPhamDetail;
import com.example.demo.services.ChiTietSanPhamService;
import com.example.demo.services.HomeService;
import com.example.demo.services.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/home/rest")
public class HomeRestController {

    @Autowired
    private HomeService service;

    @Autowired
    private SanPhamService sanPhamService;

    @Autowired
    private ChiTietSanPhamService chiTietSanPhamService;

    @PostMapping
    public Page<HomeQuangBaRespose> getSanPhamQuanBa(@RequestBody HomeQuangBaRequest request) {
        return service.getSanPhamQuangBan(request);
    }

    @GetMapping("/{id}")
    public SanPhamDetail detailSanPham(@PathVariable("id") String id) {
        SanPhamDetail sanPhamDetail = new SanPhamDetail();
        sanPhamDetail.setSanPham(sanPhamService.findById(UUID.fromString(id)));
        sanPhamDetail.setChiTietSanPham(chiTietSanPhamService.findChiTietSanPhamBySanPham(sanPhamDetail.getSanPham()));
        sanPhamDetail.setSoLuongDaBan(service.getSoLuongDaBan(UUID.fromString(id)));
        return sanPhamDetail;
    }
}

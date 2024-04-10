package com.example.demo.controllers;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.SanPham;
import com.example.demo.models.dto.SanPhamDetail;
import com.example.demo.models.dto.SanPhamDto;
import com.example.demo.services.ChiTietSanPhamService;
import com.example.demo.services.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/chi-tiet-san-pham/rest")
public class ChiTietSanPhamRestController {

    @Autowired
    private ChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    private SanPhamService sanPhamService;

    @PostMapping("/them-san-pham")
    public Boolean themSanPham(@RequestBody SanPhamDto sanPhamDto) {
        return chiTietSanPhamService.addAllChiTietSanPham(sanPhamDto);
    }

    @GetMapping("/detail-san-pham")
    public SanPhamDetail detailSanPham(@RequestParam("idctsp") UUID id) {
        SanPhamDetail sanPhamDetail = new SanPhamDetail();
        sanPhamDetail.setSanPham(sanPhamService.findById(id));
        sanPhamDetail.setChiTietSanPham(chiTietSanPhamService.findChiTietSanPhamBySanPham(sanPhamDetail.getSanPham()));
        return sanPhamDetail;
    }

    @PostMapping("/update-san-pham")
    public Boolean updateSanPham(@RequestBody SanPhamDto sanPhamDto) {
        return chiTietSanPhamService.updateAllChiTietSanPham(sanPhamDto);
    }
}

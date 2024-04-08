package com.example.demo.controllers;

import com.example.demo.models.SanPham;
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
    public SanPham detailSanPham(@RequestParam("idctsp") UUID id) {
        return sanPhamService.findById(id);
    }

    @GetMapping("/test")
    public String testNha() {
        return "test nha !!!";
    }
}

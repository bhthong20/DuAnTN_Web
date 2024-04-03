package com.example.demo.controllers;

import com.example.demo.models.dto.SanPhamDto;
import com.example.demo.services.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/chi-tiet-san-pham/rest")
public class ChiTietSanPhamRestController {

    @Autowired
    private ChiTietSanPhamService chiTietSanPhamService;

    @PostMapping("/them-san-pham")
    public Boolean themSanPham(@RequestBody SanPhamDto sanPhamDto) {
        return chiTietSanPhamService.addAllChiTietSanPham(sanPhamDto);
    }

    @GetMapping("/test")
    public String testNha() {
        return "test nha !!!";
    }
}

package com.example.demo.services;

import com.example.demo.models.HangSanPham;

import java.util.List;

public interface HangSanPhamService {
    public List<HangSanPham> findAll();

    public HangSanPham add(HangSanPham hangSanPham);
}

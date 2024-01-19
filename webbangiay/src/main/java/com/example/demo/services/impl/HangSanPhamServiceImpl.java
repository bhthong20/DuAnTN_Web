package com.example.demo.services.impl;


import com.example.demo.models.HangSanPham;
import com.example.demo.repositories.HangSanPhamRepository;
import com.example.demo.services.HangSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HangSanPhamServiceImpl implements HangSanPhamService {
    @Autowired
    HangSanPhamRepository sanPhamRepository;
    @Override
    public List<HangSanPham> findAll() {
        return sanPhamRepository.findAll();
    }

    @Override
    public HangSanPham add(HangSanPham hangSanPham) {
        return sanPhamRepository.save(hangSanPham);
    }

}

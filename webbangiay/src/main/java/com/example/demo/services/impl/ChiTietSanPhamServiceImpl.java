package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.repositories.ChiTietSanPhamRepository;
import com.example.demo.services.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChiTietSanPhamServiceImpl implements ChiTietSanPhamService {
    @Autowired
    private ChiTietSanPhamRepository chiTietSanPhamRepository;
    @Override
    public List<ChiTietSanPham> findALL() {
        return chiTietSanPhamRepository.findAll();
    }
}

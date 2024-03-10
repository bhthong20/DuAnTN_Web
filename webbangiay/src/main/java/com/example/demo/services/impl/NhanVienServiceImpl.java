package com.example.demo.services.impl;

import com.example.demo.models.NhanVien;
import com.example.demo.repositories.NhanVienRepository;
import com.example.demo.services.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NhanVienServiceImpl implements NhanVienService {
    @Autowired
    private NhanVienRepository nhanVienRepository;
    @Override
    public List<NhanVien> findAll() {
        return nhanVienRepository.findAll();
    }
}

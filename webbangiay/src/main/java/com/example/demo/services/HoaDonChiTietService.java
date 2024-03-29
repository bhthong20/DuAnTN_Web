package com.example.demo.services;

import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface HoaDonChiTietService {
    public Page<HoaDonChiTiet> getAll(Pageable pageable);
    public List<HoaDonChiTiet> findAll();
    public HoaDonChiTiet findById(UUID id);
    public HoaDonChiTiet add(HoaDonChiTiet hoaDonChiTiet);
    public HoaDonChiTiet update(UUID id,HoaDonChiTiet hoaDonChiTiet);
    public Boolean delete(UUID id);
}

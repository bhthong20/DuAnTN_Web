package com.example.demo.services;

import com.example.demo.models.KhachHang;
<<<<<<< HEAD
import com.example.demo.models.NhanVien;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface KhachHangService {
    public Page<KhachHang> FindAll (Pageable pageable);

    public List<KhachHang> getAll();

    public List<KhachHang> search (String search);

    public KhachHang findById(UUID id);

    public KhachHang add(KhachHang khachHang);

    public KhachHang update(UUID id ,KhachHang khachHang);

    public void deleteKhachHang (UUID id);
=======

import java.util.List;

public interface KhachHangService {
    public List<KhachHang> findAll();
>>>>>>> bc0f4784a174f62f31912ddf1720079101fb2bcf
}

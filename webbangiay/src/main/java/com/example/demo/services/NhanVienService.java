package com.example.demo.services;

<<<<<<< HEAD
import com.example.demo.models.NhanVien;
import com.example.demo.models.SanPham;
import org.hibernate.boot.query.NamedHqlQueryDefinition;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;
=======

import com.example.demo.models.NhanVien;

import java.util.List;
>>>>>>> bc0f4784a174f62f31912ddf1720079101fb2bcf

public interface NhanVienService {
    public List<NhanVien> findAll();

    public  Page<NhanVien> FindAll (Pageable pageable);

    public List<NhanVien> getAll();

    public List<NhanVien> search (String search);

    public NhanVien findById(UUID id);

    public NhanVien add(NhanVien nhanVien);

    public NhanVien update(UUID id ,NhanVien nhanVien);

    public void deleteNhanVien (UUID id);

}

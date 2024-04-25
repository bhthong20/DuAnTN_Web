package com.example.demo.repositories;

import com.example.demo.models.HoaDon;
import com.example.demo.models.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, UUID> {

    List<HoaDon> findAllByLoaiAndTrangThai(int loai, int trangThai);
    List<HoaDon> findAllByLoai(int loai);
    List<HoaDon> findAllByLoaiAndTrangThaiAndKhachHang(int loai, int trangThai, KhachHang khachHang);
    List<HoaDon> findAllByLoaiAndKhachHang(int loai, KhachHang khachHang);
}

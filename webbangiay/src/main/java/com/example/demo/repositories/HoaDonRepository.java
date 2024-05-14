package com.example.demo.repositories;

import com.example.demo.models.HoaDon;
import com.example.demo.models.KhachHang;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, UUID> {

    List<HoaDon> findAllByLoaiAndTrangThai(int loai, int trangThai);

    List<HoaDon> findAllByLoai(int loai);

    List<HoaDon> findAllByLoaiAndTrangThaiAndKhachHang(int loai, int trangThai, KhachHang khachHang);

    List<HoaDon> findAllByLoaiAndKhachHang(int loai, KhachHang khachHang);

    @Query(value = """
                SELECT hd FROM HoaDon hd where 1 = 1 and hd.trangThai <> 9
            """)
    Page<HoaDon> findAllBy(Pageable pageable);
}

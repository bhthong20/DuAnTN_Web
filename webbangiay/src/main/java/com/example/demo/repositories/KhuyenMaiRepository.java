package com.example.demo.repositories;

import com.example.demo.models.KhuyenMai;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Repository
public interface KhuyenMaiRepository extends JpaRepository<KhuyenMai, UUID> {
    @Query("select hsp from KhuyenMai hsp where hsp.ma like %:search% or hsp.ten like %:search%")
    List<KhuyenMai> search(String search);

    List<KhuyenMai> findByNgayBatDauLessThanEqualAndNgayKetThucGreaterThanEqualAndTrangThaiAndNgayBatDauIsNotNullAndNgayKetThucIsNotNullOrderByNgayTaoDesc(
            Long ngayBatDau,
            Long ngayKetThuc,
            int trangThai
    );

    @Query("select km from KhuyenMai km where" +
            "(:locTT is null or km.trangThai=:locTT) " +
            "and (:locHTG is null or km.hinhThucGiamGia=: locHTG)"
    )
    List<KhuyenMai> loc(Integer locTT, Integer locHTG);


}

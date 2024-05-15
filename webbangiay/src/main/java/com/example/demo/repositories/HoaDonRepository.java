package com.example.demo.repositories;

import com.example.demo.models.HoaDon;
import com.example.demo.models.KhachHang;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Query;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.Date;
import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, UUID> {

    List<HoaDon> findAllByLoaiAndTrangThai(int loai, int trangThai);

    List<HoaDon> findAllByLoai(int loai);

    List<HoaDon> findAllByLoaiAndTrangThaiAndKhachHang(int loai, int trangThai, KhachHang khachHang);

    List<HoaDon> findAllByLoaiAndKhachHang(int loai, KhachHang khachHang);

    Page<HoaDon> findAllByTrangThaiNotIn(int[] trangThais, Pageable pageable);

    @Query(value = """
        SELECT hd FROM HoaDon hd where 1 = 1 and hd.trangThai <> 9
    """)
    Page<HoaDon> findAllBy(Pageable pageable);

    @Query("select hd from HoaDon hd where hd.ma like  %:ma% ")
    List<HoaDon> searchMa(String ma);

    @Query("select hd from HoaDon hd left join NhanVien nv on nv.id=hd.nhanVien.id " +
            "left join KhachHang kh on kh.id=hd.khachHang.id " +
            "where" +
            "(:locTT is null or hd.trangThai=:locTT) " +
            "and (:locPTTT is null or hd.phuongThucThanhToan=: locPTTT) " +
            "and (:locLoai is null or hd.loai=: locLoai) " +
            "and (:ngayTao is null or hd.ngayTao=: ngayTao)"
    )
    List<HoaDon> loc(Integer locTT, Integer locPTTT, Integer locLoai, @RequestParam(value = "ngayTao", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date ngayTao);

    @Query("select hd from HoaDon hd left join NhanVien nv on nv.id=hd.nhanVien.id " +
            "left join KhachHang kh on kh.id=hd.khachHang.id " +
            "where" +
            "(:locTT is null or hd.trangThai=:locTT) " +
            "and (:locPTTT is null or hd.phuongThucThanhToan=: locPTTT) " +
            "and (:locLoai is null or hd.loai=: locLoai) "

//            +"and (:giaBanMin is null and :giaBanMax is null or ct.giaBan between :giaBanMin and :giaBanMax)"
    )
    List<HoaDon> loc1(Integer locTT, Integer locPTTT, Integer locLoai);
}
package com.example.demo.repositories;

import com.example.demo.models.HinhAnh;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HinhAnhRepository extends JpaRepository<HinhAnh, UUID> {
   @Query("select c from HinhAnh c  where c.trangThai=0")
   Page<HinhAnh> getAll(Pageable pageable);

   @Query("select c from HinhAnh c  where c.trangThai=1")
   Page<HinhAnh> getAll1(Pageable pageable);

   @Query("select c from HinhAnh c  where  c.trangThai = 0 and (c.ma like %:ten% or c.ten like %:ten%)")
   List<HinhAnh> sreach0(String ten);

   @Query("select c from HinhAnh c  where  c.trangThai = 1 and (c.ma like %:ten% or c.ten like %:ten%)")
   List<HinhAnh> sreach1(String ten);

   @Transactional
   @Modifying
   @Query(value = "update hinh_anh set trang_thai=0", nativeQuery = true)
   void updateTT();
}

package com.example.demo.repositories;

import com.example.demo.models.ThuongHieu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ThuongHieuRepository extends JpaRepository<ThuongHieu, UUID> {
    @Query("select th from ThuongHieu th where th.ma like %:search% or th.ten like %:search%")
    List<ThuongHieu> search(String search);

    public Page<ThuongHieu> findAll(Pageable pageable);
}

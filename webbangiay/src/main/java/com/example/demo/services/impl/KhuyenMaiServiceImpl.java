package com.example.demo.services.impl;

import com.example.demo.models.KhuyenMai;
import com.example.demo.repositories.KhuyenMaiRepository;
import com.example.demo.services.KhuyenMaiService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Service
public class KhuyenMaiServiceImpl implements KhuyenMaiService {
    @Autowired
    KhuyenMaiRepository khuyenMaiRepository;


    @Override
    public Page<KhuyenMai> getAll(Pageable pageable) {
        return khuyenMaiRepository.findAll(pageable);
    }

    @Override
    public List<KhuyenMai> findAll() {
        return khuyenMaiRepository.findAll();
    }

    @Override
    public List<KhuyenMai> search(String search) {
        return khuyenMaiRepository.search(search);
    }

    @Override
    public KhuyenMai findById(UUID id) {
        return khuyenMaiRepository.findById(id).orElse(null);
    }

    @Override
    public KhuyenMai add(KhuyenMai hangSanPham) {
        return khuyenMaiRepository.save(hangSanPham);
    }

    @Override
    public KhuyenMai update(UUID id, KhuyenMai hangSanPham) {
        if (id != null) {
            KhuyenMai hangSanPhamUpadte = khuyenMaiRepository.findById(id).orElse(null);
            if (hangSanPham != null) {
                hangSanPham.setId(hangSanPhamUpadte.getId());
                hangSanPham.setNgayTao(hangSanPhamUpadte.getNgayTao());
                hangSanPham.setNgayCapNhat(Date.valueOf(LocalDate.now()));
                khuyenMaiRepository.save(hangSanPham);
            }

        }
        return null;
    }

    @Override
    public Boolean delete(UUID id) {
        if (id != null) {
            KhuyenMai khuyenMai = khuyenMaiRepository.findById(id).orElse(null);
            if (khuyenMai != null) {
                khuyenMai.setTrangThai(0);
                khuyenMaiRepository.save(khuyenMai);
                return true;
            }
        }
        return false;
    }

    @Override
    public List<KhuyenMai> getComboboxKhuyenMai() {
        Long ngayHienTai = System.currentTimeMillis();
        return khuyenMaiRepository.findByNgayBatDauLessThanEqualAndNgayKetThucGreaterThanEqualAndTrangThaiAndNgayBatDauIsNotNullAndNgayKetThucIsNotNullOrderByNgayTaoDesc(ngayHienTai, ngayHienTai, 1);
    }

    @Override
    public List<KhuyenMai> loc(Integer locTT, Integer locHTG) {
        return khuyenMaiRepository.loc(locTT, locHTG);
    }
}

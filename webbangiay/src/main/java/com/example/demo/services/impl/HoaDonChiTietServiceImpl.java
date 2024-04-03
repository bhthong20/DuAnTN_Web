package com.example.demo.services.impl;

import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.repositories.HoaDonChiTietRepository;
import com.example.demo.services.HoaDonChiTietService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class HoaDonChiTietServiceImpl implements HoaDonChiTietService {
    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;
    @Override
    public Page<HoaDonChiTiet> getAll(Pageable pageable) {
        return hoaDonChiTietRepository.findAll(pageable);
    }

    @Override
    public List<HoaDonChiTiet> findAll() {
        return hoaDonChiTietRepository.findAll();
    }

    @Override
    public HoaDonChiTiet findById(UUID id) {
        return  hoaDonChiTietRepository.findById(id).orElse(null);
    }

    @Override
    public HoaDonChiTiet add(HoaDonChiTiet hoaDonChiTiet) {
        return hoaDonChiTietRepository.save(hoaDonChiTiet);
    }

    @Override
    public HoaDonChiTiet update(UUID id, HoaDonChiTiet hoaDonChiTiet) {
        if (id != null) {
            HoaDonChiTiet hoaDonCTUpdate =  hoaDonChiTietRepository.findById(id).orElse(null);
            if (hoaDonCTUpdate != null) {
                BeanUtils.copyProperties(hoaDonChiTiet, hoaDonCTUpdate);
                hoaDonChiTietRepository.save(hoaDonCTUpdate);
            }
        }
        return null;
    }

    @Override
    public Boolean delete(UUID id) {
        if (id != null) {
            HoaDonChiTiet hoaDonCTDelete = hoaDonChiTietRepository.findById(id).orElse(null);
            if (hoaDonCTDelete != null) {
                hoaDonChiTietRepository.delete(hoaDonCTDelete);
                return true;
            }
        }
        return false;
    }
}

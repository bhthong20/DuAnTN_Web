package com.example.demo.services.impl;

import com.example.demo.models.HoaDon;
import com.example.demo.repositories.HoaDonRepository;
import com.example.demo.services.HoaDonService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class HoaDonServiceImpl implements HoaDonService {
    @Autowired
    HoaDonRepository hoaDonRepository;
    @Override
    public Page<HoaDon> getAll(Pageable pageable) {
        return hoaDonRepository.findAll(pageable);
    }

    @Override
    public Page<HoaDon> getAllAdmin(Pageable pageable) {
        int[] c = {3,9};
        return hoaDonRepository.findAllByTrangThaiNotIn(c, pageable);
    }

    @Override
    public List<HoaDon> findAll() {
        return hoaDonRepository.findAll();
    }

    @Override
    public HoaDon findById(UUID id) {
        return
                hoaDonRepository.findById(id).orElse(null);
    }

    @Override
    public HoaDon add(HoaDon hoaDon) {
        return hoaDonRepository.save(hoaDon);
    }

    @Override
    public HoaDon update(UUID id, HoaDon hoaDon) {
        if (id != null) {
            HoaDon hoaDonUpdate = hoaDonRepository.findById(id).orElse(null);
            if (hoaDonUpdate != null) {
                BeanUtils.copyProperties(hoaDon, hoaDonUpdate);
                hoaDonRepository.save(hoaDonUpdate);
            }
        }
        return null;
    }

    @Override
    public Boolean delete(UUID id) {
        if (id != null) {
            HoaDon hoaDonUpdate = hoaDonRepository.findById(id).orElse(null);
            if (hoaDonUpdate != null) {
                hoaDonRepository.delete(hoaDonUpdate);
                return true;
            }
        }
        return false;
    }
}

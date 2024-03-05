package com.example.demo.services.impl;

import com.example.demo.models.PhanLoai;
import com.example.demo.repositories.PhanLoaiRepository;
import com.example.demo.services.PhanLoaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PhanLoaiServiceImpl implements PhanLoaiService {

    @Autowired
    PhanLoaiRepository phanLoaiRepository;

    @Override
    public Page<PhanLoai> getAll(Pageable pageable) {
        return phanLoaiRepository.findAll(pageable);
    }

    @Override
    public List<PhanLoai> findAll() {
        return phanLoaiRepository.findAll();
    }

    @Override
    public List<PhanLoai> search(String search) {
        return null;
    }

    @Override
    public PhanLoai findById(UUID id) {
        return null;
    }

    @Override
    public PhanLoai add(PhanLoai phanLoai) {
        return phanLoaiRepository.save(phanLoai);
    }

    @Override
    public PhanLoai update(UUID id, PhanLoai phanLoai) {
        return null;
    }

    @Override
    public Boolean delete(UUID id) {
        return null;
    }
}

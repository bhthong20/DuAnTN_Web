package com.example.demo.services.impl;

import com.example.demo.models.HinhAnh;
import com.example.demo.repositories.HinhAnhRepository;
import com.example.demo.services.HinhAnhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HinhAnhServiceImpl implements HinhAnhService {

    @Autowired
    HinhAnhRepository hinhAnhRepository;
    @Override
    public List<HinhAnh> findAll() {
        return hinhAnhRepository.findAll();
    }
}

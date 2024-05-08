package com.example.demo.services.impl;

import com.example.demo.models.KhachHang;
import com.example.demo.repositories.KhachHangRepository;
import com.example.demo.services.KhachHangService;
import com.example.demo.services.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class SecurityServiceImpl implements SecurityService {

    @Autowired
    private KhachHangService service;

    @Autowired
    private KhachHangRepository repository;

    @Override
    public KhachHang addKhachHang(KhachHang khachHang, BindingResult bindingResult) {
        if (!repository.findByTaiKhoan(khachHang.getTaiKhoan()).isEmpty()) {
            bindingResult.rejectValue("taiKhoan", "taiKhoan", "Tài khoản đã tồn tại");
            return null;
        }
        String maKhachHang = "KH00" + (service.findAll().size() + 1);
        khachHang.setMa(maKhachHang);

        return service.add(khachHang);
    }
}

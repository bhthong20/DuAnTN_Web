package com.example.demo.services;

import com.example.demo.models.KhachHang;
import org.springframework.validation.BindingResult;

public interface SecurityService {
    KhachHang addKhachHang(KhachHang khachHang, BindingResult bindingResult);
    public boolean sendResetPasswordEmail(String emailAddress);
}

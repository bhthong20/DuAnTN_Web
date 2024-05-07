package com.example.demo.util;

import com.example.demo.models.KhachHang;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginCommon {

    @Autowired
    private HttpSession session;

    public KhachHang getUserLogin() {
        return (KhachHang) session.getAttribute("USER_LOGIN");
    }
}

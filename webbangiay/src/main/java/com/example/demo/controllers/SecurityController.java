package com.example.demo.controllers;

import com.example.demo.models.KhachHang;
import com.example.demo.models.MauSac;
import com.example.demo.models.dto.UserLogin;
import com.example.demo.services.SecurityService;
import com.example.demo.util.UserLoginCommon;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityController {

    @Autowired
    private UserLoginCommon common;

    @Autowired
    private SecurityService service;

    @GetMapping("/login")
    public String loginForm(Model model) {
        model.addAttribute("userLogin", new UserLogin());
        return "security/login";
    }

    @GetMapping("/user-infor")
    @ResponseBody
    public Object getUserInfor() {
        return common.getUserLogin();
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        return "redirect:/login";
    }

    @GetMapping("/auth-register")
    public String registerForm(Model model) {
        model.addAttribute("khachHang", new KhachHang());
        return "security/auth-resgit";
    }

    @PostMapping("/auth-register")
    public String registerAuthForm(@Valid @ModelAttribute(name = "khachHang") KhachHang khachHang , BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return "security/auth-resgit";
        }
        KhachHang khachHang1 = service.addKhachHang(khachHang, bindingResult);
        if (khachHang1 == null) {
            return "security/auth-resgit";
        }
        return "redirect:/login";
    }
    @GetMapping("/forgot-password")
    public String forgotPasswordForm(Model model) {
        model.addAttribute("userLogin", new UserLogin());
        return "security/forgot-password";
    }

    @PostMapping("/forgot-password")
    public String forgotPasswordSubmit(@ModelAttribute("email") String email, BindingResult bindingResult, Model model) {
        // Thực hiện xác thực thông tin người dùng, ví dụ: email hoặc tên người dùng
        // Nếu thông tin không hợp lệ, chuyển hướng trở lại form quên mật khẩu
        if (bindingResult.hasErrors()) {
            return "security/forgot-password";
        }

        // Gửi email reset mật khẩu đến người dùng
        boolean emailSent = service.sendResetPasswordEmail(email);

        if (!emailSent) {
            // Xử lý nếu gửi email thất bại, ví dụ: hiển thị thông báo lỗi cho người dùng
            model.addAttribute("error", "Failed to send reset password email. Please try again later.");
            return "security/forgot-password";
        }

        // Hiển thị thông báo cho người dùng rằng email đã được gửi thành công
        model.addAttribute("success", "Reset password email has been sent. Please check your email inbox.");

        // Chuyển hướng người dùng đến trang chủ hoặc trang thông báo thành công khác
        return "redirect:/login";
    }

}

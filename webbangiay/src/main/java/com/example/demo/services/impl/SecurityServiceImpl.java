package com.example.demo.services.impl;

import com.example.demo.models.KhachHang;
import com.example.demo.repositories.KhachHangRepository;
import com.example.demo.repositories.NhanVienRepository;
import com.example.demo.services.KhachHangService;
import com.example.demo.services.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.UUID;

@Service
public class SecurityServiceImpl implements SecurityService {

    @Autowired
    private KhachHangService service;

    @Autowired
    private KhachHangRepository repository;

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public KhachHang addKhachHang(KhachHang khachHang, BindingResult bindingResult) {
        if (!repository.findByTaiKhoan(khachHang.getTaiKhoan()).isEmpty()) {
            bindingResult.rejectValue("taiKhoan", "taiKhoan", "Tài khoản đã tồn tại");
            return null;
        }
        if (!nhanVienRepository.findByTaiKhoan(khachHang.getTaiKhoan()).isEmpty()) {
            bindingResult.rejectValue("taiKhoan", "taiKhoan", "Tài khoản đã tồn tại");
            return null;
        }
        String maKhachHang = "KH00" + (service.findAll().size() + 1);
        khachHang.setMa(maKhachHang);

        return service.add(khachHang);
    }


    // Phương thức gửi email reset mật khẩu
    public boolean sendResetPasswordEmail(String emailAddress) {
        try {
            // Tạo một đối tượng SimpleMailMessage
            SimpleMailMessage message = new SimpleMailMessage();

            // Đặt thông tin người gửi
            message.setFrom("thongbt8@gmail.com"); // Thay bằng địa chỉ email của bạn

            // Đặt thông tin người nhận
            message.setTo(emailAddress);

            // Đặt tiêu đề email
            message.setSubject("Reset Password Request");

            // Tạo mã xác nhận mới, bạn cần lưu trữ mã này trong cơ sở dữ liệu và gửi trong email
            String resetCode = generateResetCode(); // Hàm này để tạo mã xác nhận mới

            // Nội dung email, bao gồm mã xác nhận
            String emailContent = "Please click the following link to reset your password:\n\n"
                    + "http://localhost:8080/forgot-password?code=" + resetCode; // Thay bằng địa chỉ URL của trang reset password của bạn

            // Đặt nội dung email
            message.setText(emailContent);

            // Gửi email
            mailSender.send(message);

            return true; // Email gửi thành công
        } catch (MailException e) {
            // Xử lý nếu gửi email thất bại
            e.printStackTrace();
            return false;
        }
    }

    // Hàm để tạo mã xác nhận mới (có thể là một chuỗi ngẫu nhiên)
    private String generateResetCode() {
        // Viết mã tạo mã xác nhận ở đây
        // Ví dụ: có thể sử dụng UUID.randomUUID().toString() để tạo chuỗi ngẫu nhiên
        return UUID.randomUUID().toString();
    }
}

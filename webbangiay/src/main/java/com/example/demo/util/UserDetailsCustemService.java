package com.example.demo.util;

import com.example.demo.models.KhachHang;
import com.example.demo.repositories.KhachHangRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class UserDetailsCustemService implements UserDetailsService {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private HttpSession session;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        KhachHang khachHang = khachHangRepository.findByTaiKhoan(username)
                .orElseThrow(() -> new UsernameNotFoundException("Không tìm thấy người dùng với tên đăng nhập: " + username));
        String hashedPassword = passwordEncoder.encode(khachHang.getMatKhau());
        khachHang.setMatKhau(hashedPassword);
        session.setAttribute("USER_LOGIN", khachHang);
        return User.builder()
                .username(khachHang.getTaiKhoan())
                .password(khachHang.getMatKhau())
                .roles(khachHang.getRole())
                .build();
    }
}

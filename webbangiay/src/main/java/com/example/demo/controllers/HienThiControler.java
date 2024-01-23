package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HienThiControler {
    @GetMapping("/hien-thi")
    public String hienThi(Model model){
        return "/hien-thi/test";
    }
}

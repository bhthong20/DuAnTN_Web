package com.example.demo.controllers;

import com.example.demo.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

    @Autowired
    private MauSacService mauSacService;

    @Autowired
    private KichThuocService kichThuocService;

    @Autowired
    private ChatLieuService chatLieuService;

    @Autowired
    private HinhAnhService hinhAnhService;

    @Autowired
    private PhanLoaiService phanLoaiService;

    @Autowired
    private ThuongHieuService thuongHieuService;

    @GetMapping("/home")
    private String showHome() {
        return "quang-ba/home";
    }

    @GetMapping("/san-pham")
    private String showSanPham(Model model) {
        model.addAttribute("listTH", thuongHieuService.findAll());
        model.addAttribute("listPL", phanLoaiService.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        return "quang-ba/san-pham";
    }

    @GetMapping("/san-pham/{id}")
    private String showSanPhamDetail(Model model) {
        return "quang-ba/detail-san-pham";
    }
}
package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {


    //    @RequestMapping("/home")
//    private String showHome(Model model){
//        model.addAttribute("nhanVien", dataIntermediateService.getSharedDataNhanVien());
//        return  "home/layout";
////                "chip/basic-table";
//    }
//
//    @GetMapping("/homes")
//    private String showHomes(Model model){
//        return  "ban-hang-online/so-sanh-san-pham";
////                "chip/basic-table";
//    }
    @GetMapping("/home")
    private String showHome() {
        return "quang-ba/home";
    }

    @GetMapping("/san-pham")
    private String showSanPham() {
        return "quang-ba/san-pham";
    }
}
package com.example.demo.controllers;

import com.example.demo.models.dto.ThongKeAllDto;
import com.example.demo.services.ThongKeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/thong-ke")
public class ThongKeController {

    @Autowired
    private ThongKeService thongKeService;

    @GetMapping
    public String getThongKe(Model model) {
        model.addAttribute("contentPage", "../thong-ke/index.jsp");
        return "home/layout";
    }

    @GetMapping("/api")
    @ResponseBody
    public ThongKeAllDto getAllTongApi() {
        return thongKeService.getTongThongKe();
    }
}

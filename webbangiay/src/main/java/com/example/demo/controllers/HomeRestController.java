package com.example.demo.controllers;

import com.example.demo.models.dto.HomeQuangBaRequest;
import com.example.demo.models.dto.HomeQuangBaRespose;
import com.example.demo.services.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/home/rest")
public class HomeRestController {

    @Autowired
    private HomeService service;

    @PostMapping
    public Page<HomeQuangBaRespose> getSanPhamQuanBa(@RequestBody HomeQuangBaRequest request) {
        return service.getSanPhamQuangBan(request);
    }
}

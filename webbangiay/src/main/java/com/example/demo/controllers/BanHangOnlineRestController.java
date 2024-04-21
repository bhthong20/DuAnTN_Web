package com.example.demo.controllers;

import com.example.demo.models.GioHangChiTiet;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.services.BanHangOnlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/ban-hang-online/rest")
public class BanHangOnlineRestController {

    @Autowired
    private BanHangOnlineService service;

    @GetMapping("/count-gio-hang")
    public Long countGioHang() {
        return service.countGioHang();
    }

    @PostMapping("/them-gio-hang")
    public Boolean themVaoGioHang(@RequestBody BanHangRequest banHangRequest) {
        return service.themVaoGioHang(banHangRequest);
    }

    @GetMapping("/list-gio-hang")
    public List<GioHangChiTiet> getListGioHang() {
        return service.getListGioHang();
    }

    @PostMapping("/delete-gio-hang")
    public Boolean deleteGioHang(@RequestBody List<UUID> list) {
        return service.deleteGioHang(list);
    }

    @PostMapping("/update-gio-hang")
    public Boolean updateGioHang(@RequestBody List<BanHangRequest> list) {
        return service.updateGioHang(list);
    }
}

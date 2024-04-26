package com.example.demo.controllers;


import com.example.demo.models.KhachHang;
import com.example.demo.services.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/khach-hang")
public class KhachHangController {

    @Autowired
    private KhachHangService khachHangService;


    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<KhachHang> list = khachHangService.FindAll(pageable);
        model.addAttribute("khachHang", list.getContent());
        model.addAttribute("total", list.getTotalPages());
//        model.addAttribute("khachHang" , khachHangService.getAll());
        model.addAttribute("contentPage", "../khach-hang/hien-thi.jsp");
        return "home/layout";
    }

    @GetMapping("/delete/{id}")
    public String deleteChucVu(@PathVariable(name = "id") UUID id) {
        khachHangService.deleteKhachHang(id);
        return "redirect:/hien-thi/khach-hang";
    }

    @GetMapping("/view-update/{id}")
    public String viewUpdate(Model model, @PathVariable("id") UUID id) {
        KhachHang kh = khachHangService.findById(id);
        model.addAttribute("khachHang", kh);;
        model.addAttribute("contentPage", "/khach-hang/update.jsp");
        return "/khach-hang/update";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "khachHang") KhachHang khachHang,
                         @PathVariable(name = "id") UUID id ) {
        KhachHang kh = khachHangService.findById(id);
        khachHang.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        System.out.println(kh.toString());
        khachHangService.update(id , khachHang);
        return "redirect:/hien-thi/khach-hang";
    }


    @GetMapping("/view-add")
    public String viewAdd(Model model, @ModelAttribute("khachHang") KhachHang khachHang) {
        model.addAttribute("khachHang", new KhachHang());
        model.addAttribute("contentPage", "../khach-hang/add.jsp");
        return "home/layout";
    }


    @PostMapping("/add")
    public String add(Model model , @ModelAttribute("khachHang") KhachHang khachHang, BindingResult result) {
        if (result.hasErrors()) {
            model.addAttribute("contentPage", "chuc-vu/add.jsp");
            return "/khach-hang/add";
        }
        String maKhachHang = "KH00" + (khachHangService.findAll().size() + 1);
        khachHang.setNgayTao(Date.valueOf(LocalDate.now()));
        khachHangService.add(khachHang);
        System.out.println("listKhachHang");
        return "redirect:/hien-thi/khach-hang";
    }

}


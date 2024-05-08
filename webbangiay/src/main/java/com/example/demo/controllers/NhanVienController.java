package com.example.demo.controllers;

import com.example.demo.models.ChucVu;
import com.example.demo.models.NhanVien;
import com.example.demo.services.ChucVuService;
import com.example.demo.services.NhanVienService;
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
import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/nhan-vien")
public class NhanVienController {
    @Autowired
    private NhanVienService nhanVienService;

    @Autowired
    private ChucVuService chucVuService;


    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<NhanVien> list = nhanVienService.FindAll(pageable);
        model.addAttribute("nhanVien", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        model.addAttribute("contentPage", "../nhan-vien/hien-thi.jsp");
        return "home/layout";
    }

    @GetMapping("/delete/{id}")
    public String deleteNhanVien(@PathVariable(name = "id") UUID id) {
        nhanVienService.deleteNhanVien(id);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/view-update")
    public String viewUpdate(Model model, @RequestParam("id") UUID id, @ModelAttribute("chucVu") ChucVu chucVu) {
        NhanVien nv = nhanVienService.findById(id);
        model.addAttribute("nhanVien", nv);
        model.addAttribute("listCv", chucVuService.getAll());
        model.addAttribute("contentPage", "../nhan-vien/update.jsp");
        return "home/layout";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "nhanVien") NhanVien nhanVien,
                         @PathVariable(name = "id") UUID id, @ModelAttribute("chucVu") ChucVu chucVu) {
        NhanVien nv = nhanVienService.findById(id);
        nhanVien.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        System.out.println(nv.toString());
        nhanVienService.update(id, nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model, @ModelAttribute("nhanVien") NhanVien nhanVien,
                          @ModelAttribute("chucVu") ChucVu chucVu) {
        model.addAttribute("nhanVien", new NhanVien());
        model.addAttribute("listCv", chucVuService.getAll());
        model.addAttribute("contentPage", "../nhan-vien/add.jsp");
        return "home/layout";
    }

    @PostMapping("/add")
    public String add(Model model, @ModelAttribute(name = "nhanVien") NhanVien nhanVien
            , @ModelAttribute("chucVu") ChucVu chucVu, BindingResult result) {
        if (result.hasErrors()) {
            model.addAttribute("listChucVu", chucVuService.getAll());
            model.addAttribute("contentPage", "../nhan-vien/add.jsp");
            return "nhan-vien/add";
        }
        String maNhanVien = "nhanVien" + (nhanVienService.getAll().size() + 1);
        nhanVien.setMa(maNhanVien);
        nhanVien.setNgayTao(Date.valueOf(LocalDate.now()));
        nhanVienService.add(nhanVien);
        System.out.println("listChucVu");
        return "redirect:/nhan-vien/hien-thi";
    }
}


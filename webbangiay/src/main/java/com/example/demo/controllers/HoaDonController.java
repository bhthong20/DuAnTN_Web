package com.example.demo.controllers;


import com.example.demo.models.*;
import com.example.demo.services.HoaDonService;
import com.example.demo.services.KhachHangService;
import com.example.demo.services.KhuyenMaiService;
import com.example.demo.services.NhanVienService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {

    @Autowired
    private HoaDonService hoaDonService;

    @Autowired
    private NhanVienService nhanVienService;

    @Autowired
    private KhuyenMaiService khuyenMaiService;

    @Autowired
    private KhachHangService khachHangService;

    @GetMapping()
    public String quanLyBanHang(Model model, @RequestParam("num") Optional<Integer> num, @RequestParam(name = "size", defaultValue = "10", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<HoaDon> list = hoaDonService.getAllAdmin(pageable);
        model.addAttribute("listhoaDon", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        model.addAttribute("contentPage", "../ban-hang-online/list-hoa-don-admin.jsp");
        return "home/layout";
    }

    @GetMapping("/detail")
    public String quanLyBanHangDetail(Model model) {
        model.addAttribute("listKM", khuyenMaiService.findAll());
        model.addAttribute("contentPage", "../ban-hang-online/index-admin.jsp");
        return "home/layout";
    }

    @GetMapping("/hien-thi")
    public String hiethi(Model model, @RequestParam("num") Optional<Integer> num, @RequestParam(name = "size", defaultValue = "5", required = false) Integer size
    ) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<HoaDon> list = hoaDonService.getAll(pageable);
        System.out.println(list.getContent());
        model.addAttribute("listhoaDon", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        model.addAttribute("contentPage", "hoa-don/hien-thi.jsp");
        return "layout";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model, @ModelAttribute("hoaDon") HoaDon hoaDon, @ModelAttribute(name = "nhanVien") NhanVien nhanVien, @ModelAttribute(name = "khachHang") KhachHang khachHang, @ModelAttribute(name = "khuyenMai") KhuyenMai khuyenMai) {
        List<NhanVien> listNhanVien = nhanVienService.findAll();
        List<KhachHang> listKhachHang = khachHangService.findAll();
        List<KhuyenMai> listKhuyenMai = khuyenMaiService.findAll();
        model.addAttribute("hoaDon", new HoaDon());
        model.addAttribute("listNhanVien", listNhanVien);
        model.addAttribute("listKhachHang", listKhachHang);
        model.addAttribute("listKhuyenMai", listKhuyenMai);
        return "hoa-don/add";
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute(name = "hoaDon") HoaDon hoaDon, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "hoa-don/add";
        }
        String maHD = "HD" + (hoaDonService.findAll().size() + 1);
        hoaDon.setMa(maHD);
        hoaDon.setNgayTao(LocalDateTime.now());
        hoaDonService.add(hoaDon);
        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("/view-update/{id}")
    public String viewUPdate(Model model, @PathVariable("id") UUID id, @ModelAttribute("hoaDon") HoaDon hoaDon, @ModelAttribute(name = "nhanVien") NhanVien nhanVien, @ModelAttribute(name = "khachHang") KhachHang khachHang, @ModelAttribute(name = "khuyenMai") KhuyenMai khuyenMai) {
        List<NhanVien> listNhanVien = nhanVienService.findAll();
        List<KhachHang> listKhachHang = khachHangService.findAll();
        List<KhuyenMai> listKhuyenMai = khuyenMaiService.findAll();

        model.addAttribute("listNhanVien", listNhanVien);
        model.addAttribute("listKhachHang", listKhachHang);
        model.addAttribute("listKhuyenMai", listKhuyenMai);
        HoaDon hoadon = hoaDonService.findById(id);
        model.addAttribute("hoaDon", hoadon);
        return "hoa-don/update";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "hoaDon") HoaDon hoaDon,
                         @PathVariable(name = "id") UUID id) {
        HoaDon hd = hoaDonService.findById(id);
        hoaDon.setId(id);
        hoaDon.setMa(hoaDon.getMa());
        hoaDonService.update(id, hoaDon);
        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id) {
        hoaDonService.delete(id);
        return "redirect:/hoa-don/hien-thi";
    }

    @PostMapping("/loc")
    public String loc(Model model, @RequestParam(value = "locTT", required = false) Integer locTT,
                      @RequestParam(value = "locPTTT", required = false) Integer locPTTT,
                      @RequestParam(value = "locLoai", required = false) Integer locLoai,
                      @RequestParam(value = "ngayTao", required = false) String ngayTao) {
        if (ngayTao == null || ngayTao.isEmpty()) {
            List<HoaDon> list = hoaDonService.loc(locTT, locPTTT, locLoai, null);
            model.addAttribute("listhoaDon", list);
            model.addAttribute("contentPage", "../ban-hang-online/list-hoa-don-admin.jsp");
            return "home/layout";

        } else {
            List<HoaDon> list = hoaDonService.loc(locTT, locPTTT, locLoai, Date.valueOf(ngayTao));
            model.addAttribute("listhoaDon", list);
            model.addAttribute("contentPage", "../ban-hang-online/list-hoa-don-admin.jsp");
            return "home/layout";
        }

    }

    @PostMapping("/search")
    public String search(Model model, @RequestParam("ma") String ma, @RequestParam("num") Optional<Integer> num, @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        if (!ma.isEmpty()) {
            List<HoaDon> list = hoaDonService.searchMa(ma);
            model.addAttribute("listhoaDon", list);
            model.addAttribute("contentPage", "../ban-hang-online/list-hoa-don-admin.jsp");
            return "home/layout";
        } else {
            Sort sort = Sort.by("ngayTao").descending();
            Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
            Page<HoaDon> list = hoaDonService.getAllAdmin(pageable);
            model.addAttribute("listhoaDon", list.getContent());
            model.addAttribute("total", list.getTotalPages());
            model.addAttribute("contentPage", "../ban-hang-online/list-hoa-don-admin.jsp");
            return "home/layout";
        }
    }
}

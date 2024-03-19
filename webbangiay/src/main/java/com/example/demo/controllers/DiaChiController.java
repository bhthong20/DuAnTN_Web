package com.example.demo.controllers;

import com.example.demo.models.ChatLieu;
import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.ChucVu;
import com.example.demo.models.DiaChi;
import com.example.demo.models.KhachHang;
import com.example.demo.models.KichThuoc;
import com.example.demo.models.MauSac;
import com.example.demo.services.ChucVuService;
import com.example.demo.services.DiaChiService;
import com.example.demo.services.KhachHangService;
import jakarta.validation.Valid;
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
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;

@Controller
//@RequestMapping("/nhan-vien")
public class DiaChiController {

    @Autowired
    private DiaChiService diaChiService;

    @Autowired
    private KhachHangService khachHangService;


    @GetMapping("/hien-thi/dia-chi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "4", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<DiaChi> list = diaChiService.FindAll(pageable);
        model.addAttribute("diaChi", list.getContent());
        model.addAttribute("total", list.getTotalPages());
//        model.addAttribute("diaChi" , diaChiService.getAll());
        return "/dia-chi/hien-thi";
    }

    @GetMapping("/dia-chi/delete/{id}")
    public String deleteDiaChi(@PathVariable(name = "id") UUID id) {
        diaChiService.deleteDiaChi(id);
        return "redirect:/hien-thi/dia-chi";
    }

//    @GetMapping("/view-update/{id}")
//    public String viewUpdate(Model model, @PathVariable("id") UUID id) {
//        ChucVu cv = chucVuService.findById(id);
//        model.addAttribute("chucVu", cv);;
//        model.addAttribute("contentPage", "/chuc-vu/update.jsp");
//        return "/chuc-vu/update";
//    }
//
//    @PostMapping("update/{id}")
//    public String update(@ModelAttribute(name = "nhanVien") NhanVien nhanVien,
//                         @PathVariable(name = "id") UUID id ,@ModelAttribute("chucVu") ChucVu chucVu) {
//        NhanVien nv = nhanVienService.findById(id);
//        nhanVien.setMa(nv.getMa());
//        nhanVien.setHoTen(nv.getHoTen());
//        nhanVien.setEmail(nv.getEmail());
//        nhanVien.setSdt(nv.getSdt());
//        nhanVien.setNgaySinh(nv.getNgaySinh());
//        nhanVien.setGioiTinh(nv.getGioiTinh());
//        nhanVien.setDiaChi(nv.getDiaChi());
//        nhanVien.setCanCuoc(nv.getCanCuoc());
//        nhanVien.setTaiKhoan(nv.getTaiKhoan());
//        nhanVien.setMatKhau(nv.getMatKhau());
//        nhanVien.setNgayCapNhat(Date.valueOf(LocalDate.now()));
//        nhanVien.setTinhTrang(nv.getTinhTrang());
//        nhanVienService.update(id, nhanVien);
//        return "redirect:/hien-thi/nhan-vien";
//    }
//

    @GetMapping("/dia-chi/view-add")
    public String viewAdd(Model model, @ModelAttribute("diaChi") DiaChi diaChi,
                          @ModelAttribute ("khachHang")KhachHang khachHang) {
        model.addAttribute("chucVu", new ChucVu());
        model.addAttribute("listKh" , khachHangService.getAll());
//        model.addAttribute("listCv", chucVuService.getAll());
        model.addAttribute("contentPage", "dia-chi/add.jsp");
        return "dia-chi/add";
    }


    @PostMapping("/dia-chi/add")
    public String add(Model model, @ModelAttribute("diaChi") DiaChi diaChi,
                      @ModelAttribute("khachHang") KhachHang khachHang, BindingResult result) {
        if (result.hasErrors()) {
            model.addAttribute("listKh" , khachHangService.getAll());
            model.addAttribute("contentPage", "dia-chi/add.jsp");
            return "dia-chi/add";
        }
//        String maDiaChi = "DC00" + (diaChiService.getAll().size() + 1);
//        diaChi.s;
        diaChi.setNgayTao(Date.valueOf(LocalDate.now()));
        diaChiService.add(diaChi);
        System.out.println("listChucVu");
        return "redirect:/hien-thi/dia-chi";
    }
}

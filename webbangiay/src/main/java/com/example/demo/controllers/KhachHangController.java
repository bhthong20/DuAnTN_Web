package com.example.demo.controllers;

import com.example.demo.models.ChucVu;
import com.example.demo.services.ChucVuService;
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
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;

@Controller
//@RequestMapping("/nhan-vien")
public class KhachHangController {

    @Autowired
    private KhachHangService khachHangService;


    @GetMapping("/hien-thi/khach-hang")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
//        Sort sort = Sort.by("ngayTao").descending();
//        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
//        Page<ChucVu> list = chucVuService.FindAll(pageable);
//        model.addAttribute("chucVu", list.getContent());
//        model.addAttribute("total", list.getTotalPages());
        model.addAttribute("khachHang" , khachHangService.getAll());
        return "/khach-hang/hien-thi";
    }

    @GetMapping("/khach-hang/delete/{id}")
    public String deleteChucVu(@PathVariable(name = "id") UUID id) {
        khachHangService.deleteKhachHang(id);
        return "redirect:/hien-thi/chuc-vu";
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
//
//    @GetMapping("/chuc-vu/view-add")
//    public String viewAdd(Model model, @ModelAttribute("chucVu") ChucVu chucVu) {
//        model.addAttribute("chucVu", new ChucVu());
////        model.addAttribute("listCv", chucVuService.getAll());
//        model.addAttribute("contentPage", "chuc-vu/add.jsp");
//        return "chuc-vu/add";
//    }
//
//
//    @PostMapping("/chuc-vu/add")
//    public String add(Model model , @ModelAttribute("chucVu") ChucVu chucVu, BindingResult result) {
//        if (result.hasErrors()) {
////            model.addAttribute("listChucVu", chucVuService.getAll());
//            model.addAttribute("contentPage", "chuc-vu/add.jsp");
//            return "chuc-vu/add";
//        }
//        String maChucVu = "CV00" + (chucVuService.getAll().size() + 1);
//        chucVu.setMa(maChucVu);
////        nhanVien.setHoTen(nhanVien.getHoTen());
//        chucVu.setNgayTao(Date.valueOf(LocalDate.now()));
//        chucVuService.add(chucVu);
////        nhanVienService.add(nhanVien);
//        System.out.println("listChucVu");
//        return "redirect:/hien-thi/chuc-vu";
//
//
//    }
}


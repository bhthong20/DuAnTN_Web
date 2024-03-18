package com.example.demo.controllers;


import com.example.demo.models.PhanLoai;
import com.example.demo.services.PhanLoaiService;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/loai")
public class LoaiController {
    @Autowired
    private PhanLoaiService khuyenMaiService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<PhanLoai> list = khuyenMaiService.getAll(pageable);
        model.addAttribute("listMauSac", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        return "loai/hien-thi";
    }
    @GetMapping("/view-add")
    public String viewAdd(Model model , @ModelAttribute("MauSac") PhanLoai mauSac){
        model.addAttribute("MauSac", new PhanLoai());
        return "loai/add";
    }
    @PostMapping("/add")
    public String add(@Valid @ModelAttribute(name = "MauSac") PhanLoai mauSac , BindingResult bindingResult ){
        if(bindingResult.hasErrors()){
            return "loai/add";
        }
        mauSac.setId(UUID.randomUUID());
        mauSac.setNgayTao(Date.valueOf(LocalDate.now()));
        khuyenMaiService.add(mauSac);
        return "redirect:/loai/hien-thi";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id){
        khuyenMaiService.delete(id);
        return "redirect:/loai/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String detail(Model model, @PathVariable("id") UUID id){
        PhanLoai mauSac = khuyenMaiService.findById(id);
        model.addAttribute("mauSac", mauSac);
        return "loai/update";
    }
    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "mauSac") PhanLoai mauSac,
                         @PathVariable(name = "id")UUID id){
        PhanLoai sizeUpdate = khuyenMaiService.findById(id);
        mauSac.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        System.out.println(sizeUpdate.toString());
        khuyenMaiService.update(id, mauSac);
        return "redirect:/loai/hien-thi";
    }
    @PostMapping("/search")
    public String search(Model model, @ModelAttribute("size") PhanLoai size,@RequestParam("search") String search){
        List<PhanLoai> list = khuyenMaiService.search(search);
        model.addAttribute("listMauSac",list);
        return "loai/hien-thi";
    }
}

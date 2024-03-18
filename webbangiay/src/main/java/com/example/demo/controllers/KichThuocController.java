package com.example.demo.controllers;


import com.example.demo.models.KichThuoc;
import com.example.demo.services.KichThuocService;
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
@RequestMapping("/kich-thuoc")
public class KichThuocController {

    @Autowired
    private KichThuocService khuyenMaiService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<KichThuoc> list = khuyenMaiService.getAll(pageable);
        model.addAttribute("listSize", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        return "size/hien-thi";
    }
    @GetMapping("/view-add")
    public String viewAdd(Model model , @ModelAttribute("Size") KichThuoc size){
        model.addAttribute("size", new KichThuoc());
        return "size/add";
    }
    @PostMapping("/add")
    public String add(@Valid @ModelAttribute(name = "Size") KichThuoc size , BindingResult bindingResult ){
        if(bindingResult.hasErrors()){
            return "size/add";
        }
        size.setId(UUID.randomUUID());
        size.setNgayTao(Date.valueOf(LocalDate.now()));
        khuyenMaiService.add(size);
        return "redirect:/kich-thuoc/hien-thi";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id){
        khuyenMaiService.delete(id);
        return "redirect:/kich-thuoc/hien-thi";
    }
    @GetMapping("/view-update/{id}")
    public String detail(Model model, @PathVariable("id") UUID id){
        KichThuoc size = khuyenMaiService.findById(id);
        model.addAttribute("Size", size);
        return "size/update";
    }
    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "Size") KichThuoc size,
                         @PathVariable(name = "id")UUID id){
        KichThuoc sizeUpdate = khuyenMaiService.findById(id);
        size.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        khuyenMaiService.update(id, size);
        return "redirect:/kich-thuoc/hien-thi";
    }
    @PostMapping("/search")
    public String search(Model model, @ModelAttribute("size") KichThuoc size,@RequestParam("search") String search){
        List<KichThuoc> list = khuyenMaiService.search(search);
        model.addAttribute("listSize",list);
        return "kich-thuoc/hien-thi";
    }
}

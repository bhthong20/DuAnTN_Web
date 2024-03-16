package com.example.demo.controllers;

import com.example.demo.models.ThuongHieu;
import com.example.demo.services.ThuongHieuService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
@RequestMapping("thuong-hieu")
public class ThuongHieuController {
    @Autowired
    private ThuongHieuService thuongHieuService;

    @GetMapping("hien-thi")
    public String hienThi(Model model,
                          @RequestParam("page") Optional<Integer> pageParam) {
        int page = pageParam.orElse(0);
        Pageable p = PageRequest.of(page, 5);
        Page<ThuongHieu> pageData = thuongHieuService.findAll(p);
        model.addAttribute("pageData", pageData);
        return "thuong-hieu/hien-thi";
    }
    @GetMapping("view-add")
    public String viewAdd(Model model, @ModelAttribute("thuongHieu") ThuongHieu thuongHieu){
        model.addAttribute("thuongHieu",new ThuongHieu());
        return "thuong-hieu/add";
    }
    @PostMapping("add")
    public String add(@Valid @ModelAttribute(name = "thuongHieu") ThuongHieu thuongHieu, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "thuong-hieu/add";
        }
        String maTH = "TH" + (thuongHieuService.findAll().size()+1);
        thuongHieu.setMa(maTH);
        thuongHieu.setNgayTao(Date.valueOf(LocalDate.now()));
        thuongHieu.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        thuongHieuService.add(thuongHieu);
        return "redirect:/thuong-hieu/hien-thi";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id){
        thuongHieuService.delete(id);
        return "redirect:/thuong-hieu/hien-thi";
    }
    @GetMapping("view-update/{id}")
    public String detail(Model model, @PathVariable("id") UUID id){
        ThuongHieu thuongHieu = thuongHieuService.findById(id);
        model.addAttribute("thuongHieu",thuongHieu);
        return "thuong-hieu/update";
    }
    @PostMapping("update/{id}")
    public String update(@Valid @ModelAttribute(name = "danhGia") ThuongHieu thuongHieu,
                         @PathVariable(name = "id") UUID id,
                         BindingResult result){
        if (result.hasErrors()){
            System.out.println("Co loi");
            return "thuong-hieu/update";
        }
        thuongHieu.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        thuongHieuService.update(id, thuongHieu);
        return "redirect:/thuong-hieu/hien-thi";
    }
    @PostMapping("search")
    public String search (Model model, @ModelAttribute("thuongHieu") ThuongHieu thuongHieu, @RequestParam("search") String search){
        List<ThuongHieu> list = thuongHieuService.search(search);
        model.addAttribute("list",list);
        return "thuong-hieu/hien-thi";
    }
}

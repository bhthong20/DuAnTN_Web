package com.example.demo.controllers;

import com.example.demo.models.ChatLieu;
import com.example.demo.models.HinhAnh;
import com.example.demo.models.PhanLoai;
import com.example.demo.models.SanPham;
import com.example.demo.models.ThuongHieu;
import com.example.demo.services.HinhAnhService;
import com.example.demo.services.PhanLoaiService;
import com.example.demo.services.SanPhamService;
import com.example.demo.services.ThuongHieuService;
import com.example.demo.util.FileUploadUtil;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/san-pham")
public class SanPhamController {

    @Autowired
    private SanPhamService sanPhamService;

    @Autowired
    private HinhAnhService hinhAnhService;

    @Autowired
    private ThuongHieuService thuongHieuService;

    @Autowired
    private PhanLoaiService phanLoaiService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
                          @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<SanPham> list = sanPhamService.getAll(pageable);
        model.addAttribute("listSanPham", list.getContent());
        model.addAttribute("total", list.getTotalPages());
        return "san-pham/hien-thi";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model, @ModelAttribute("sanPham") SanPham sanPham, @ModelAttribute("hinhAnh") HinhAnh hinhAnh, @ModelAttribute("thuongHieu") ThuongHieu thuongHieu, @ModelAttribute("phanLoai")PhanLoai phanLoai) {

        List<PhanLoai> listPhanLoai = phanLoaiService.findAll();
        List<ThuongHieu> listThuongHieu = thuongHieuService.findAll();
        List<HinhAnh> listHinhAnh = hinhAnhService.findAll();
        model.addAttribute("sanPham", new SanPham());
        model.addAttribute("listPhanLoai", listPhanLoai);
        model.addAttribute("listThuongHieu", listThuongHieu);
        model.addAttribute("listHinhAnh",listHinhAnh);
        return "san-pham/add";
    }

    @GetMapping("/view-update/{id}")
    public String detail(Model model, @PathVariable("id") UUID id, @ModelAttribute("sanPham") SanPham sanPham,@ModelAttribute("hinhAnh") HinhAnh hinhAnh, @ModelAttribute("thuongHieu") ThuongHieu thuongHieu, @ModelAttribute("phanLoai")PhanLoai phanLoai) {
        List<PhanLoai> listPhanLoai = phanLoaiService.findAll();
        List<ThuongHieu> listThuongHieu = thuongHieuService.findAll();
        SanPham hsp = sanPhamService.findById(id);
        model.addAttribute("sanPham", hsp);
        model.addAttribute("listPhanLoai", listPhanLoai);
        model.addAttribute("listThuongHieu", listThuongHieu);
        model.addAttribute("listHinhAnh",hinhAnhService.findAll());
        return "san-pham/update";
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute(name = "sanPham") SanPham sanPham, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "san-pham/add";
        }
        String maSP = "SP" + (sanPhamService.findAll().size() + 1);
        sanPham.setMa(maSP);
        sanPham.setNgayTao(Date.valueOf(LocalDate.now()));
        sanPhamService.add(sanPham);
        return "redirect:/san-pham/hien-thi";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute(name = "sanPham") SanPham sanPham,
                         @PathVariable(name = "id") UUID id) {
        SanPham nv = sanPhamService.findById(id);
        sanPham.setId(id);
        sanPham.setMa(nv.getMa());
        sanPham.setNgayTao(nv.getNgayTao());
        sanPham.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        sanPhamService.update(id, sanPham);
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id) {
        sanPhamService.delete(id);
        return "redirect:/san-pham/hien-thi";
    }

    @PostMapping("/modal-add-thuong-hieu")
    public String addHangSanPham(@ModelAttribute("thuongHieu") @Valid ThuongHieu thuongHieu, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "san-pham/add";
        }
        String maTH = "TH" + (thuongHieuService.findAll().size() + 1);
        thuongHieu.setMa(maTH);
        thuongHieu.setNgayTao(Date.valueOf(LocalDate.now()));
        thuongHieuService.add(thuongHieu);
        return "redirect:/san-pham/view-add";
    }

    @PostMapping("/modal-add-phan-loai")
    public String addChatLieu(@ModelAttribute("phanLoai") @Valid PhanLoai phanLoai, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "san-pham/add";
        }
        String maPL = "PL" + (phanLoaiService.findAll().size() + 1);
        phanLoai.setMa(maPL);
        phanLoai.setNgayTao(Date.valueOf(LocalDate.now()));
        phanLoaiService.add(phanLoai);
        return "redirect:/san-pham/view-add";
    }
    @PostMapping("/modal-add-hinh-anh")
    public String addHinhAnh(Model model,
                             @ModelAttribute("hinhAnh") @Valid HinhAnh anh,
                             BindingResult bindingResult,
                             @RequestParam("anh1s") MultipartFile anh1,
                             @RequestParam("anh2s") MultipartFile anh2,
                             @RequestParam("anh3s") MultipartFile anh3,
                             @RequestParam("num") Optional<Integer> num,
                             @RequestParam(name = "size", defaultValue = "5", required = false) Integer size
    ) throws IOException {
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        if (bindingResult.hasErrors()) {
            model.addAttribute("contentPage", "anh/add.jsp");
            return "san-pham/add";
        }
        String mhd="";
        Integer sl = hinhAnhService.findAll().size() + 1;
        if(sl<9){
            mhd = "ANH0" + sl;
        }else {
            mhd = "ANH" + sl;
        }
        anh.setMa(mhd);
        anh.setNgayTao(date);
        anh.setTrangThai(0);

        // Xử lý ảnh 1
        String fileName1 = StringUtils.cleanPath(anh1.getOriginalFilename());

        if(fileName1.equals("")){

        }else {
            String uploadDir = "src/main/webapp/uploads/";
            FileUploadUtil.saveFile(uploadDir, fileName1, anh1);
            anh.setAnh1(fileName1);
        }

        // Xử lý ảnh 2
        String fileName2 = StringUtils.cleanPath(anh2.getOriginalFilename());

        if(fileName2.equals("")){

        }else {
            String uploadDir = "src/main/webapp/uploads/";
            FileUploadUtil.saveFile(uploadDir, fileName2, anh2);
            anh.setAnh2(fileName2);
        }

        // Xử lý ảnh 3
        String fileName3 = StringUtils.cleanPath(anh3.getOriginalFilename());

        if(fileName3.equals("")){

        }else {
            String uploadDir = "src/main/webapp/uploads/";
            FileUploadUtil.saveFile(uploadDir, fileName3, anh3);
            anh.setAnh3(fileName3);
        }
        hinhAnhService.add(anh);
        return "redirect:/san-pham/view-add";
    }

    @PostMapping("/search")
    public String search(Model model, @ModelAttribute("sanPham") SanPham sanPham, @RequestParam("search") String search) {
        List<SanPham> list = sanPhamService.search(search);
        model.addAttribute("listSanPham", list);
        return "san-pham/hien-thi";
    }
}

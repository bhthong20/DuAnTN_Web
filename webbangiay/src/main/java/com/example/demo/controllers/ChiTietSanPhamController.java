package com.example.demo.controllers;

import com.example.demo.models.ChatLieu;
import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.KichThuoc;
import com.example.demo.models.MauSac;
import com.example.demo.repositories.SanPhamRepository;
import com.example.demo.services.ChatLieuService;
import com.example.demo.services.ChiTietSanPhamService;
import com.example.demo.services.HinhAnhService;
import com.example.demo.services.KichThuocService;
import com.example.demo.services.MauSacService;
import com.example.demo.services.PhanLoaiService;
import com.example.demo.services.SanPhamService;
import com.example.demo.services.ThuongHieuService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/chi-tiet-san-pham")
public class ChiTietSanPhamController {
    @Autowired
    private ChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private MauSacService mauSacService;

    @Autowired
    private KichThuocService kichThuocService;

    @Autowired
    private ChatLieuService chatLieuService;

    @Autowired
    private HinhAnhService hinhAnhService;

    @Autowired
    private PhanLoaiService phanLoaiService;

    @Autowired
    private ThuongHieuService thuongHieuService;

    @GetMapping("/hien-thi")
    public String hienThi(Model model, @RequestParam("num") Optional<Integer> num, @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());

        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<ChiTietSanPham> list = chiTietSanPhamService.getAll(pageable);
        model.addAttribute("listCTSP"                                                                                                                                                                                   , list.getContent());
        model.addAttribute("total", list.getTotalPages());
        model.addAttribute("contentPage", "../chi-tiet-san-pham/hien-thi.jsp");
//        return "chi-tiet-san-pham/hien-thi";
        return "home/layout";
    }

    @GetMapping("/hien-thi-delete")
    public String hienThiDelete(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham,
                                @RequestParam("pageNum") Optional<Integer> num,
                                @RequestParam(name = "pageSize", required = false, defaultValue = "5") Integer size) {

        Sort sort = Sort.by("ngayTao").descending();
        Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
        Page<ChiTietSanPham> page = chiTietSanPhamService.getAll1(pageable);
        model.addAttribute("contentPage", "../chi-tiet-san-pham/view-trang-thai.jsp");
        model.addAttribute("listCTSP", page.getContent());
        model.addAttribute("page", page.getNumber());
        model.addAttribute("total", page.getTotalPages());
        return "home/layout";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name = "id") UUID id) {
        chiTietSanPhamService.delete(id);
        return "redirect:/chi-tiet-san-pham/hien-thi";
    }
    @GetMapping("/view-add")
    public String viewAdd(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham,
                          @ModelAttribute("mauSac") MauSac mauSac,
                          @ModelAttribute("kichThuoc") KichThuoc kichThuoc,
                          @ModelAttribute("chatLieu") ChatLieu chatLieu) {
        model.addAttribute("chiTietSanPham", new ChiTietSanPham());
        model.addAttribute("listTH", thuongHieuService.findAll());
        model.addAttribute("listPL", phanLoaiService.findAll());
        model.addAttribute("listHA", hinhAnhService.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());
        model.addAttribute("contentPage", "../chi-tiet-san-pham/add.jsp");
        return "home/layout";
    }

    @GetMapping("/view-update/{idctsp}")
    public String viewUpdate(Model model, @PathVariable("idctsp") UUID id,
                             @ModelAttribute("mauSac") MauSac mauSac,
                             @ModelAttribute("kichThuoc") KichThuoc kichThuoc,
                             @ModelAttribute("chatLieu") ChatLieu chatLieu) {
        ChiTietSanPham ctsp = chiTietSanPhamService.findById(id);
        model.addAttribute("chiTietSanPham", ctsp);
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());
        model.addAttribute("contentPage", "../chi-tiet-san-pham/update.jsp");
        return "chi-tiet-san-pham/update";
    }

    @PostMapping("/add")
    public String add(@Valid @ModelAttribute(name = "chiTietSanPham") ChiTietSanPham chiTietSanPham, BindingResult result, Model model,
                      @ModelAttribute("mauSac") MauSac mauSac,
                      @ModelAttribute("kichThuoc") KichThuoc kichThuoc,
                      @ModelAttribute("chatLieu") ChatLieu chatLieu) {
        if(result.hasErrors()){
            model.addAttribute("listSP", sanPhamRepository.findAll());
            model.addAttribute("listMS", mauSacService.findAll());
            model.addAttribute("listKT", kichThuocService.findAll());
            model.addAttribute("listCL", chatLieuService.findAll());
            model.addAttribute("contentPage", "chi-tiet-san-pham/add.jsp");
            return "home/layout";
        }
        String maCTSP = "CTSP" + (chiTietSanPhamService.findAll().size() + 1);
        chiTietSanPham.setMa(maCTSP);
        chiTietSanPham.setNgayTao(Date.valueOf(LocalDate.now()));
        chiTietSanPhamService.add(chiTietSanPham);
        return "redirect:/chi-tiet-san-pham/hien-thi";
    }

    @PostMapping("/update/{idctsp}")
    public String update(@ModelAttribute(name = "chiTietSanPham") ChiTietSanPham chiTietSanPham, @PathVariable(name = "idctsp") UUID id,
                         @ModelAttribute("mauSac") MauSac mauSac,
                         @ModelAttribute("kichThuoc") KichThuoc kichThuoc,
                         @ModelAttribute("chatLieu") ChatLieu chatLieu){
        ChiTietSanPham ctsp = chiTietSanPhamService.findById(id);
        chiTietSanPham.setId(id);
        chiTietSanPham.setMa(ctsp.getMa());
        chiTietSanPham.setNgayTao(ctsp.getNgayTao());
        chiTietSanPham.setNgayCapNhat(Date.valueOf(LocalDate.now()));
        chiTietSanPhamService.update(id, chiTietSanPham);
        return "redirect:/chi-tiet-san-pham/hien-thi";
    }

    @GetMapping("/update-all")
    public String updateTT(Model model, @RequestParam("pageNum") Optional<Integer> pageNum,
                           @RequestParam(name = "pageSize", required = false, defaultValue = "5") Integer pageSize,
                           @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham) {
        Sort sort = Sort.by("ngayTao").ascending();
        Pageable pageable = PageRequest.of(pageNum.orElse(0), pageSize, sort);
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        chiTietSanPham.setNgayCapNhat(date);
        chiTietSanPhamService.updateTT();
        Page<ChiTietSanPham> page = chiTietSanPhamService.getAll1(pageable);
        model.addAttribute("contentPage", "chi-tiet-san-pham/view-trang-thai.jsp");
        model.addAttribute("listCTSP", page.getContent());
        model.addAttribute("page", page.getNumber());
        model.addAttribute("total", page.getTotalPages());
        return "layout";
    }

    @GetMapping("/update-status/{id}")
    public String updateStatus(Model model, @PathVariable("id") UUID id, @RequestParam("pageNum") Optional<Integer> pageNum,
                               @RequestParam(name = "pageSize", required = false, defaultValue = "5") Integer pageSize, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham) {
        Sort sort = Sort.by("ngayTao").ascending();
        Pageable pageable = PageRequest.of(pageNum.orElse(0), pageSize, sort);

        ChiTietSanPham ctsp = chiTietSanPhamService.findById(id);
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        ctsp.setNgayCapNhat(date);
        ctsp.setTrangThai(1);
        chiTietSanPhamService.update(id, ctsp);
        Page<ChiTietSanPham> page = chiTietSanPhamService.getAll(pageable);
        model.addAttribute("contentPage", "../chi-tiet-san-pham/view-trang-thai.jsp");
        model.addAttribute("listCTSP", page.getContent());
        model.addAttribute("page", page.getNumber());
        model.addAttribute("total", page.getTotalPages());
        return "home/layout";
    }

    @GetMapping("/reset-status/{id}")
    public String resetStatus(Model model, @PathVariable("id") UUID id, @RequestParam("pageNum") Optional<Integer> pageNum,
                              @RequestParam(name = "pageSize", required = false, defaultValue = "5") Integer pageSize, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham) {
        Sort sort = Sort.by("ngayTao").ascending();
        Pageable pageable = PageRequest.of(pageNum.orElse(0), pageSize, sort);
        ChiTietSanPham ctsp = chiTietSanPhamService.findById(id);
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        ctsp.setNgayCapNhat(date);

        ctsp.setTrangThai(0);
        chiTietSanPhamService.update(id, chiTietSanPham);
        Page<ChiTietSanPham> page = chiTietSanPhamService.getAll1(pageable);
        model.addAttribute("contentPage", "chi-tiet-san-pham/view-trang-thai.jsp");
        model.addAttribute("listCTSP", page.getContent());
        model.addAttribute("page", page.getNumber());
        model.addAttribute("total", page.getTotalPages());
        return "layout";
    }

    @PostMapping("/search")
    public String search(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @RequestParam("search") String search){
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());

        List<ChiTietSanPham> list = chiTietSanPhamService.search0(search);
        model.addAttribute("listCTSP", list);
        model.addAttribute("contentPage", "chi-tiet-san-pham/hien-thi.jsp");
        return "layout";
    }

    @PostMapping("/search1")
    public String search1(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @RequestParam("search") String search){
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());
        List<ChiTietSanPham> list = chiTietSanPhamService.search1(search);
        model.addAttribute("listCTSP", list);
        model.addAttribute("contentPage", "chi-tiet-san-pham/view-trang-thai.jsp");
        return "layout";
    }

    @PostMapping("/loc")
    public String loc(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @RequestParam("locSP") String locSP,
                      @RequestParam("locMS") String locMS,
                      @RequestParam("locKT") String locKT,
                      @RequestParam("locCL") String locCL){
        if(locSP.equals("null") && locMS.equals("null") &&  locKT.equals("null") && locCL.equals("null")){
            return "redirect:/chi-tiet-san-pham/hien-thi";
        }
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());

        List<ChiTietSanPham> list = chiTietSanPhamService.loc(locSP, locMS, locKT, locCL);
        model.addAttribute("contentPage", "chi-tiet-san-pham/hien-thi.jsp");
        model.addAttribute("listCTSP", list);
        return "layout";
    }

    @PostMapping("/loc1")
    public String loc1(Model model, @ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @RequestParam("locSP") String locSP,
                       @RequestParam("locMS") String locMS,
                       @RequestParam("locKT") String locKT,
                       @RequestParam("locCL") String locCL){
        if(locSP.equals("null") && locMS.equals("null") &&  locKT.equals("null") && locCL.equals("null")){
            return "redirect:/chi-tiet-san-pham/hien-thi";
        }
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listMS", mauSacService.findAll());
        model.addAttribute("listKT", kichThuocService.findAll());
        model.addAttribute("listCL", chatLieuService.findAll());

        List<ChiTietSanPham> list = chiTietSanPhamService.loc(locSP, locMS, locKT, locCL);
        model.addAttribute("listCTSP", list);
        model.addAttribute("contentPage", "chi-tiet-san-pham/view-trang-thai.jsp");
        return "layout";
    }

    @PostMapping("/modal-add-mau-sac")
    public ModelAndView addMauSac(@ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @ModelAttribute("mauSac") @Valid MauSac mauSac, BindingResult result,
                                  @ModelAttribute("kichThuoc") KichThuoc kichThuoc,
                                  @ModelAttribute("chatLieu") ChatLieu chatLieu, ModelMap model){
        if(result.hasErrors()){
            model.addAttribute("listSP", sanPhamRepository.findAll());
            model.addAttribute("listMS", mauSacService.findAll());
            model.addAttribute("listKT", kichThuocService.findAll());
            model.addAttribute("listCL", chatLieuService.findAll());
            model.addAttribute("contentPage", "chi-tiet-san-pham/add.jsp");
            return new ModelAndView("layout", model);
        }
        String maMS = "MS" + (mauSacService.findAll().size()+1);
        mauSac.setMa(maMS);
        mauSac.setNgayTao(Date.valueOf(LocalDate.now()));
        mauSacService.add(mauSac);
        model.addAttribute("chiTietSanPham", chiTietSanPham);
        return new ModelAndView("redirect:/chi-tiet-san-pham/view-add", model);
    }

    @PostMapping("/modal-add-kich-thuoc")
    public String addSize(@ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @ModelAttribute("kichThuoc") @Valid KichThuoc kichThuoc, BindingResult result,
                          @ModelAttribute("mauSac") MauSac mauSac,
                          @ModelAttribute("chatLieu") ChatLieu chatLieu, Model model){
        if(result.hasErrors()){
            model.addAttribute("listSP", sanPhamRepository.findAll());
            model.addAttribute("listMS", mauSacService.findAll());
            model.addAttribute("listKT", kichThuocService.findAll());
            model.addAttribute("listCL", chatLieuService.findAll());
            model.addAttribute("contentPage", "chi-tiet-san-pham/add.jsp");
            return "layout";
        }
        String maSize  = "Size" + (kichThuocService.findAll().size()+1);
        kichThuoc.setMa(maSize);
        kichThuoc.setNgayTao(Date.valueOf(LocalDate.now()));
        kichThuocService.add(kichThuoc);
        return "redirect:/chi-tiet-san-pham/view-add";
    }

    @PostMapping("/modal-add-chat-lieu")
    public String addDe(@ModelAttribute("chiTietSanPham") ChiTietSanPham chiTietSanPham, @ModelAttribute("chatLieu") @Valid ChatLieu chatLieu, BindingResult result,
                        @ModelAttribute("mauSac") MauSac mauSac,
                        @ModelAttribute("kichThuoc") KichThuoc kichThuoc, Model model){
        if(result.hasErrors()){
            model.addAttribute("listSP", sanPhamRepository.findAll());
            model.addAttribute("listMS", mauSacService.findAll());
            model.addAttribute("listKT", kichThuocService.findAll());
            model.addAttribute("listCL", chatLieuService.findAll());
            model.addAttribute("contentPage", "chi-tiet-san-pham/add.jsp");
            return "layout";
        }
        String maCL = "CL" + (chatLieuService.findAll().size()+1);
        chatLieu.setMa(maCL);
        chatLieu.setNgayTao(Date.valueOf(LocalDate.now()));
        chatLieuService.add(chatLieu);
        return "redirect:/chi-tiet-san-pham/view-add";
    }
}

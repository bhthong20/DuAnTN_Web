package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.SanPham;
import com.example.demo.models.dto.ChiTietSanPhamDto;
import com.example.demo.models.dto.SanPhamDto;
import com.example.demo.repositories.ChiTietSanPhamRepository;
import com.example.demo.services.ChatLieuService;
import com.example.demo.services.ChiTietSanPhamService;
import com.example.demo.services.HinhAnhService;
import com.example.demo.services.KichThuocService;
import com.example.demo.services.MauSacService;
import com.example.demo.services.PhanLoaiService;
import com.example.demo.services.SanPhamService;
import com.example.demo.services.ThuongHieuService;
import jakarta.transaction.Transactional;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class ChiTietSanPhamServiceImpl implements ChiTietSanPhamService {
    @Autowired
    private ChiTietSanPhamRepository repository;

    @Autowired
    private SanPhamService sanPhamService;

    @Autowired
    private HinhAnhService hinhAnhService;

    @Autowired
    private PhanLoaiService phanLoaiService;

    @Autowired
    private ThuongHieuService thuongHieuService;

    @Autowired
    private ChatLieuService chatLieuService;

    @Autowired
    private KichThuocService kichThuocService;

    @Autowired
    private MauSacService mauSacService;

    @Override
    public Page<ChiTietSanPham> getAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public Page<ChiTietSanPham> getAll1(Pageable pageable) {
        return repository.getAll1(pageable);
    }

    @Override
    public List<ChiTietSanPham> findAll() {
        return repository.findAll();
    }

    @Override
    public List<ChiTietSanPham> findAll0() {
        return repository.findAll0();
    }

    @Override
    public List<ChiTietSanPham> search0(String search) {
        return repository.search(search);
    }

    @Override
    public List<ChiTietSanPham> search1(String search) {
        return repository.search1(search);
    }

    @Override
    public List<ChiTietSanPham> loc(String locSP, String locMS, String locKT, String locCL) {
        return repository.loc(locSP, locMS, locKT, locCL);
    }

    @Override
    public List<ChiTietSanPham> loc1(String locSP, String locMS, String locKT, String locCL) {
        return repository.loc1(locSP, locMS, locKT, locCL);
    }

    @Override
    public Boolean delete(UUID id) {
        if (id != null) {
            ChiTietSanPham sanPhamUpdate = repository.findById(id).orElse(null);
            if (sanPhamUpdate != null) {
                repository.delete(sanPhamUpdate);
                return true;
            }
        }
        return false;

    }

    @Override
    @Transactional
    public Boolean addAllChiTietSanPham(SanPhamDto sanPhamDto) {
        try {
            SanPham sanPham = new SanPham();
            sanPham.setMa("SP" + (sanPhamService.findAll().size() + 1));
            sanPham.setTenSP(sanPhamDto.getTenSanPham());
            sanPham.setNgayTao(Date.valueOf(LocalDate.now()));
            sanPham.setMoTa(sanPhamDto.getMoTa());
            sanPham.setHinhAnh(hinhAnhService.findById(sanPhamDto.getIdHinhAnh()));
            sanPham.setPhanLoai(phanLoaiService.findById(sanPhamDto.getIdLoaiSanPham()));
            sanPham.setThuongHieu(thuongHieuService.findById(sanPhamDto.getIdThuongHieu()));
            sanPham.setTrangThai(1);
            sanPham.setId(sanPhamService.add(sanPham).getId());

            List<ChiTietSanPham> chiTietSanPhams = new ArrayList<>();

            for (ChiTietSanPhamDto dto: sanPhamDto.getChiTietSanPhamDtos()) {
                ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
                String maCTSP = "CTSP" + (findAll().size() + 1);
                chiTietSanPham.setMa(maCTSP);
                chiTietSanPham.setNgayTao(Date.valueOf(LocalDate.now()));
                chiTietSanPham.setChatLieu(chatLieuService.findById(dto.getIdChatLieu()));
                chiTietSanPham.setDonGia(dto.getDonGia());
                chiTietSanPham.setKichThuoc(kichThuocService.findById(dto.getIdKichThuoc()));
                chiTietSanPham.setMauSac(mauSacService.findById(dto.getIdMauSac()));
                chiTietSanPham.setSoLuongTon(dto.getSoLuongTon());
                chiTietSanPham.setTrangThai(dto.getTrangThai());
                chiTietSanPham.setMoTa(dto.getMoTa());
                chiTietSanPham.setSanPham(sanPham);
                chiTietSanPhams.add(chiTietSanPham);
            }

            repository.saveAll(chiTietSanPhams);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public ChiTietSanPham findById(UUID id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public ChiTietSanPham add(ChiTietSanPham chiTietSanPham) {
        return repository.save(chiTietSanPham);
    }

    @Override
    public ChiTietSanPham update(UUID id, ChiTietSanPham chiTietSanPham) {
        if(id != null){
            ChiTietSanPham ctsp = repository.findById(id).orElse(null);
            if(ctsp != null){
                BeanUtils.copyProperties(chiTietSanPham, ctsp);
                repository.save(ctsp);
            }
        }
        return null;
    }

    @Override
    public void updateTT() {
        repository.updateTT();
    }
}

package com.example.demo.services.impl;

import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.dto.ThongKeTongDto;
import com.example.demo.repositories.ThongKeRepository;
import com.example.demo.services.ThongKeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class ThongKeServiceImpl implements ThongKeService {

    @Autowired
    private ThongKeRepository repository;

    @Override
    public ThongKeTongDto getTongThongKe() {
        List<HoaDonChiTiet> list = repository.getAllHoaDonChiTiet();

        Set<HoaDon> set = new HashSet<>(list.stream().map(el -> el.getHoaDon()).collect(Collectors.toList()));

        List<YearMonth> listNgayTao = listNgayTao(set);

        List<Long> taiQuayTongTien = new ArrayList<>();
        List<Long> onlineTongTien = new ArrayList<>();

        listNgayTao.forEach(el -> {
            taiQuayTongTien.add(countTongTienTheoThangByLoai(el, set, 1));
            onlineTongTien.add(countTongTienTheoThangByLoai(el, set, 0));
        });

        ThongKeTongDto thongKeTongDto = getTongQuatThongKe(set, list);


        return null;
    }

    public List<YearMonth> listNgayTao(Set<HoaDon> hoaDons) {
        // Tìm HoaDon có ngayTao nhỏ nhất
        Optional<HoaDon> hoaDonMinNgayTao = hoaDons.stream()
                .min((hd1, hd2) -> hd1.getNgayTao().compareTo(hd2.getNgayTao()));

        HoaDon hoaDonMin = hoaDonMinNgayTao.get();

        // Tìm HoaDon có ngayTao lớn nhất
        Optional<HoaDon> hoaDonMaxNgayTao = hoaDons.stream()
                .max((hd1, hd2) -> hd1.getNgayTao().compareTo(hd2.getNgayTao()));
        HoaDon hoaDonMax = hoaDonMaxNgayTao.get();

        LocalDate ngayTaoNhoNhat = hoaDonMin.getNgayTao().toLocalDate();
        LocalDate ngayTaoLonNhat = hoaDonMax.getNgayTao().toLocalDate();

        // Tạo mảng chứa tất cả các tháng trong khoảng thời gian từ ngayTao nhỏ nhất đến ngayTao lớn nhất
        List<YearMonth> thangTrongKhoang = new ArrayList<>();
        YearMonth currentMonth = YearMonth.from(ngayTaoNhoNhat);

        while (!currentMonth.isAfter(YearMonth.from(ngayTaoLonNhat))) {
            thangTrongKhoang.add(currentMonth);
            currentMonth = currentMonth.plusMonths(1);
        }

        return thangTrongKhoang;
    }

    public ThongKeTongDto getTongQuatThongKe(Set<HoaDon> set, List<HoaDonChiTiet> list) {
        Long tongSoLuongBan = 0L;
        BigDecimal tongDoanhSo = BigDecimal.ZERO;
        BigDecimal tongTaiQuay = BigDecimal.ZERO;
        BigDecimal tongOnline = BigDecimal.ZERO;

        for (HoaDon el : set) {
            tongDoanhSo = tongDoanhSo.add(el.getTongTien());
            if (el.getLoai() == 1) {
                tongTaiQuay = tongTaiQuay.add(el.getTongTien());
            } else {
                tongOnline = tongOnline.add(el.getTongTien());
            }
        }

        for (HoaDonChiTiet el : list) {
            tongSoLuongBan += el.getSoLuong();
        }
        return new ThongKeTongDto(tongSoLuongBan, tongDoanhSo.longValue(), tongTaiQuay.longValue(), tongOnline.longValue());
    }

    public Long countTongTienTheoThangByLoai(YearMonth thangTrongKhoang, Set<HoaDon> set, int loai) {
        Long tongTien = 0l;
        for (HoaDon el : set) {
            YearMonth hoaDonYearMonth = YearMonth.from(el.getNgayTao().toLocalDate());
            if (thangTrongKhoang.equals(hoaDonYearMonth) && el.getLoai() == loai) {
                tongTien += el.getTongTien().longValue();
            }
        }
        return tongTien;
    }
}

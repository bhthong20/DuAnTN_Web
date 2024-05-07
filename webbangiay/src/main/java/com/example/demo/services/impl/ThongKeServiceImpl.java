package com.example.demo.services.impl;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.HoaDon;
import com.example.demo.models.HoaDonChiTiet;
import com.example.demo.models.SanPham;
import com.example.demo.models.dto.LineChartDto;
import com.example.demo.models.dto.SanPhamThongKeDto;
import com.example.demo.models.dto.ThongKeAllDto;
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
    public ThongKeAllDto getTongThongKe() {
        List<HoaDonChiTiet> list = repository.getAllHoaDonChiTiet();

        Set<HoaDon> set = new HashSet<>(list.stream().map(el -> el.getHoaDon()).collect(Collectors.toList()));

        List<YearMonth> listNgayTao = listNgayTao(set);

        List<Long> taiQuayTongTien = new ArrayList<>();
        List<Long> onlineTongTien = new ArrayList<>();
        List<LineChartDto> getLineChartTong = new ArrayList<>();
        listNgayTao.forEach(el -> {
            taiQuayTongTien.add(countTongTienTheoThangByLoai(el, set, 1));
            onlineTongTien.add(countTongTienTheoThangByLoai(el, set, 0));
        });
        getLineChartTong.add(new LineChartDto(null, "Bán tại quầy", taiQuayTongTien));
        getLineChartTong.add(new LineChartDto(null, "Bán online", onlineTongTien));

        ThongKeTongDto thongKeTongDto = getTongQuatThongKe(set, list);
        List<SanPhamThongKeDto> getAllSanPham = getAllSanPhamThongKe(list);
        List<LineChartDto> getLineChartSanPham = getLineChartSanPham(list, listNgayTao);

        return new ThongKeAllDto(thongKeTongDto, getAllSanPham, getLineChartSanPham, getLineChartTong, listNgayTao);
    }

    public List<YearMonth> listNgayTao(Set<HoaDon> hoaDons) {
        // Tìm HoaDon có ngayTao nhỏ nhất
        Optional<HoaDon> hoaDonMinNgayTao = hoaDons.stream()
                .min((hd1, hd2) -> hd1.getNgayTao().compareTo(hd2.getNgayTao()));

        // Tìm HoaDon có ngayTao lớn nhất
        Optional<HoaDon> hoaDonMaxNgayTao = hoaDons.stream()
                .max((hd1, hd2) -> hd1.getNgayTao().compareTo(hd2.getNgayTao()));

        // Nếu không có hóa đơn thì bỏ qua
        if (hoaDonMaxNgayTao.isEmpty() || hoaDonMinNgayTao.isEmpty()) {
            return new ArrayList<>();
        }

        HoaDon hoaDonMin = hoaDonMinNgayTao.get();
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

    // lấy danh sách chi tiết sản phẩm
    public List<ChiTietSanPham> getAllChiTietSanPhamByListHoaDon(List<HoaDonChiTiet> list) {
        return list.stream().map(el -> {
            ChiTietSanPham chiTietSanPham = el.getChiTietSanPham();
            chiTietSanPham.setNgayTao(el.getHoaDon().getNgayTao());
            return chiTietSanPham;
        }).collect(Collectors.toList());
    }

    public List<SanPhamThongKeDto> getAllSanPhamThongKe(List<HoaDonChiTiet> hoaDonChiTiets) {
        List<SanPhamThongKeDto> sanPhamThongKeDtos = new ArrayList<>();

        hoaDonChiTiets.forEach(el -> {
            SanPhamThongKeDto sanPhamThongKeDto = new SanPhamThongKeDto();

            sanPhamThongKeDto.setTenSanPham(el.getChiTietSanPham().getSanPham().getTenSP());
            sanPhamThongKeDto.setId(el.getChiTietSanPham().getSanPham().getId());
            sanPhamThongKeDto.setUrl(el.getChiTietSanPham().getSanPham().getHinhAnh().getAnh1());
            sanPhamThongKeDto.setSoLuongTon(el.getChiTietSanPham().getSoLuongTon());
            sanPhamThongKeDto.setSoLuongBan(el.getSoLuong());
            BigDecimal doanhThu = BigDecimal.valueOf(el.getSoLuong()).multiply(el.getDonGia());
            sanPhamThongKeDto.setDoanhThu(doanhThu.longValue());

            Optional<SanPhamThongKeDto> existingItem = sanPhamThongKeDtos.stream()
                    .filter(data -> data.getId().equals(el.getChiTietSanPham().getSanPham().getId()))
                    .findFirst();

            if (existingItem.isPresent()) {
                int index = sanPhamThongKeDtos.indexOf(existingItem.get());

                sanPhamThongKeDto.setSoLuongTon(sanPhamThongKeDto.getSoLuongTon() + existingItem.get().getSoLuongTon());
                sanPhamThongKeDto.setSoLuongBan(sanPhamThongKeDto.getSoLuongBan() + existingItem.get().getSoLuongBan());
                sanPhamThongKeDto.setDoanhThu(sanPhamThongKeDto.getDoanhThu() + existingItem.get().getDoanhThu());

                sanPhamThongKeDtos.set(index, sanPhamThongKeDto);
            } else {
                sanPhamThongKeDtos.add(sanPhamThongKeDto);
            }
        });
        return sanPhamThongKeDtos;
    }

    // Thống kê sản phẩm theo tháng
    public List<LineChartDto> getLineChartSanPham(List<HoaDonChiTiet> hoaDonChiTiets, List<YearMonth> thangTrongKhoang) {
        List<LineChartDto> listReturn = new ArrayList<>();

        hoaDonChiTiets.forEach(el -> {
            if (listReturn.stream().filter(sp -> sp.getId().equals(el.getChiTietSanPham().getSanPham().getId())).count() == 0) {
                LineChartDto lineChartDto = new LineChartDto();
                lineChartDto.setId(el.getChiTietSanPham().getSanPham().getId());
                lineChartDto.setName(el.getChiTietSanPham().getSanPham().getTenSP());
                listReturn.add(lineChartDto);
            }
        });

        thangTrongKhoang.forEach(yearMonth -> {
            hoaDonChiTiets
                    .stream()
                    .filter(el -> YearMonth.from(el.getHoaDon().getNgayTao().toLocalDate()).equals(yearMonth))
                    .collect(Collectors.toList())
                    .forEach(el -> {
                Optional<LineChartDto> lineChartDto = listReturn
                        .stream()
                        .filter(sp -> sp.getId().equals(el.getChiTietSanPham().getSanPham().getId())).findFirst();
//                if (lineChartDto.isPresent()) {
//                    if (lineChartDto.get().getData() == null) {
//                        lineChartDto.get().setData(new ArrayList<>());
//                    }
//                    lineChartDto.get()
//                            .getData()
//                            .add(BigDecimal.valueOf(el.getSoLuong()).multiply(el.getDonGia()).longValue());
//                }
            });
        });

        return listReturn;
    }

}

package com.example.demo.models.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.YearMonth;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ThongKeAllDto {
    private ThongKeTongDto thongKeTong;
    private List<SanPhamThongKeDto> getAllSanPham;
    private List<LineChartDto> getLineChartSanPham;
    private List<LineChartDto> getLineChartTong;
    private List<LocalDate> categories;
}
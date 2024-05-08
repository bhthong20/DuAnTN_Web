package com.example.demo.models.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.YearMonth;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ThongKeDetailDto {
    private List<YearMonth> categories;
    private List<LineChartDto> getLineChartDetail;
    private List<SanPhamThongKeDetailDto> getSanPhamDetail;
}

package com.example.demo.models.dto;

import com.example.demo.models.ChiTietSanPham;
import lombok.*;

import java.math.BigDecimal;
import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class GioHangDto {
    private UUID id;
    private int soLuong;
    private BigDecimal donGia;
    private UUID idChiTietSanPham;
}

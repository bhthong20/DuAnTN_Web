package com.example.demo.models.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChiTietSanPhamDto {
    private UUID id;
    private UUID idKichThuoc;
    private UUID idMauSac;
    private UUID idChatLieu;
    private int soLuongTon;
    private BigDecimal donGia;
    private String moTa;
    private int trangThai;
}

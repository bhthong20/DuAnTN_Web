package com.example.demo.models.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SanPhamDto {
    private UUID id;
    private String tenSanPham;
    private UUID idLoaiSanPham;
    private UUID idHinhAnh;
    private UUID idThuongHieu;
    private String moTa;
    private List<ChiTietSanPhamDto> chiTietSanPhamDtos;
}

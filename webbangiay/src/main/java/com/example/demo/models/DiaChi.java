package com.example.demo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;
import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
@Entity
@Table(name = "dia_chi")
public class DiaChi {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id_dia_chi")
    private UUID id;

    @Column(name = "ma")
    private String ma;

    @NotBlank(message = "Không để trống thông tin")
    @Column(name = "dia_chi_chi_tiet")
    private String diaChi;

    @NotBlank(message = "Không để trống thông tin")
    @Column(name = "quan_huyen")
    private String quan;

    @NotBlank(message = "Không để trống thông tin")
    @Column(name = "phuong_xa")
    private String phuongXa;

    @NotBlank(message = "Không để trống thông tin")
    @Column(name = "thanh_pho")
    private String thanhPho;

    @CreationTimestamp
    @Column(name = "ngay_tao")
    private Date ngayTao;

    @Column(name = "ngay_cap_nhat")
    private Date ngayCapNhat;

    @Column(name = "trang_thai")
    private int trangThai;
//
//    @Column(name = "tinh_trang")
//    private int tinhTrang;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachHang;
}

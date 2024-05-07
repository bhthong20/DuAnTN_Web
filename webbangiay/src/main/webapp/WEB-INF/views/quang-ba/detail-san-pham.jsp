<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
-->
<!-- beautify ignore:start -->
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content=""/>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css"/>
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css"/>
    <link rel="stylesheet" href="../assets/css/demo.css"/>

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>

    <link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css"/>

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>
    <script src="../js/menu.js"></script>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<section id="content" class="mt-4" style="background-color: #f5f5f9;">
    <section class="container bg-white">
        <div class="row py-4">
            <div class="col-5">
                <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-bs-target="#carouselExample" data-bs-slide-to="0" class="active"></li>
                        <li data-bs-target="#carouselExample" data-bs-slide-to="1"></li>
                        <li data-bs-target="#carouselExample" data-bs-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img id="anh1" class="d-block w-100" src="../assets/img/elements/13.jpg" alt="First slide"/>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img id="anh2" class="d-block w-100" src="../assets/img/elements/2.jpg" alt="Second slide"/>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img id="anh3" class="d-block w-100" src="../assets/img/elements/18.jpg" alt="Third slide"/>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExample" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExample" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </a>
                </div>
                <div style="margin-top: 30px; border-top: 1px solid rgba(0, 0, 0, 0.05);">
                    <div class="gIL8h3">
                        <div>
                            <div class="fqmTt_">
                                <div class="Nm4HEX">
                                    <div class="shopee-drawer _7dS96" id="pc-drawer-id-2" tabindex="0">
                                        <div class="XklnWA flex items-center"><img class="oZtSFx"
                                                                                   src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/2bcf834c40468ebcb90b.svg">
                                            <div class="YzLslW">Đổi ý miễn phí 15 ngày</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Nm4HEX">
                                    <div class="shopee-drawer _7dS96" id="pc-drawer-id-3" tabindex="0">
                                        <div class="XklnWA flex items-center"><img class="oZtSFx"
                                                                                   src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/511aca04cc3ba9234ab0.png">
                                            <div class="YzLslW">Hàng chính hãng 100%</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="Nm4HEX">
                                    <div class="shopee-drawer _7dS96" id="pc-drawer-id-4" tabindex="0">
                                        <div class="XklnWA flex items-center"><img class="oZtSFx"
                                                                                   src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/16ead7e0a68c3cff9f32.png">
                                            <div class="YzLslW">Miễn phí vận chuyển</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-7 px-4">
                <div class="row">
                    <div class="col-12">
                        <h3 class="title" id="tenSanPham"></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <span class="title text-sub-title-detail me-1">Đánh giá: </span><span id="value_star"
                                                                                                      class="title text-sub-title-detail me-1">5</span>
                                <div class="rating">
                                    <input value="5" onchange="$('#value_star').text('5')" name="rate" id="star5"
                                           type="radio" checked="">
                                    <label title="text" for="star5"></label>
                                    <input value="4" onchange="$('#value_star').text('4')" name="rate" id="star4"
                                           type="radio">
                                    <label title="text" for="star4"></label>
                                    <input value="3" onchange="$('#value_star').text('3')" name="rate" id="star3"
                                           type="radio">
                                    <label title="text" for="star3"></label>
                                    <input value="2" onchange="$('#value_star').text('2')" name="rate" id="star2"
                                           type="radio">
                                    <label title="text" for="star2"></label>
                                    <input value="1" onchange="$('#value_star').text('1')" name="rate" id="star1"
                                           type="radio">
                                    <label title="text" for="star1"></label>
                                </div>
                            </div>
                            <div class=" text-sub-title-detail">
                                Đã bán <span id="daBan"></span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div style="margin-top: 10px;">
                        <div class="d-flex flex-column">
                            <div class="d-flex flex-column CWiSMQ">
                                <section class="d-flex align-items-center" aria-live="polite"><h2 class="Bf9ap6">Price
                                    Section</h2>
                                    <div class="d-flex align-items-center QAc7_y">
                                        <div class="qg2n76" style="display: none" id="donGiaTruocSale">₫</div>
                                        <div class="d-flex align-items-center">
                                            <div class="G27FPf">₫<span id="donGia"></span></div>
                                            <div class="o_z7q9" style="display: none" id="giamGia"></div>
                                        </div>
                                    </div>
                                </section>
                                <span class="d-flex align-items-center ZRb8YF"><span
                                        style="color: #ff3e1d;
                                        font-size: xx-large;
                                        font-weight: bolder;" id="tenMaGiamGia"></span>
                                    <div class="eLrI5y" id="thoiGianKetThuc">Chưa có đợt giảm giá</div>
                                    <img alt="icon arrow right" class="d24OWs"
                                         src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/966fbe37fe1c72e3f2dd.svg"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <c:if
                                test="${not empty listKM}">
                            <div class="row mt-4">
                                <div class="col-4">
                                    Mã giảm giá của shop
                                </div>
                                <div class="col-8">
                                <span class="mini-vouchers__vouchers flex flex-auto flex-no-overflow">
                                    <c:forEach items="${listKM}" var="item" varStatus="loop">
                                        <div onclick="renderSale(this)"
                                             class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover <c:if test='${loop.first}'>checked</c:if>"
                                             hinhThucGiam="${item.hinhThucGiamGia}"
                                             giaTriGiam="${item.giaTriGiam}"
                                             ngayKetThuc="${item.ngayKetThuc}"
                                             ten="${item.ten}"
                                             id="${item.id}"
                                        >
                                            <div class=""><span
                                                    class="voucher-promo-value voucher-promo-value--percent">${item.giaTriGiam}</span><span
                                                    class="voucher-promo-label"><c:if
                                                    test="${item.hinhThucGiamGia==0}"> VNĐ</c:if>
                                            <c:if test="${item.hinhThucGiamGia==1}"> %</c:if></span><span
                                                    class="voucher-promo-label voucher-promo-label--off">GIẢM</span></div>
                                        </div>
                                    </c:forEach>
                                </span>
                                </div>
                            </div>
                        </c:if>
                        <div class="row mt-4">
                            <div class="col-4">
                                Vận chuyển
                            </div>
                            <div class="col-8">
                                <span class="mini-vouchers__vouchers flex flex-auto flex-no-overflow">
                                    <img src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/d9e992985b18d96aab90.png"
                                         height="20" class="Fy4A_Q">
                                    Miễn phí vận chuyển
                                </span>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Màu sắc
                            </div>
                            <div class="col-8">
                                <div id="listMauSac" class="d-flex align-items-center j7HL5Q">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Size
                            </div>
                            <div class="col-8">
                                <div id="listKichThuoc" class="d-flex align-items-center j7HL5Q">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Chất liệu
                            </div>
                            <div class="col-8">
                                <div id="listChatLieu" class="d-flex align-items-center j7HL5Q">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Số lượng
                            </div>
                            <div class="col-8">
                                <div class="d-flex align-items-center">
                                    <div style="margin-right: 15px;">
                                        <div class="_9m0o30 shopee-input-quantity">
                                            <button aria-label="Decrease" class="suQW3X" onclick="validateInputTru()"
                                                    fdprocessedid="yi4z8l">
                                                -
                                            </button>
                                            <input class="suQW3X u00pLG" id="soLuongInput" min="0" type="text" value="1"
                                                   onchange="validateInput(this)">
                                            <button aria-label="Increase" onclick="validateInputCong()" class="suQW3X"
                                                    fdprocessedid="qikb1a">
                                                +
                                            </button>
                                        </div>
                                    </div>
                                    <div><span id="soLuong"></span> sản phẩm có sẵn</div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Mô tả
                            </div>
                            <div class="col-8">
                                <div class="d-flex align-items-center" id="moTa">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <div class="text-center">
                            <button type="button" onclick="themVaoGioHang()" class="btn btn-danger">Thêm vào giỏ hàng
                            </button>
                            <button type="button" onclick="muaNgay()" class="btn btn-danger">Mua ngay</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>


<jsp:include page="footer.jsp"></jsp:include>

</body>
<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../assets/vendor/libs/jquery/jquery.js"></script>
<script src="../assets/vendor/libs/popper/popper.js"></script>
<script src="../assets/vendor/js/bootstrap.js"></script>
<script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->
<script src="../assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="../../../js/select-2.js"></script>
<script>
    var url = window.location.href;
    var parts = url.split("/");
    var id = parts[parts.length - 1];

    let sanPham = {
        tenSp: "",
        daBan: 0,
        donGia: 0,
        sale: 30,
        mauSac: "",
        size: "",
        chatLieu: "",
        soLuong: 0,
        moTa: "",
        anh1: "",
        anh2: "",
        anh3: "",
    }

    let mauSac = [];
    let size = [];
    let chatLieu = [];
    let chiTietSanPham = [];
    let idChiTietSanPham = "";

    function renderSale(sale) {
        const listSale = $('.voucher-ticket');
        const saleSelect = $(sale);
        const hinhThucGiam = parseInt(saleSelect.attr('hinhThucGiam'));
        const giaTriGiam = parseInt(saleSelect.attr('giaTriGiam'));

        listSale.removeClass('checked');
        saleSelect.addClass('checked');

        $('#tenMaGiamGia').text(saleSelect.attr('ten'));
        $('#thoiGianKetThuc').text('KẾT THÚC SAU ' + new Date(parseInt(saleSelect.attr('ngayKetThuc'))).toLocaleString());
        $('#donGiaTruocSale').text("₫" + sanPham.donGia);

        if (hinhThucGiam == 1) {
            $('#donGia').text(sanPham.donGia * (100 - giaTriGiam) / 100);
            $('#giamGia').text('' + giaTriGiam + ' % giảm');
        } else {
            $('#donGia').text(sanPham.donGia - giaTriGiam);
            $('#giamGia').text('' + giaTriGiam + ' VNĐ giảm');
            if (sanPham.donGia - giaTriGiam < 0) {
                $('#donGia').text(0);
            }
        }

        $('#donGiaTruocSale').show();
        $('#giamGia').show();
    }

    function muaNgay() {
        let sanPham = getChiTietSanPhamSelect();

        let productShopping = []
        let kt = confirm("Bạn có chắc chắn muốn tạo hóa đơn không?");
        if (kt) {
            productShopping.push({
                chiTietSanPham: sanPham.id,
                soLuong: sanPham.soLuongMua,
                donGia: sanPham.donGia
            })
            $.ajax({
                type: "POST",
                url: "/ban-hang-online/rest/tao-hoa-don",
                contentType: "application/json",
                data: JSON.stringify(productShopping),
                success: function (response) {
                    alert("Tạo hóa đơn thành công");
                    window.location.href = "/ban-hang-online/hoa-don-detail?id=" + response;
                },
                error: function (xhr, status, error) {
                    if (xhr.responseJSON.status && xhr.responseJSON.status === 400) {
                        alert(xhr.responseJSON.message)
                    }
                }
            });
        }
    }

    function themVaoGioHang() {
        let chiTiet = getChiTietSanPhamSelect();
        let data = {
            chiTietSanPham: chiTiet.id,
            soLuong: chiTiet.soLuongMua,
            donGia: chiTiet.donGia
        };

        let kt = confirm("Bạn có chắc chắn muốn thêm vào giỏ hàng không?");
        if (kt) {
            $.ajax({
                type: "POST",
                url: "/ban-hang-online/rest/them-gio-hang",
                contentType: "application/json",
                data: JSON.stringify(data), // Chuyển đổi dữ liệu thành chuỗi JSON
                success: function (response) {
                    alert("Sản phẩm đã được thêm vào giỏ hàng");
                    location.reload();
                },
                error: function (xhr, status, error) {
                    if (xhr.responseJSON.status && xhr.responseJSON.status === 400) {
                        alert(xhr.responseJSON.message)
                    }
                }
            });
            return true;
        } else {
            return false;
        }

    }

    function getChiTietSanPhamSelect() {
        const btnChatLieu = $('.btnChatLieu.checked').first().attr("identity");
        const btnSize = $('.btnSize.checked').first().attr("identity");
        const mauSac = $('.mauSac.checked').first().attr("identity");

        const chiTietSanPhamSelect = chiTietSanPham.filter(el => el.mauSac.id === mauSac && el.kichThuoc.id === btnSize && el.chatLieu.id === btnChatLieu)[0];
        chiTietSanPhamSelect.soLuongMua = parseInt($('#soLuongInput').val());

        return chiTietSanPhamSelect;
    }

    window.onload = function () {
        $.ajax({
            type: "GET",
            url: "/home/rest/" + id,
            success: function (response) {
                if (response.sanPham) {
                    sanPham.tenSp = response.sanPham.tenSP
                    sanPham.daBan = response.soLuongDaBan
                }
                if (response.chiTietSanPham && response.chiTietSanPham.length !== 0) {
                    chiTietSanPham = response.chiTietSanPham
                    idChiTietSanPham = response.chiTietSanPham[0].id
                    sanPham.mauSac = response.chiTietSanPham[0].mauSac.ten
                    sanPham.size = response.chiTietSanPham[0].kichThuoc.size
                    sanPham.chatLieu = response.chiTietSanPham[0].chatLieu.tenChatLieu
                    sanPham.soLuong = response.chiTietSanPham[0].soLuongTon
                    sanPham.donGia = response.chiTietSanPham[0].donGia
                    sanPham.moTa = response.chiTietSanPham[0].moTa

                    sanPham.anh1 = '../../../uploads/' + response.chiTietSanPham[0].hinhAnh.anh1
                    sanPham.anh2 = '../../../uploads/' + response.chiTietSanPham[0].hinhAnh.anh2
                    sanPham.anh3 = '../../../uploads/' + response.chiTietSanPham[0].hinhAnh.anh3
                }
                renderListCombobox(response.chiTietSanPham);

                renderMauSac();
                renderKichThuoc();
                renderChatLieu();
                renderSanPham();
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    function validateInput(input) {
        var value = input.value;
        const matched = value.match(/^[0-9]+$/);

        if (!matched) {
            input.value = 1;
        } else {
            if (parseInt(input.value) <= 0) {
                input.value = 1;
            } else if (parseInt(input.value) > sanPham.soLuong) {
                input.value = sanPham.soLuong;
            }
        }
    }

    function validateInputCong() {
        if ($('#soLuongInput').val() >= sanPham.soLuong) {
            $('#soLuongInput').val(sanPham.soLuong);
        } else {
            $('#soLuongInput').val(parseInt($('#soLuongInput').val()) + 1)
        }
    }

    function validateInputTru() {
        if ($('#soLuongInput').val() <= 1) {
            $('#soLuongInput').val(1);
        } else {
            $('#soLuongInput').val(parseInt($('#soLuongInput').val()) - 1)
        }
    }

    function renderListCombobox(listChiTietSanPham) {
        listChiTietSanPham.forEach(el => {
            if (mauSac.filter(color => color.identity == el.mauSac.id).length == 0) {
                mauSac.push({
                    id: el.id,
                    ten: el.mauSac.ten,
                    image: '../../../uploads/' + el.hinhAnh.anh1,
                    image2: '../../../uploads/' + el.hinhAnh.anh2,
                    image3: '../../../uploads/' + el.hinhAnh.anh3,
                    identity: el.mauSac.id
                });
            }
            if (size.filter(size => size.identity == el.kichThuoc.id).length == 0) {
                size.push({
                    id: el.id,
                    ten: el.kichThuoc.size,
                    identity: el.kichThuoc.id
                });
            }
            if (chatLieu.filter(category => category.identity == el.chatLieu.id).length == 0) {
                chatLieu.push({
                    id: el.id,
                    ten: el.chatLieu.tenChatLieu,
                    identity: el.chatLieu.id
                });
            }
        })
    }

    function renderMauSac() {
        const listMauSac = document.getElementById("listMauSac");
        let html = '';
        if (mauSac && mauSac.length !== 0) {
            mauSac.forEach(el => {
                html += `
                    <button class="sApkZm SkhBL1 mauSac ` + (el.id == idChiTietSanPham ? 'checked' : '') + `" identity="` + el.identity + `" idCtsp="` + el.id + `" aria-label="Đen" onclick="changeMauSac(this)" aria-disabled="false"
                            fdprocessedid="wb3xko"><img class="nk0Z0T"
                                                        src="` + el.image + `">` + el.ten + `
                    </button>
                `
            })
            listMauSac.innerHTML = html;
        }
    }

    function renderKichThuoc() {
        const listKichThuoc = document.getElementById("listKichThuoc");
        let html = '';
        if (size && size.length !== 0) {
            size.forEach(el => {
                html += `
                    <button class="sApkZm SkhBL1 btnSize ` + (el.id == idChiTietSanPham ? 'checked' : '') + `" identity="` + el.identity + `" idCtsp="` + el.id + `" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                            fdprocessedid="wb3xko">
                        ` + el.ten + `
                    </button>
                `
            })
            listKichThuoc.innerHTML = html;
        }
    }

    function renderChatLieu() {
        const listChatLieu = document.getElementById("listChatLieu");
        let html = '';
        if (chatLieu && chatLieu.length !== 0) {
            chatLieu.forEach(el => {
                html += `
                    <button class="sApkZm SkhBL1 btnChatLieu ` + (el.id == idChiTietSanPham ? 'checked' : '') + `" identity="` + el.identity + `" idCtsp="` + el.id + `" onclick="changeChatLieu(this)" aria-label="Đen" aria-disabled="false"
                            fdprocessedid="wb3xko">
                        ` + el.ten + `
                    </button>
                `
            })
            listChatLieu.innerHTML = html;
        }
    }

    function renderSanPham() {
        $('#tenSanPham').html(sanPham.tenSp);
        $('#donGia').html(sanPham.donGia);
        $('#anh1').attr('src', sanPham.anh1);
        $('#anh2').attr('src', sanPham.anh2);
        $('#anh3').attr('src', sanPham.anh3);
        $('#moTa').html(sanPham.moTa);
        $('#soLuong').html(sanPham.soLuong);

        if ($('.voucher-ticket').length !== 0) {
            renderSale($('.voucher-ticket').first());
        }
    }

    function changeMauSac(button) {
        $('.mauSac').removeClass("checked");
        $(button).addClass("checked");
        const mauSacSelect = getChiTietSanPhamSelect()
        $('#anh1').attr('src', mauSacSelect.anh1);
        $('#anh2').attr('src', mauSacSelect.anh2);
        $('#anh3').attr('src', mauSacSelect.anh3);
    }

    function changeSize(button) {
        $('.btnSize').removeClass("checked");
        $(button).addClass("checked");
        const sizeSelect = getChiTietSanPhamSelect()
        $('#anh1').attr('src', sizeSelect.anh1);
        $('#anh2').attr('src', sizeSelect.anh2);
        $('#anh3').attr('src', sizeSelect.anh3);
    }

    function changeChatLieu(button) {
        $('.btnChatLieu').removeClass("checked");
        $(button).addClass("checked");
        const chatLieuSelect = getChiTietSanPhamSelect()
        $('#anh1').attr('src', chatLieuSelect.anh1);
        $('#anh2').attr('src', chatLieuSelect.anh2);
        $('#anh3').attr('src', chatLieuSelect.anh3);
    }
</script>
</html>

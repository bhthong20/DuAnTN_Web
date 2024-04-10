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
                            <img class="d-block w-100" src="../assets/img/elements/13.jpg" alt="First slide"/>
                            <div class="carousel-caption d-none d-md-block">
                                <h3>First slide</h3>
                                <p>Eos mutat malis maluisset et, agam ancillae quo te, in vim congue pertinacia.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="../assets/img/elements/2.jpg" alt="Second slide"/>
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Second slide</h3>
                                <p>In numquam omittam sea.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="../assets/img/elements/18.jpg" alt="Third slide"/>
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Third slide</h3>
                                <p>Lorem ipsum dolor sit amet, virtute consequat ea qui, minim graeco mel no.</p>
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
                        <h3 class="title" id="tenSp"></h3>
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
                                Đã bán 38.3k
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
                                        <div class="qg2n76">₫49.840</div>
                                        <div class="d-flex align-items-center">
                                            <div class="G27FPf">₫43.700</div>
                                            <div class="o_z7q9">12% giảm</div>
                                        </div>
                                    </div>
                                </section>
                                <a class="d-flex align-items-center ZRb8YF"
                                   href="/flash_sale?fromItem=21780863951&amp;promotionId=213928579891201"><span
                                        class="DFQfff BhIewg"></span>
                                    <div class="eLrI5y">BẮT ĐẦU SAU 17:00, 10 Th04</div>
                                    <img alt="icon arrow right" class="d24OWs"
                                         src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/productdetailspage/966fbe37fe1c72e3f2dd.svg"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="row mt-4">
                            <div class="col-4">
                                Mã giảm giá của shop
                            </div>
                            <div class="col-8">
                                <span class="mini-vouchers__vouchers flex flex-auto flex-no-overflow">
                                    <div class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover">
                                        <div class=""><span
                                                class="voucher-promo-value voucher-promo-value--percent">20</span><span
                                                class="voucher-promo-label">%</span><span
                                                class="voucher-promo-label voucher-promo-label--off">GIẢM</span></div>
                                    </div>

                                    <div class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover">
                                        <div class=""><span
                                                class="voucher-promo-value voucher-promo-value--percent">50</span><span
                                                class="voucher-promo-label">%</span><span
                                                class="voucher-promo-label voucher-promo-label--off">GIẢM</span></div>
                                    </div>

                                    <div class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover">
                                        <div class=""><span
                                                class="voucher-promo-value voucher-promo-value--percent">100</span><span
                                                class="voucher-promo-label">%</span><span
                                                class="voucher-promo-label voucher-promo-label--off">GIẢM</span></div>
                                    </div>
                                </span>
                            </div>
                        </div>
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
                                <div class="d-flex align-items-center j7HL5Q">
                                    <button class="sApkZm SkhBL1 mauSac" aria-label="Đen" onclick="changeMauSac(this)" aria-disabled="false"
                                            fdprocessedid="wb3xko"><img class="nk0Z0T"
                                                                        src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls14cnzl6xll72">Đen
                                    </button>
                                    <button class="sApkZm SkhBL1 mauSac" aria-label="Xanh đen" onclick="changeMauSac(this)" aria-disabled="false"
                                            fdprocessedid="jmvq5"><img class="nk0Z0T"
                                                                       src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls14cqn19uop99">Xanh
                                        đen
                                    </button>
                                    <button class="sApkZm SkhBL1 mauSac" aria-label="Ghi" onclick="changeMauSac(this)" aria-disabled="false"
                                            fdprocessedid="usdn9m"><img class="nk0Z0T"
                                                                        src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls14cwaoztms85">Ghi
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Size
                            </div>
                            <div class="col-8">
                                <div class="d-flex align-items-center j7HL5Q">
                                    <button class="sApkZm SkhBL1 btnSize" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        39
                                    </button>
                                    <button class="sApkZm SkhBL1 btnSize" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        40
                                    </button>
                                    <button class="sApkZm SkhBL1 btnSize" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        41
                                    </button>
                                    <button class="sApkZm SkhBL1 btnSize" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        42
                                    </button>
                                    <button class="sApkZm SkhBL1 btnSize" onclick="changeSize(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        43
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Chất liệu
                            </div>
                            <div class="col-8">
                                <div class="d-flex align-items-center j7HL5Q">
                                    <button class="sApkZm SkhBL1 btnChatLieu" onclick="changeChatLieu(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        Giấy
                                    </button>
                                    <button class="sApkZm SkhBL1 btnChatLieu" onclick="changeChatLieu(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        Báo
                                    </button>
                                    <button class="sApkZm SkhBL1 btnChatLieu" onclick="changeChatLieu(this)" aria-label="Đen" aria-disabled="false"
                                            fdprocessedid="wb3xko">
                                        Xi măng
                                    </button>
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
                                            <button aria-label="Decrease" class="suQW3X" fdprocessedid="yi4z8l">
                                                -
                                            </button>
                                            <input class="suQW3X u00pLG" type="text" role="spinbutton"
                                                   aria-live="assertive" aria-valuenow="1" value="1"
                                                   fdprocessedid="720z0c"><span aria-live="polite" class="Bf9ap6">Số lượng 1</span>
                                            <button aria-label="Increase" class="suQW3X" fdprocessedid="qikb1a">
                                                +
                                            </button>
                                        </div>
                                    </div>
                                    <div>240 sản phẩm có sẵn</div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-4">
                                Mô tả
                            </div>
                            <div class="col-8">
                                <div class="d-flex align-items-center">
                                    [ Siêu rẻ + hình thật] Áo thun trơn form ÔM babytee đủ màu basic chất liệu thun con giãn 4 chiều fit dáng siêu đẹp
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12">
                        <div class="text-center">
                            <button type="button" class="btn btn-danger">Thêm vào giỏ hàng</button>
                            <button type="button" class="btn btn-danger">Mua ngay</button>
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

    window.onload = function () {
        $.ajax({
            type: "GET",
            url: "/home/rest/" + id,
            success: function (response) {
                console.log(response)
                if (response.sanPham) {

                    // $('#tenSP').val(response.sanPham.tenSP);
                    // $('#ma').val(response.sanPham.ma);
                    // $('#moTa').val(response.sanPham.moTa);
                    // $('#hinhAnh').val(response.sanPham.hinhAnh ? response.sanPham.hinhAnh.id : "");
                    // $('#thuongHieu').val(response.sanPham.thuongHieu ? response.sanPham.thuongHieu.id : "");
                    // $('#phanLoai').val(response.sanPham.phanLoai ? response.sanPham.phanLoai.id : "");
                    // if (response.sanPham.hinhAnh) {
                    //     document.getElementById("preview-anh1").src = '../../../uploads/' + response.sanPham.hinhAnh.anh1;
                    //     document.getElementById("preview-anh2").src = '../../../uploads/' + response.sanPham.hinhAnh.anh2;
                    //     document.getElementById("preview-anh3").src = '../../../uploads/' + response.sanPham.hinhAnh.anh3;
                    // }
                }
                if (response.chiTietSanPham) {
                    chiTietSanPham = response.chiTietSanPham
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    function changeMauSac(button) {
        $('.mauSac').removeClass("checked");
        $(button).addClass("checked");
    }

    function changeSize(button) {
        console.log(button)
        $('.btnSize').removeClass("checked");
        $(button).addClass("checked");
    }

    function changeChatLieu(button) {
        console.log(button)
        $('.btnChatLieu').removeClass("checked");
        $(button).addClass("checked");
    }
</script>
</html>

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
    <style>
        .form-check-input:checked, .form-check-input[type=checkbox]:indeterminate {
            background-color: #ff3e1d !important;
            border-color: #ff3e1d !important;
            box-shadow: 0 2px 4px 0 rgba(255, 105, 105, 0.4) !important;
        }
    </style>
</head>

<body>
<jsp:include page="../quang-ba/header.jsp"></jsp:include>
<section>
    <div class="container mt-4">
        <h4 class="fw-bold py-3 m-0">
            <svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 24 24"
                 style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;">
                <path d="M4 6h2v2H4zm0 5h2v2H4zm0 5h2v2H4zm16-8V6H8.023v2H18.8zM8 11h12v2H8zm0 5h12v2H8z"></path>
            </svg>
            <span class="">Danh sách hóa đơn</span>
        </h4>
        <section class="list-product shopee-search-item-result mb-3">
            <fieldset class="shopee-sort-bar" style="border: 0px;">
                <legend style="display: none;"></legend>
                <div class="shopee-sort-bar__label">Tìm kiếm theo</div>
                <div class="shopee-sort-by-options">
                    <section class="shopee-sort-by-options__option-group">
                        <button aria-label=""
                                onclick="orderBy(this, -1)" aria-pressed="false"
                                class="shopee-sort-by-options__option shopee-sort-by-options__option--selected">
                            <span aria-hidden="true">Xem tất cả</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 9)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Mới tạo</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 3)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Chờ thanh toán</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 0)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Chờ xác nhận</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 1)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Đã xác nhận</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 5)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Đang giao hàng</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 8)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Đã hủy</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 6)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Vận chuyển hoàn tất</span></button>
                        <button aria-label=""
                                onclick="orderBy(this, 10)" aria-pressed="false"
                                class="shopee-sort-by-options__option">
                            <span aria-hidden="true">Đã hoàn tất</span></button>
                    </section>
                </div>
            </fieldset>
        </section>

        <section>
            <div class="row" id="listHoaDon">
            </div>
        </section>
    </div>
</section>
<jsp:include page="../quang-ba/footer.jsp"></jsp:include>

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

    function orderBy(button, type) {
        $('.shopee-sort-by-options__option').removeClass('shopee-sort-by-options__option--selected');
        $(button).addClass('shopee-sort-by-options__option--selected');
        callDataHoaDon(type);
    }

    window.onload = function () {
        callDataHoaDon(-1);
    }

    function callDataHoaDon(trangThai) {
        $.ajax({
            type: "GET",
            url: "/ban-hang-online/rest/list-hoa-don?trangThai=" + trangThai,
            success: function (response) {
                console.log(response)
                if (response) {
                    loadHoaDon(response);
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }
    function formatDateTime(dateTimeStr) {
        let date = new Date(dateTimeStr);
        let options = {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            hour12: false
        };
        return date.toLocaleDateString('en-GB', options).replace(',', '');
    }
    function loadHoaDon(listHoaDon) {
        let html = ""
        if (listHoaDon.length !== 0) {
            listHoaDon.forEach(el => {
                html += `
                <div class="col-sm-6 col-md-4 col-lg-3 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">` + el.ma + `</h5>
                            <div class="card-text">
                                <div class="row">
                                    <div class="col-5">
                                        <p>Ngày tạo:</p>
                                    </div>
                                    <div class="col-7">
                                        <p>` + formatDateTime(el.ngayTao) + `</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-5">
                                        <p>Trạng thái:</p>
                                    </div>
                                    <div class="col-7">
                                        <p>` + switchTrangThai(el.trangThai) + `</p>
                                    </div>
                                </div>
                            </div>
                            <div class="w-100 text-center">
                                <a href="/ban-hang-online/hoa-don-detail?id=` + el.id + `" class="btn btn-danger">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
            `
            })
        } else {
            html = `
                <div class="w-100 text-center"><h4>Không có hóa đơn 🤷‍♂️🤷‍♀️</h4></div>
            `
        }

        $('#listHoaDon').html(html)
    }

    function switchTrangThai(trangThai) {
        switch (trangThai) {
            case 0: return "Đang chờ";
            case 1: return "Đã xác nhận";
            case 2: return "Đã thanh toán";
            case 3: return "Chờ thanh toán";
            case 4: return "Chờ vẫn chuyển";
            case 5: return "Đang vận chuyển";
            case 6: return "Vận chuyển hoàn tất";
            case 7: return "Giao trễ";
            case 8: return "Đã hủy";
            case 9: return "Mới tạo";
            case 10: return "Hoàn tất";
            default: return "";
        }
    }

</script>
</html>

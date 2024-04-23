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
<section id="content" class="mt-4" style="background-color: #f5f5f9;">
    <section class="container-fluid">
        <h4 class="fw-bold py-3 mb-4">Giỏ hàng</h4>
        <div class="row" style="display: none" id="gioHangShow">
            <div class="col-8">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div class="card-title w-100">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="mb-0">Danh sách sản phẩm</h5>
                                <span>
                                    <button class="btn btn-danger checkStatus" onclick="deleteProduct()">Xóa sản phẩm</button>
                                    <button class="btn btn-danger checkStatus" onclick="updateProduct()">Sửa số lượng</button>
                                    <a href="/san-pham" class="btn btn-danger checkStatus">Mua Hàng</a>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive text-nowrap">
                        <table class="table">
                            <thead>
                            <tr>
                                <th><input class="form-check-input" type="checkbox" id="checkAll" onchange="checkAll(this)" type="checkbox"/></th>
                                <th>Ảnh</th>
                                <th>Tên sản phẩm</th>
                                <th>Màu sắc</th>
                                <th>Kích cỡ</th>
                                <th>Chất liệu</th>
                                <th>Giá(VNĐ)</th>
                                <th colspan="2">Sl Mua</th>
                            </tr>
                            </thead>
                            <tbody class="table-border-bottom-2" id="listChiTietSanPham">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">Hóa đơn</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="divider">
                                <div class="divider-text">Thông tin khách hàng</div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label" for="tenNguoiNhan">Tên người nhận</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="tenNguoiNhan"
                                           placeholder="Nhập thông tin"/>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label" for="soDienThoai">Số điện thoại</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="soDienThoai"
                                           placeholder="Nhập thông tin"/>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label" for="email">Email</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="email"
                                           placeholder="Nhập thông tin"/>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label" for="diaChi">Địa chỉ</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="diaChi"
                                           placeholder="Nhập thông tin"/>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label" for="moTa">Mô tả</label>
                                <div class="col-sm-7">
                                    <textarea type="text" class="form-control" id="moTa"
                                              placeholder="Nhập thông tin"></textarea>
                                </div>
                            </div>

                            <div class="divider">
                                <div class="divider-text">Thông tin hóa đơn</div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label">Trạng thái</label>
                                <div class="col-sm-7">
                                    <span>Chưa thanh toán</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label">Đơn giá</label>
                                <div class="col-sm-7">
                                    <span id="donGia">0</span><span>VNĐ</span>
                                </div>
                            </div>
                            <c:if test="${not empty listKM}">
                                <div class="row mb-3">
                                    <label class="col-sm-5 col-form-label">Mã giảm giá</label>
                                    <div class="col-sm-7">
                                        <span class="mini-vouchers__vouchers flex flex-auto flex-no-overflow">
                                            <span id="renderMaGiamGia">
<%--                                                <div class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover">--%>
<%--                                                    <div class=""><span--%>
<%--                                                            class="voucher-promo-value voucher-promo-value--percent">20</span><span--%>
<%--                                                            class="voucher-promo-label">%</span><span--%>
<%--                                                            class="voucher-promo-label voucher-promo-label--off">GIẢM</span></div>--%>
<%--                                                </div>--%>
                                            </span>
                                            <span>
                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                                        data-bs-target="#ModalChonMaGiamGia">Chọn</button>
                                            </span>
                                        </span>

                                    </div>
                                </div>
                            </c:if>
                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label">Tiền giảm</label>
                                <div class="col-sm-7">
                                    <span id="tienGiam">0</span><span>VNĐ</span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label">Thành tiền</label>
                                <div class="col-sm-7">
                                    <span id="tongTien">0</span><span>VNĐ</span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-5 col-form-label">Phương thức thanh
                                    toán</label>
                                <div class="col-sm-7">
                                    <div class="form-check">
                                        <input
                                                name="default-radio-1"
                                                class="form-check-input"
                                                type="radio"
                                                value=""
                                                id="defaultRadio1"
                                        />
                                        <label class="form-check-label" for="defaultRadio1"> Thanh toán khi nhận
                                            hàng </label>
                                    </div>
                                    <div class="form-check">
                                        <input
                                                name="default-radio-1"
                                                class="form-check-input"
                                                type="radio"
                                                value=""
                                                id="defaultRadio2"
                                                checked
                                        />
                                        <label class="form-check-label" for="defaultRadio2"> Thanh toán online </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 text-center">
                                    <button type="button" class="btn btn-danger">Tạo hóa đơn</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<%--Chon ma giam gia--%>
<div class="modal fade" id="ModalChonMaGiamGia" tabindex="-1" aria-labelledby="exampleModalLabelMauSac"
     aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">Chọn Mã giảm giá</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <span class="mini-vouchers__vouchers flex flex-auto flex-no-overflow">
                    <c:forEach items="${listKM}" var="item" varStatus="loop">
                        <div onclick="renderSale(this)" class="voucher-ticket voucher-ticket--VN voucher-ticket--seller-mini-solid mini-voucher-with-popover"
                             hinhThucGiam="${item.hinhThucGiamGia}"
                             giaTriGiam="${item.giaTriGiam}"
                             ngayKetThuc="${item.ngayKetThuc}"
                             ten="${item.ten}"
                             value="${item.id}"
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
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

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
    let khuyenMaiSelect = {
        id: "",
        hinhThucGiamGia: 1,
        giaTriGiam: 0,
    }

    const tenNguoiNhan = $('#tenNguoiNhan');
    const soDienThoai = $('#soDienThoai');
    const email = $('#email');
    const diaChi = $("#diaChi");
    const moTa = $("#moTa");
    const tienGiam = $('#tienGiam');

    window.onload = function () {
        loadChiTietSanPham();
    };

    function validateFields() {
        const tenNguoiNhanVal = tenNguoiNhan.val();
        const soDienThoaiVal = soDienThoai.val();
        const emailVal = email.val();
        const diaChiVal = diaChi.val();
        const moTaVal = moTa.val();

        if (!tenNguoiNhanVal.trim()) {
            alert("Vui lòng nhập tên người nhận.");
            return false;
        }

        if (!soDienThoaiVal.trim()) {
            alert("Vui lòng nhập số điện thoại.");
            return false;
        }

        if (!emailVal.trim()) {
            alert("Vui lòng nhập địa chỉ email.");
            return false;
        }

        if (!diaChiVal.trim()) {
            alert("Vui lòng nhập địa chỉ.");
            return false;
        }

        if (!moTaVal.trim()) {
            alert("Vui lòng nhập mô tả.");
            return false;
        }

        return true;
    }

    function thanhToan() {
        // if (validateFields()) {
            let kt = confirm("Bạn có chắc chắn muốn thanh toán không?");
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
            }
        // }
    }

    function renderSale(sale) {
        const listSale = $('.voucher-ticket');
        const saleSelect = $(sale);

        var hinhThucGiam = saleSelect.attr("hinhThucGiam");
        var giaTriGiam = saleSelect.attr("giaTriGiam");
        var id = saleSelect.attr("value");

        khuyenMaiSelect.giaTriGiam = parseInt(giaTriGiam);
        khuyenMaiSelect.id = id;
        khuyenMaiSelect.hinhThucGiamGia = parseInt(hinhThucGiam);

        $('#renderMaGiamGia').html(saleSelect.clone());

        listSale.removeClass('checked');
        saleSelect.addClass('checked');

        fillTongTien();
    }

    const loadChiTietSanPham = () => {
        const tableProduct = document.getElementById("listChiTietSanPham");
        $.ajax({
            type: "GET",
            url: "/ban-hang-online/rest/list-gio-hang",
            success: function (response) {
                let index = 0;
                let html = '';
                if (response && response.length != 0) {
                    $('#gioHangShow').show();
                    response.forEach(el => {
                        index++;
                        html += `<tr item='` + JSON.stringify(el) + `'>
                                <td><input class="form-check-input checkStatus" onchange="fillTongTien()" type="checkbox" name="chiTietSanPham" value="` + el.chiTietSanPham.id + `" /></td>
                                <td align="center">
                                    <img src="../../../uploads/` + (el.chiTietSanPham.hinhAnh ? el.chiTietSanPham.hinhAnh.anh1 : "") + `" width="100" height="100"
                                         style="border-radius:50% 50% 50% 50%">

                                </td>
                                <td>` + (el.chiTietSanPham.sanPham ? el.chiTietSanPham.sanPham.tenSP : "") + `</td>
                                <td>` + (el.chiTietSanPham.mauSac ? el.chiTietSanPham.mauSac.ten : "") + `</td>
                                <td>` + (el.chiTietSanPham.kichThuoc ? el.chiTietSanPham.kichThuoc.size : "") + `</td>
                                <td>` + (el.chiTietSanPham.chatLieu ? el.chiTietSanPham.chatLieu.tenChatLieu : "") + `</td>
                                <td><strong>` + el.chiTietSanPham.donGia + `</strong></td>
                                <td colspan="2">
                                    <input class="form-control" type="number" onchange="validateInputSoLuong(this)" placeholder="Chọn số lượng" min="1" value="` + el.soLuong + `" />
                                </td>
                            </tr>
                            `
                    })
                    tableProduct.innerHTML = html;
                } else {
                    $('#gioHangShow').hide();
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    const fillTongTien = () => {
        let tongTien = 0;
        $('#listChiTietSanPham').find('tr').each(function () {
            const firstCheckbox = $(this).find('input[type="checkbox"]:first');
            if (firstCheckbox.is(':checked')) {
                const lastInput = $(this).find('input:last');
                const lastInputValue = lastInput.val();
                let product = JSON.parse($(this).attr('item'));

                tongTien += parseInt(lastInputValue) * product.chiTietSanPham.donGia;
            } else {
                $('#checkAll').prop('checked', false);
            }
        });

        $('#donGia').text(tongTien)

        if (khuyenMaiSelect.id) {
            if (khuyenMaiSelect.hinhThucGiamGia == 1) {
                tienGiam.text(tongTien * (khuyenMaiSelect.giaTriGiam) / 100);
                tongTien = tongTien * (100 - khuyenMaiSelect.giaTriGiam) / 100
            } else {
                tienGiam.text(khuyenMaiSelect.giaTriGiam);
                tongTien = tongTien - khuyenMaiSelect.giaTriGiam;
                if (tongTien < 0) {
                    tongTien = 0;
                }
            }
        } else {
            tienGiam.val(0);
        }
        $('#tongTien').text(tongTien);
    }

    const deleteProduct = () => {
        let productShopping = []
        let kt = confirm("Bạn có chắc chắn muốn sản phẩm khỏi giỏ hàng không?");
        if (kt == true) {
            let check = true;
            let checkRecordProduct = false;
            $('#listChiTietSanPham').find('tr').each(function () {
                const firstCheckbox = $(this).find('input[type="checkbox"]:first');
                if (firstCheckbox.is(':checked')) {
                    checkRecordProduct = true;
                    let product = JSON.parse($(this).attr('item'));
                    productShopping.push(product.id)
                }
            });
            if (!checkRecordProduct) {
                alert("Bạn phải chọn ít nhất một sản phẩm");
                return;
            }
            if (check) {
                $.ajax({
                    type: "POST",
                    url: "/ban-hang-online/rest/delete-gio-hang",
                    contentType: "application/json",
                    data: JSON.stringify(productShopping),
                    success: function (response) {
                        alert("Xóa sản phẩm khỏi giỏ hàng thành công")
                        location.reload();
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        alert("Lỗi hệ thống !!!")
                    }
                });
            }
        }
    }

    const updateProduct = () => {
        let productShopping = []
        let kt = confirm("Bạn có chắc chắn muốn sửa số lượng sản phẩm không?");
        if (kt == true) {
            let check = true;
            let checkRecordProduct = false;
            $('#listChiTietSanPham').find('tr').each(function () {
                const firstCheckbox = $(this).find('input[type="checkbox"]:first');
                if (firstCheckbox.is(':checked')) {
                    checkRecordProduct = true;
                    let product = JSON.parse($(this).attr('item'));

                    const lastInput = $(this).find('input:last');
                    const lastInputValue = lastInput.val();

                    productShopping.push({
                        chiTietSanPham: product.chiTietSanPham.id,
                        soLuong: parseInt(lastInputValue),
                        donGia: product.chiTietSanPham.donGia
                    })
                }
            });
            if (!checkRecordProduct) {
                alert("Bạn phải chọn ít nhất một sản phẩm");
                return;
            }
            if (check) {
                $.ajax({
                    type: "POST",
                    url: "/ban-hang-online/rest/update-gio-hang",
                    contentType: "application/json",
                    data: JSON.stringify(productShopping),
                    success: function (response) {
                        alert("Sửa số lượng sản phẩm thành công")
                        location.reload();
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        alert("Lỗi hệ thống !!!")
                    }
                });
            }
        }
    }

    const checkAll = (checkbox) => {
        $('#listChiTietSanPham').find('tr').each(function () {
            const firstCheckbox = $(this).find('input[type="checkbox"]:first');
            firstCheckbox.prop('checked', $(checkbox).is(':checked'));
        });
        fillTongTien();
    }

    // validate số lượng
    const validateInputSoLuong = (input) => {
        const soLuong = parseInt(input.value, 10);
        if (isNaN(soLuong) || soLuong <= 0) {
            alert("Vui lòng nhập vào một số nguyên dương.");
            input.value = 1;
        }
        fillTongTien();
    }
</script>
</html>

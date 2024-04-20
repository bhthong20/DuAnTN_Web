<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="shortcut icon" href="../../images/favicon.png"/>
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

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
    <style>
        .card.position-sticky {
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        body {
            overflow: initial !important;
        }
    </style>
</head>
<body>
<section>
    <div class="card position-sticky">
        <div class="card-title">
            <div class="d-flex align-items-center justify-content-between">
                <h3 class="p-4 m-0">Bán hàng tại quầy</h3>
                <span> <button class="btn btn-primary mx-4" onclick="createHoaDon()">Thêm HD</button></span>
            </div>
        </div>
        <div class="card-body">
            <div>
                <ul class="nav nav-tabs border" id="list-hoa-don" role="tablist">
                </ul>
            </div>
        </div>
    </div>

    <section style="display: none" id="chiTietHoaDon">
        <div class="flex-grow-1 ">
            <h4 class="fw-bold py-3 my-4">Thông tin hóa đơn</h4>

            <!-- Basic Layout -->
            <div class="row">
                <div class="col-xl">
                    <div class="card mb-4">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="mb-0">Thông tin hóa đơn</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label" for="maHoaDon">Mã hóa đơn</label>
                                <input type="text" class="form-control" disabled id="maHoaDon"/>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="maHoaDon">Ngày tạo</label>
                                <input type="text" class="form-control" disabled id="ngayTao"/>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="statusHoaDon">Trạng thái</label>
                                <input type="text" class="form-control" disabled id="statusHoaDon"/>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="tenNguoiNhan">Tên người nhận</label>
                                <input type="text" class="form-control checkStatus" id="tenNguoiNhan"/>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="soDienThoai">Số điện thoại</label>
                                <div class="input-group input-group-merge">
                                    <input type="text" id="soDienThoai" class="form-control checkStatus"/>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="ghiChu">Ghi chú</label>
                                <textarea
                                        id="ghiChu"
                                        class="form-control checkStatus"
                                ></textarea>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="tienMat">Tiền mặt</label>
                                <input type="number" id="tienMat" class="form-control checkStatus phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="chuyenKhoan">Chuyển khoản</label>
                                <input type="number" id="chuyenKhoan" class="form-control checkStatus phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="tongTien">Tổng tiền</label>
                                <input type="number" disabled id="tongTien" class="form-control phone-mask"
                                />
                            </div>
                            <button onclick="clearFormHoaDon()" class="btn btn-primary checkStatus">Clear form</button>
                            <button onclick="luuHoaDon(0)" class="btn btn-primary checkStatus">Lưu</button>
                            <button onclick="luuHoaDon(2)" class="btn btn-primary checkStatus" id="btnThanhToan">Thanh toán</button>
                            <button onclick="tuChoiHoaDon()" class="btn btn-primary checkStatus">Từ chối hóa đơn</button>
                        </div>
                    </div>
                </div>
                <div class="col-xl">
                    <div class="card mb-4">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="mb-0">Thông tin khách hàng</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label class="form-label" for="maKhachHang">Mã khách hàng</label>
                                <input type="text" id="maKhachHang" disabled placeholder="Tự động nhập"
                                       class="form-control phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="tenKhachHang">Họ tên</label>
                                <input type="text" id="tenKhachHang" disabled class="form-control phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="gioiTinh">Giới tính</label>
                                <select class="form-select" disabled id="gioiTinh">
                                    <option selected>Choose...</option>
                                    <option value="true">Nam</option>
                                    <option value="false">Nữ</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="email">Email</label>
                                <input type="text" id="email" disabled class="form-control phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="sdtKhachHang">Số điện thoại</label>
                                <input type="text" id="sdtKhachHang" disabled class="form-control phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="ngaySinh">Ngày sinh</label>
                                <input type="date" id="ngaySinh" disabled class="form-control phone-mask"
                                />
                            </div>
                            <button onclick="clearFormKhachHang()" class="btn btn-primary checkStatus">KH mới</button>
                            <button class="btn btn-primary checkStatus" onclick="khachHangLaNguoiNhan()">KH là người nhận
                            </button>
                            <button class="btn btn-primary checkStatus" onclick="openModalKhachHang()"
                                    data-bs-toggle="modal" data-bs-target="#modalDanhSachKhachHang">Chọn
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card mt-4">
            <div class="card-title">
                <div class="d-flex align-items-center justify-content-between">
                    <h3 class="p-4 m-0">Thông tin sản phẩm trong hóa đơn</h3>
                    <span>
                        <button class="btn btn-primary checkStatus" onclick="deleteProduct()">Xóa sản phẩm</button>
                        <button class="btn btn-primary checkStatus" onclick="updateSoLuong()">Sửa số lượng sản phẩm</button>
                        <button class="btn btn-primary checkStatus me-4" onclick="getDanhSachSanPham()"
                                data-bs-toggle="modal" data-bs-target="#modalDanhSachSanPham">Thêm sản phẩm</button>
                    </span>
                </div>
            </div>
            <div class="card-body">
                <div>

                    <div class="table-responsive text-nowrap" style="max-height: 600px;">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Mã</th>
                                <th>Ảnh</th>
                                <th>Tên sản phẩm</th>
                                <th>Màu sắc</th>
                                <th>Kích cỡ</th>
                                <th>Chất liệu</th>
                                <th>Số lượng</th>
                                <th>Đơn giá</th>
                                <th colspan="2">Sl Mua</th>
                            </tr>
                            </thead>
                            <tbody class="table-border-bottom-2" id="listHoaDonSanPham">
                            <!-- Thêm dữ liệu sản phẩm vào đây -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

<%-- modalDanhSachSanPham --%>
<div class="modal fade" id="modalDanhSachSanPham" tabindex="-1" aria-labelledby="modalDanhSachSanPhamLabel"
     aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-xl modal-dialog-centered" style="min-width: 1400px;">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title">Danh sách sản phẩm</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <div class="row">
                        <div class="col-xl">
                            <div class="mb-3">
                                <label class="form-label" for="maSanPhamSearch">Mã sản phẩm</label>
                                <input type="text" id="maSanPhamSearch" class="form-control phone-mask"
                                />
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="tenSanPhamSearch">Tên sản phẩm</label>
                                <input type="text" id="tenSanPhamSearch" class="form-control phone-mask"
                                />
                            </div>
                        </div>
                        <div class="col-xl">
                            <div class="mb-3">
                                <label class="form-label" for="mauSacSearch">Màu sắc</label>
                                <select class="form-select" id="mauSacSearch">
                                    <option selected value="">Lựa chọn</option>
                                    <c:forEach items="${listMS}" var="item">
                                        <option value="${item.id}">${item.ten}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="sizeSearch">Kích cỡ</label>
                                <select class="form-select" id="sizeSearch">
                                    <option selected value="">Lựa chọn</option>
                                    <c:forEach items="${listKT}" var="item">
                                        <option value="${item.id}">${item.size}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-xl">
                            <div class="mb-3">
                                <label class="form-label" for="chatLieuSearch">Chất liệu</label>
                                <select class="form-select" id="chatLieuSearch">
                                    <option selected value="">Lựa chọn</option>
                                    <c:forEach items="${listCL}" var="item">
                                        <option value="${item.id}">${item.tenChatLieu}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="hinhAnhSearch">Hình ảnh</label>
                                <select class="form-select" id="hinhAnhSearch">
                                    <option selected value="">Lựa chọn</option>
                                    <c:forEach items="${listHA}" var="item">
                                        <option value="${item.id}">${item.ten}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <span class="text-center"><button id="btnSearchSanPham" onclick="searchSanPham()" type="button"
                                                          class="btn btn-primary">Search</button></span>
                    </div>
                </div>
                <div class="table-responsive text-nowrap" style="max-height: 600px;">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Mã</th>
                            <th>Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Màu sắc</th>
                            <th>Kích cỡ</th>
                            <th>Chất liệu</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th colspan="2">Sl Mua</th>
                        </tr>
                        </thead>
                        <tbody class="table-border-bottom-2" id="listProduct">
                        <!-- Thêm dữ liệu sản phẩm vào đây -->
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button id="btnMuaHang" onclick="muaHang()" type="button" class="btn btn-primary">Mua hàng</button>
            </div>
        </div>
    </div>
</div>

<%-- modalDanhSachKhachHang --%>
<div class="modal fade" id="modalDanhSachKhachHang" tabindex="-1" aria-labelledby="modalDanhSachKhachHangLabel"
     aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-xl modal-dialog-centered" style="min-width: 1400px;">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title">Danh sách khách hàng</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="table-responsive text-nowrap" style="max-height: 600px;">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Mã</th>
                            <th>Tài khoản</th>
                            <th>Tên</th>
                            <th>Giới tính</th>
                            <th>Email</th>
                            <th>Std</th>
                            <th>Ngày sinh</th>
                            <th colspan="2">Lựa chọn</th>
                        </tr>
                        </thead>
                        <tbody class="table-border-bottom-2" id="tableKhachHang">
                        <!-- Thêm dữ liệu khách hàng vào đây -->
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
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

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script>
    // form thông tin hóa đơn
    var hoaDon = {};
    var sanPhamAddHoaDons = []
    const maHoaDon = $('#maHoaDon');
    const ngayTao = $('#ngayTao');
    const trangThai = $('#statusHoaDon');
    const tenNguoiNhan = $('#tenNguoiNhan');
    const soDienThoai = $('#soDienThoai');
    const ghiChu = $('#ghiChu');
    const tienMat = $('#tienMat');
    const chuyenKhoan = $('#chuyenKhoan');
    const tongTien = $('#tongTien');
    // form Thông tin khách hàng
    var khachHang = {
        hoTen: "",
        gioiTinh: "",
        email: "",
        sdt: "",
        ngaySinh: ""
    };

    const maKhachHang = $('#maKhachHang');
    const tenKhachHang = $('#tenKhachHang');
    const gioiTinh = $('#gioiTinh');
    const sdtKhachHang = $('#sdtKhachHang');
    const emailKhachHang = $('#email')
    const ngaySinh = $('#ngaySinh');

    var url = window.location.href;

    var urlParams = new URLSearchParams(new URL(url).search);

    var id = urlParams.get("id");

    let productShopping = [];

    const clearFormHoaDon = () => {
        tenNguoiNhan.val("");
        soDienThoai.val("");
        ghiChu.val("");
        tienMat.val("");
        chuyenKhoan.val("");
    }

    const clearFormKhachHang = () => {
        maKhachHang.val("");
        tenKhachHang.val("");
        gioiTinh.val("");
        sdtKhachHang.val("");
        ngaySinh.val("");
        emailKhachHang.val("");

        tenKhachHang.removeAttr('disabled');
        gioiTinh.removeAttr('disabled');
        sdtKhachHang.removeAttr('disabled');
        ngaySinh.removeAttr('disabled');
        emailKhachHang.removeAttr('disabled');

        khachHang = {
            hoTen: "",
            gioiTinh: "",
            email: "",
            sdt: "",
            ngaySinh: ""
        }
    }

    const getFormHoaDon = () => {
        tongTien.val(fillTongTien());
        hoaDon.tenNguoiNhan = tenNguoiNhan.val();
        hoaDon.sdt = soDienThoai.val();
        hoaDon.tienMat = tienMat.val();
        hoaDon.chuyenKhoan = chuyenKhoan.val();
        hoaDon.tongTien = tongTien.val();
        hoaDon.ghiChu = ghiChu.val();
    }

    const getFormKhachHang = () => {
        khachHang.hoTen = tenKhachHang.val();
        khachHang.gioiTinh = gioiTinh.val();
        khachHang.email = emailKhachHang.val();
        khachHang.sdt = sdtKhachHang.val();
        khachHang.ngaySinh = ngaySinh.val();
    }

    const getFormChiTietSanPham = () => {
        $('#listHoaDonSanPham').find('tr').each(function () {
            const lastInput = $(this).find('input:last');
            checkRecordProduct = true;
            let product = JSON.parse($(this).attr('item'));
            const lastInputValue = lastInput.val();
            if (product.chiTietSanPham.soLuongTon + product.soLuong < parseInt(lastInputValue)) {
                alert(`Sản phẩm ` + product.chiTietSanPham.ma + ` không đủ số lượng bán`);
                check = false;
            } else {
                sanPhamAddHoaDons.push({
                    hoaDonId: id,
                    sanPhamId: product.chiTietSanPham.id,
                    quantity: parseInt(lastInputValue),
                    donGia: product.chiTietSanPham.donGia
                })
            }
        });
    }

    const validateForm = () => {
        let check = true;
        // Kiểm tra trường tenNguoiNhan
        if (!tenNguoiNhan.val()) {
            check = false;
        }
        // Kiểm tra trường soDienThoai
        if (!soDienThoai.val()) {
            check = false;
        }
        // Kiểm tra trường ghiChu
        if (!ghiChu.val()) {
            check = false;
        }
        // Kiểm tra trường tienMat
        if (!tienMat.val()) {
            check = false;
        }
        // Kiểm tra trường chuyenKhoan
        if (!chuyenKhoan.val()) {
            check = false;
        }
        // Kiểm tra trường tongTien
        if (!tongTien.val()) {
            check = false;
        }
        // Kiểm tra trường tenKhachHang
        if (!tenKhachHang.val()) {
            check = false;
        }
        // Kiểm tra trường gioiTinh
        if (!gioiTinh.val()) {
            check = false;
        }
        // Kiểm tra trường sdtKhachHang
        if (!sdtKhachHang.val()) {
            check = false;
        }
        // Kiểm tra trường emailKhachHang
        if (!emailKhachHang.val()) {
            check = false;
        }
        // Kiểm tra trường ngaySinh
        if (!ngaySinh.val()) {
            check = false;
        }
        // Kết thúc kiểm tra, check sẽ là true nếu tất cả các trường đều có dữ liệu, ngược lại là false
        if (!check) {
            alert("Yêu cầu nhập đủ thông tin");
            return false;
        }

        if (parseInt(tienMat.val()) + parseInt(chuyenKhoan.val()) < parseInt(tongTien.val())) {
            alert("Thiếu tiền");
            return false;
        }
        if (parseInt(tienMat.val()) + parseInt(chuyenKhoan.val()) > parseInt(tongTien.val())) {
            alert("Thừa tiền");
            return false;
        }
        return true;
    }

    const luuHoaDon = (status) => {
        if (!validateForm()) {
            return;
        }
        let kt = confirm(status == 0 ? "Bạn có chắc chắn muốn lưu hóa đơn không?" : status == 2 ? "Bạn có chắc chắn muốn thanh toán hóa đơn không?" : "");
        if (kt == true) {
            hoaDon.trangThai = status;
            getFormHoaDon();
            getFormKhachHang();
            getFormChiTietSanPham();

            const requestBody = {
                sanPhamAddHoaDons: sanPhamAddHoaDons,
                hoaDon: hoaDon,
                khachHang: khachHang
            }

            $.ajax({
                type: "POST",
                url: "/ban-hang-tai-quay/rest/luu-hoa-don",
                contentType: "application/json",
                data: JSON.stringify(requestBody),
                success: function (response) {
                    alert(status == 0 ? "Lưu hóa đơn thành công" : status == 2 ? "Thanh toán hóa đơn thành công" : "")
                    location.reload();
                },
                error: function (xhr, status, error) {
                    console.log(xhr.responseText);
                    alert("Lỗi hệ thống !!!")
                }
            });
        }
    }

    const tuChoiHoaDon = () => {
        let kt = confirm("Bạn có chắc chắn từ chối hóa đơn không?");
        if (kt == true) {
            $('#listHoaDonSanPham').find('tr').each(function () {
                let product = JSON.parse($(this).attr('item'));
                productShopping.push(product.id)
            });
            $.ajax({
                type: "POST",
                url: "/ban-hang-tai-quay/rest/tu-choi-hoa-don/" + hoaDon.id,
                contentType: "application/json",
                data: JSON.stringify(productShopping),
                success: function (response) {
                    alert("Từ chối hóa đơn thành công")
                    location.reload();
                },
                error: function (xhr, status, error) {
                    console.log(xhr.responseText);
                    alert("Lỗi hệ thống !!!")
                }
            });
            productShopping = []
        }
    }

    const openModalKhachHang = () => {
        const tableKhachHang = document.getElementById("tableKhachHang");
        let html = '';
        $.ajax({
            type: "GET",
            url: "/ban-hang-tai-quay/rest/get-all-khach-hang",
            success: function (response) {
                let index = 0;
                response.forEach(el => {
                    index++;
                    html += `<tr item='` + JSON.stringify(el) + `'>
                                <td>` + index + `</td>
                                <td>` + (el.ma) + `</td>
                                <td>` + el.taiKhoan + `</td>
                                <td>` + (el.hoTen) + `</td>
                                <td>` + (el.gioiTinh ? "Nam" : "Nữ") + `</td>
                                <td>` + (el.email) + `</td>
                                <td>` + (el.sdt) + `</td>
                                <td>` + el.ngaySinh + `</td>
                                <td colspan="2">
                                    <button class="btn btn-primary" onclick='chonKhachHang(` + JSON.stringify(el) + `)' >Chọn</button>
                                </td>
                            </tr>
                            `
                })
                tableKhachHang.innerHTML = html;
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    const chonKhachHang = (khachHang) => {
        let kt = confirm("Bạn có chắc chắn muốn chọn khách hàng không?");
        if (kt == true) {
            this.khachHang = khachHang;
            tenKhachHang.attr('disabled', 'disabled');
            gioiTinh.attr('disabled', 'disabled');
            sdtKhachHang.attr('disabled', 'disabled');
            ngaySinh.attr('disabled', 'disabled');
            emailKhachHang.attr('disabled', 'disabled');
            fillKhachHang();
            var myModalEl = document.getElementById('modalDanhSachKhachHang');
            var modal = bootstrap.Modal.getInstance(myModalEl)
            modal.hide();
            var backdrop = document.querySelector('.modal-backdrop');
            if (backdrop) {
                backdrop.remove();
            }
        }
    }

    const fillKhachHang = () => {
        if (khachHang) {
            maKhachHang.val(khachHang.ma);
            tenKhachHang.val(khachHang.hoTen);
            gioiTinh.val(khachHang.gioiTinh + "");
            sdtKhachHang.val(khachHang.sdt);
            ngaySinh.val(khachHang.ngaySinh);
            emailKhachHang.val(khachHang.email);
        }
    }

    const fillTrangThaiHoaDon = (trangThai) => {
        switch (trangThai) {
            case 0:
                return "Đang chờ";
            case 1:
                return "Đã xác nhận";
            case 2:
                return "Đã thanh toán";
            case 3:
                return "Chờ thanh toán";
            case 4:
                return "Chờ vận chuyển";
            case 5:
                return "Đang vận chuyển";
            case 6:
                return "Vẫn chuyển hoàn tất";
            case 7:
                return "Giao trễ";
            case 8:
                return "Đã hủy";
            default:
                return "";
        }
    }

    const fillTongTien = () => {
        let tongTien = 0;
        $('#listHoaDonSanPham').find('tr').each(function () {
            const lastInput = $(this).find('input:last');
            const lastInputValue = lastInput.val();
            let product = JSON.parse($(this).attr('item'));

            tongTien += parseInt(lastInputValue) * product.chiTietSanPham.donGia;
        });
        return tongTien;
    }

    const fillHoaDon = () => {
        maHoaDon.val(hoaDon.ma);
        ngayTao.val(hoaDon.ngayTao);
        trangThai.val(fillTrangThaiHoaDon(hoaDon.trangThai));
        tenNguoiNhan.val(hoaDon.tenNguoiNhan);
        soDienThoai.val(hoaDon.sdt);
        ghiChu.val(hoaDon.ghiChu);
        tienMat.val(hoaDon.tienMat);
        chuyenKhoan.val(hoaDon.chuyenKhoan);
        tongTien.val(fillTongTien());
    }

    const khachHangLaNguoiNhan = () => {
        getFormKhachHang();
        hoaDon.tenNguoiNhan = khachHang.hoTen;
        hoaDon.sdt = khachHang.sdt;
        fillHoaDon();
    }

    // lấy ra danh sách hóa đơn
    const getAllHoaDon = () => {
        const hoaDonHere = document.getElementById('list-hoa-don');
        let hoaDonItem = '';
        $.ajax({
            type: "GET",
            url: "/ban-hang-tai-quay/rest/danh-sach-hoa-don",
            success: function (response) {
                response.forEach(el => {
                    if (id && el.id == id) {
                        hoaDon = el;
                        if (hoaDon.loai == 1) {
                            alert("Đây không phải hóa đơn bán tại quầy.")
                            window.location.href = "/ban-hang-tai-quay";
                        }
                        if (el.khachHang) {
                            khachHang = el.khachHang;
                        } else {
                            khachHang = {
                                hoTen: "",
                                gioiTinh: "",
                                email: "",
                                sdt: "",
                                ngaySinh: ""
                            }
                        }
                        fillKhachHang();
                        fillHoaDon();
                    }
                    // thay đổi trạng thái
                    let active = id && el.id == id ? "bg-warning" : el.trangThai == 0 ? "bg-primary" : el.trangThai == 2 ? "bg-success" : "bg-danger"

                    hoaDonItem += '<li class="nav-item">' +
                        '<a class="nav-link text-white ' + (active) + '" href="/ban-hang-tai-quay?id=' + el.id + '" role="tab" >' + el.ma + '</a>' +
                        '</li>';
                });
                hoaDonHere.innerHTML = hoaDonItem;
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    // chọn checkbox mới cho sửa input
    function rowDisabledInput() {
        $('#listHoaDonSanPham').find('tr').each(function () {
            const firstCheckbox = $(this).find('input[type="checkbox"]:first');
            const lastInput = $(this).find('input:last');

            if (firstCheckbox.is(':checked')) {
                lastInput.prop('disabled', false);
            } else {
                lastInput.prop('disabled', true);
            }
        });
    }

    // xem chi tiết hóa đơn
    const findHoaDonById = () => {
        const tableProduct = document.getElementById("listHoaDonSanPham");
        if (id) {
            $.ajax({
                type: "GET",
                url: "/ban-hang-tai-quay/rest/hoa-don-chi-tiet?id=" + id,
                success: function (response) {
                    let index = 0;
                    let html = '';
                    response.forEach(el => {
                        index++;
                        html += `<tr item='` + JSON.stringify(el) + `'>
                                <td><input class="form-check-input checkStatus" onchange="rowDisabledInput()" type="checkbox" name="chiTietSanPham" value="` + el.chiTietSanPham.id + `" /></td>
                                <td>` + (el.chiTietSanPham ? el.chiTietSanPham.ma : "") + `</td>
                                <td align="center">
                                    <img src="../../../uploads/` + (el.chiTietSanPham.hinhAnh ? el.chiTietSanPham.hinhAnh.anh1 : "") + `" width="100" height="100"
                                         style="border-radius:50% 50% 50% 50%">

                                </td>
                                <td>` + (el.chiTietSanPham.sanPham ? el.chiTietSanPham.sanPham.tenSP : "") + `</td>
                                <td>` + (el.chiTietSanPham.mauSac ? el.chiTietSanPham.mauSac.ten : "") + `</td>
                                <td>` + (el.chiTietSanPham.kichThuoc ? el.chiTietSanPham.kichThuoc.size : "") + `</td>
                                <td>` + (el.chiTietSanPham.chatLieu ? el.chiTietSanPham.chatLieu.tenChatLieu : "") + `</td>
                                <td>` + el.chiTietSanPham.soLuongTon + `</td>
                                <td><strong>` + el.chiTietSanPham.donGia + `</strong></td>
                                <td colspan="2">
                                    <input class="form-control" disabled="true" type="number" onchange="validateInputSoLuong(this)" placeholder="Chọn số lượng" min="1" value="` + el.soLuong + `" />
                                </td>
                            </tr>
                            `
                    })
                    tableProduct.innerHTML = html;

                    tongTien.val(fillTongTien());

                    if (hoaDon.trangThai && (hoaDon.trangThai == 2 || hoaDon.trangThai == 8)) {
                        $(".checkStatus").attr('disabled', 'disabled')
                    }
                },
                error: function (xhr, status, error) {
                    console.log(xhr.responseText);
                }
            });
            document.getElementById('chiTietHoaDon').style.display = 'block'
        } else {
            document.getElementById('chiTietHoaDon').style.display = 'none'
        }
    }

    // mở modal lấy danh sách sản phẩm
    const getDanhSachSanPham = () => {
        const tableProduct = document.getElementById("listProduct");
        let html = '';
        $.ajax({
            type: "GET",
            url: "/ban-hang-tai-quay/rest/get-all-san-pham",
            success: function (response) {
                let index = 0;
                response.forEach(el => {
                    index++;
                    html += `<tr item='` + JSON.stringify(el) + `'>
                                <td><input class="form-check-input" type="checkbox" name="chiTietSanPham" value="` + el.id + `" /></td>
                                <td>` + (el ? el.ma : "") + `</td>
                                <td align="center">
                                    <img src="../../../uploads/` + (el.hinhAnh ? el.hinhAnh.anh1 : "") + `" width="100" height="100"
                                         style="border-radius:50% 50% 50% 50%">

                                </td>
                                <td>` + (el.sanPham ? el.sanPham.tenSP : "") + `</td>
                                <td>` + (el.mauSac ? el.mauSac.ten : "") + `</td>
                                <td>` + (el.kichThuoc ? el.kichThuoc.size : "") + `</td>
                                <td>` + (el.chatLieu ? el.chatLieu.tenChatLieu : "") + `</td>
                                <td>` + el.soLuongTon + `</td>
                                <td><strong>` + el.donGia + `</strong></td>
                                <td colspan="2">
                                    <input class="form-control" type="number" onchange="validateInputSoLuong(this)" placeholder="Chọn số lượng" min="1" value="1" />
                                </td>
                            </tr>
                            `
                })
                tableProduct.innerHTML = html;
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }

    const searchSanPham = () => {
        let maSanPhamSearch = $("#maSanPhamSearch").val();
        let tenSanPhamSearch = $('#tenSanPhamSearch').val();
        let mauSacSearch = $('#mauSacSearch').val();
        let kichCoSearch = $('#sizeSearch').val();
        let chatLieuSearch = $('#chatLieuSearch').val();
        let hinhAnhSearch = $('#hinhAnhSearch').val();
        $('#listProduct').find('tr').each(function () {
            let product = JSON.parse($(this).attr('item'));
            let check = true;

            // Kiểm tra mã sản phẩm
            if (maSanPhamSearch) {
                if (!product.ma.includes(maSanPhamSearch)) {
                    check = false;
                }
            }

            // Kiểm tra tên sản phẩm
            if (tenSanPhamSearch) {
                if (!product.ten.toLowerCase().includes(tenSanPhamSearch.toLowerCase())) {
                    check = false;
                }
            }

            // Kiểm tra màu sắc
            if (mauSacSearch) {
                if (!product.mauSac.id.toLowerCase().includes(mauSacSearch.toLowerCase())) {
                    check = false;
                }
            }

            // Kiểm tra kích cỡ
            if (kichCoSearch) {
                if (!product.kichThuoc.id.includes(kichCoSearch)) {
                    check = false;
                }
            }

            // Kiểm tra chất liệu
            if (chatLieuSearch) {
                if (!product.chatLieu.id.toLowerCase().includes(chatLieuSearch.toLowerCase())) {
                    check = false;
                }
            }

            // Kiểm tra hình ảnh
            if (hinhAnhSearch) {
                if (!product.hinhAnh.id.toLowerCase().includes(hinhAnhSearch.toLowerCase())) {
                    check = false;
                }
            }

            // Nếu sản phẩm không thỏa mãn các điều kiện tìm kiếm, ẩn nó đi
            if (!check) {
                $(this).hide();
            } else {
                $(this).show();
            }
        });

    }

    // lần đâu load trang load danh sách hóa đơn và chi tiết hóa đơn
    window.onload = function () {
        getAllHoaDon();
        findHoaDonById();

        if (hoaDon.trangThai && (hoaDon.trangThai == 2 || hoaDon.trangThai == 8)) {
            $(".checkStatus").attr('disabled', 'disabled')
        }
    };

    // tạo mới hóa đơn
    const createHoaDon = () => {
        let kt = confirm("Bạn có chắc chắn muốn tạo hóa đơn không?");
        if (kt == true) {
            $.ajax({
                type: "GET",
                url: "/ban-hang-tai-quay/rest/tao-moi-hoa-don",
                success: function (response) {
                    alert("Thêm mới hóa đơn thành công!!!");
                    getAllHoaDon();
                },
                error: function (xhr, status, error) {
                    console.log(xhr.responseText);
                }
            });
            return true
        } else {
            return false;
        }
    }

    // validate số lượng
    const validateInputSoLuong = (input) => {
        const soLuong = parseInt(input.value, 10);
        if (isNaN(soLuong) || soLuong <= 0) {
            alert("Vui lòng nhập vào một số nguyên dương.");
            input.value = 1;
        }
    }

    // modal mua hàng
    const muaHang = () => {
        let kt = confirm("Bạn có chắc chắn muốn mua hàng không?");
        if (kt == true) {
            let check = true;
            let checkRecordProduct = false;
            $('#listProduct').find('tr').each(function () {
                const firstCheckbox = $(this).find('input[type="checkbox"]:first');
                const lastInput = $(this).find('input:last');
                if (firstCheckbox.is(':checked')) {
                    checkRecordProduct = true;
                    let product = JSON.parse($(this).attr('item'));
                    const lastInputValue = lastInput.val();

                    if (product.soLuongTon < parseInt(lastInputValue)) {
                        alert(`Sản phẩm ` + product.ma + ` không đủ số lượng bán`);
                        check = false;
                    } else {
                        productShopping.push({
                            hoaDonId: id,
                            sanPhamId: product.id,
                            quantity: parseInt(lastInputValue),
                            donGia: product.donGia
                        })
                    }
                }
            });
            if (!checkRecordProduct) {
                alert("Bạn phải chọn ít nhất một sản phẩm");
                return;
            }
            if (check) {
                $.ajax({
                    type: "POST",
                    url: "/ban-hang-tai-quay/rest/mua-san-pham",
                    contentType: "application/json",
                    data: JSON.stringify(productShopping),
                    success: function (response) {
                        alert("Thêm sản phẩm vào hóa đơn thành công")
                        var myModalEl = document.getElementById('modalDanhSachSanPham');
                        var modal = bootstrap.Modal.getInstance(myModalEl)
                        modal.hide();
                        var backdrop = document.querySelector('.modal-backdrop');
                        if (backdrop) {
                            backdrop.remove();
                        }
                        findHoaDonById()
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        alert("Lỗi hệ thống !!!")
                    }
                });
            }
            productShopping = []
        }
    }

    // update số lượng
    const updateSoLuong = () => {
        let kt = confirm("Bạn có chắc chắn muốn sửa số lượng sản phẩm không?");
        if (kt == true) {
            let check = true;
            let checkRecordProduct = false;
            $('#listHoaDonSanPham').find('tr').each(function () {
                const firstCheckbox = $(this).find('input[type="checkbox"]:first');
                const lastInput = $(this).find('input:last');
                if (firstCheckbox.is(':checked')) {
                    checkRecordProduct = true;
                    let product = JSON.parse($(this).attr('item'));
                    const lastInputValue = lastInput.val();
                    if (product.chiTietSanPham.soLuongTon + product.soLuong < parseInt(lastInputValue)) {
                        alert(`Sản phẩm ` + product.chiTietSanPham.ma + ` không đủ số lượng bán`);
                        check = false;
                    } else {
                        productShopping.push({
                            hoaDonId: id,
                            sanPhamId: product.chiTietSanPham.id,
                            quantity: parseInt(lastInputValue),
                            donGia: product.chiTietSanPham.donGia
                        })
                    }
                }
            });
            if (!checkRecordProduct) {
                alert("Bạn phải chọn ít nhất một sản phẩm");
                return;
            }
            if (check) {
                $.ajax({
                    type: "POST",
                    url: "/ban-hang-tai-quay/rest/mua-san-pham",
                    contentType: "application/json",
                    data: JSON.stringify(productShopping),
                    success: function (response) {
                        alert("Sửa số lượng sản phẩm thành công")
                        findHoaDonById()
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        alert("Lỗi hệ thống !!!")
                    }
                });
            }
            productShopping = []
        }
    }

    // xóa sản phẩm
    const deleteProduct = () => {
        let kt = confirm("Bạn có chắc chắn muốn sản phẩm khỏi hóa đơn không?");
        if (kt == true) {
            let check = true;
            let checkRecordProduct = false;
            $('#listHoaDonSanPham').find('tr').each(function () {
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
                    url: "/ban-hang-tai-quay/rest/xoa-san-pham",
                    contentType: "application/json",
                    data: JSON.stringify(productShopping),
                    success: function (response) {
                        alert("Xóa sản phẩm khỏi hóa đơn thành công")
                        findHoaDonById()
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        alert("Lỗi hệ thống !!!")
                    }
                });
            }
            productShopping = []
        }
    }
</script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
</html>
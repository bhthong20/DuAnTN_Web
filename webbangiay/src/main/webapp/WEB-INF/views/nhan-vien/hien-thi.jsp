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
</head>
<body>
<br>

<ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab"
           aria-controls="description" aria-selected="true">Thông tin Nhân Viên</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/chi-tiet-san-pham/hien-thi-delete" role="tab"
           onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;">Sản phẩm đã xoá</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/nhan-vien/view-add" role="tab"
           onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;">Thêm mới Nhân Viên</a>
    </li>
</ul>
<div class="card mb-4">
    <h5 class="card-header" style="text-align: center">Thông tin chi tiết sản phẩm</h5>
    <table class="table container">
        <tbody>
        <tr>
            <td colspan="2" style="text-align: center">
                <form action="/chi-tiet-san-pham/search" method="post">
                    <div class="input-group" style="width:100%; text-align: center">
                        <input type="text" class="form-control" placeholder="Bạn tìm gì..."
                               aria-label="Bạn tìm gì..." name="search">
                        <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" style="height: 40px" type="submit">Search</button>
                        </div>
                    </div>
                </form>
            </td>
            <td>
                <form action="/chi-tiet-san-pham/loc" method="post">
                    <div class="card-body" style="text-align: center">
                        <div class="demo-inline-spacing">
                            <div class="btn-group">
                                <select class="form-select">
                                    <option selected disabled>Chất Liệu</option>
                                    <c:forEach items="${listCL}" var="cl">
                                        <option value="${cl.tenChatLieu}">${cl.tenChatLieu}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="btn-group">
                                <button
                                        type="button"
                                        class="btn btn-outline-secondary dropdown-toggle"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                >
                                    Secondary
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                                </ul>
                            </div>

                            <div class="btn-group">
                                <button
                                        type="button"
                                        class="btn btn-outline-success dropdown-toggle"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                >
                                    Success
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                                </ul>
                            </div>

                            <div class="btn-group">
                                <button
                                        type="button"
                                        class="btn btn-outline-danger dropdown-toggle"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                >
                                    Danger
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                                </ul>
                            </div>

                            <div class="btn-group">
                                <button
                                        type="button"
                                        class="btn btn-outline-warning dropdown-toggle"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                >
                                    Warning
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                                </ul>
                            </div>

                            <div class="btn-group">
                                <button
                                        type="button"
                                        class="btn btn-outline-info dropdown-toggle"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                >
                                    Info
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </form>
            </td>
        </tr>
        </tbody>
    </table>


</div>
<div class="card">
    <div class="table-responsive text-nowrap">
        <table class="table">
            <thead>
            <tr>
                <th>STT</th>
                <th>Mã</th>
                <th>Tên</th>
                <th>Email</th>
                <th>SĐT</th>
                <th>Ngày Sinh</th>
                <th>Giới Tính</th>
                <th>Chức Vụ</th>
                <th>Địa Chỉ</th>
                <th>CCCD</th>
                <th>Hình Ảnh</th>
                <th>Tài Khoản</th>
                <th>Mật Khẩu</th>
                <th>Ngày Tạo</th>
                <th>Ngày Cập Nhập</th>
                <th>Trạng Thái</th>
                <th colspan="2">Chức năng</th>
            </tr>
            </thead>
            <tbody class="table-border-bottom-2">
            <c:forEach items="${nhanVien}" var="nv" varStatus="stt">
                <tr>
                    <td>${stt.index+1}</td>
                    <td>${nv.ma}</td>
                    <td>${nv.hoTen}</td>
                    <td>${nv.email}</td>
                    <td>${nv.sdt}</td>
                    <td>${nv.ngaySinh}</td>
                    <td>
                        <c:if test="${nv.gioiTinh == false}">Nam</c:if>
                        <c:if test="${nv.gioiTinh == true}">Nữ</c:if>
                    </td>
                    <td>${nv.chucVu.ten}</td>
                    <td>${nv.diaChi}</td>
                    <td>${nv.canCuoc}</td>
                    <td>${nv.urlAnh}</td>
                    <td>${nv.taiKhoan}</td>
                    <td>${nv.matKhau}</td>
                    <td>${nv.ngayTao}</td>
                    <td>${nv.ngayCapNhat}</td>
                    <td>
                        <c:if test="${nv.tinhTrang == 0}">Hoạt Động</c:if>
                        <c:if test="${nv.tinhTrang == 1}">Không Hoạt Động</c:if>
                    </td>
                    <td colspan="2">
                        <a href="/nhan-vien/delete/${nv.id}" class="btn btn-success"
                           onclick="return tbxd()">Delete</a>
                        <a href="/nhan-vien/view-update/${nv.id}" class="btn btn-success"
                           onclick="return tbxd()">Update</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center pagination-lg">
        <li class="page-item"><a class="page-link" href="/hien-thi/nhan-vien?num=0">First</a></li>

        <c:forEach begin="1" end="${total}" varStatus="status">
            <li class="page-item">
                <a href="${pageContext.request.contextPath}/hien-thi/nhan-vien?num=${status.index -1}"
                   class="page-link">${status.index}</a>
            </li>
        </c:forEach>

        <li class="page-item"><a class="page-link" href="/hien-thi/nhan-vien?num=${total-1}">Last</a></li>
    </ul>
</nav>

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
    function myFunction1() {
        let text = "Bạn chắc chắn muốn thêm";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }

    function myFunction2() {
        let text = "Bạn chắc chắn muốn sửa";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }

    function myFunction3() {
        let text = "Bạn chắc chắn muốn thay đổi trạng thái";
        let kt = confirm(text);
        if (kt == true) {
            confirm("Thay đổi trạng thái thành công");
            return true
        } else {
            return false;
        }
    }

    function myFunction4() {
        let text = "Bạn chắc chắn muốn về lại trang hiển thị";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }

    function myFunction5() {
        let text = "Bạn chắc chắn muốn tìm kiếm thông tin";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }

    function myFunction6() {
        let text = "Bạn chắc chắn muốn sang trang thêm thông tin";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }

    function myFunction7() {
        let text = "Bạn chắc chắn muốn sang trang thông tin đã thay đổi";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }


</script>
<script>
    document.querySelectorAll('.dropdown-menu').forEach(function (dropdown) {
        dropdown.style.display = 'none';
    });

    // Hiển thị/ẩn các dropdown menu con khi người dùng chọn một giá trị từ dropdown menu cha
    document.querySelectorAll('.dropdown-toggle').forEach(function (dropdown) {
        dropdown.addEventListener('click', function () {
            const dropdownMenu = dropdown.nextElementSibling;

            if (dropdownMenu.style.display === 'block') {
                dropdownMenu.style.display = 'none';
            } else {
                dropdownMenu.style.display = 'block';
            }
        });
    });
</script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
</html>

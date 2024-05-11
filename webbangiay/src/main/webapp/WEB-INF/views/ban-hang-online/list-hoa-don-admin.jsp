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
            rel="stylesheet"/>

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
<div class="card mb-4">
    <table class="table container">
        <tbody>
        <h3 class="card-header">Thông tin khuyến mại</h3>
        <tr>
            <td style="text-align: center">
                <form action="/khuyen-mai/search" method="post">
                    <div class="input-group" style="width:100%; text-align: center">
                        <input type="text" class="form-control" placeholder="Bạn tìm gì..."
                               aria-label="Bạn tìm gì..." name="search">
                        <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" style="height: 40px" type="submit">Search</button>
                        </div>
                    </div>
                </form>
            </td>
        </tr>
        <tr class="text-center">
            <td class="text-center" colspan="2">
                <a type="button" class="btn btn-primary" href="/khuyen-mai/view-add">Thêm mới</a>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="card">
    <div class="table-responsive text-nowrap">
        <table class="table container">
            <tr>
                <th>STT</th>
                <th>Mã</th>
                <th>Mã người đặt</th>
                <th>Tên người nhận</th>
                <th>Nhân viên</th>
                <th>Ngày tạo</th>
                <th>Trạng thái</th>
                <th>Phương thức thanh toán</th>
                <th>Loại</th>
                <th>Chức năng</th>
            </tr>
            <c:forEach items="${listhoaDon}" var="item" varStatus="stt">
                <tr>
                    <td>${stt.index+1}</td>
                    <td>${item.ma}</td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty item.khachHang}">
                                ${item.khachHang.ma}
                            </c:when>
                            <c:otherwise>
                                -
                            </c:otherwise>
                        </c:choose></td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty item.tenNguoiNhan}">
                                ${item.tenNguoiNhan}
                            </c:when>
                            <c:otherwise>
                                -
                            </c:otherwise>
                        </c:choose></td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty item.nhanVien}">
                                ${item.nhanVien.hoTen}
                            </c:when>
                            <c:otherwise>
                                -
                            </c:otherwise>
                        </c:choose></td>
                    <td>${item.ngayTao}</td>
                    <td>
                        <c:if test="${item.trangThai==0}">Chờ xác nhận</c:if>
                        <c:if test="${item.trangThai==1}">Đã xác nhận</c:if>
                        <c:if test="${item.trangThai==2}">Đã thanh toán</c:if>
                        <c:if test="${item.trangThai==3}">Chờ thanh toán</c:if>
                        <c:if test="${item.trangThai==4}">Chờ vẫn chuyển</c:if>
                        <c:if test="${item.trangThai==5}">Đang vận chuyển</c:if>
                        <c:if test="${item.trangThai==6}">Vận chuyển hoàn tất</c:if>
                        <c:if test="${item.trangThai==7}">Giao trễ</c:if>
                        <c:if test="${item.trangThai==8}">Đã hủy</c:if>
                        <c:if test="${item.trangThai==9}">Mới tạo</c:if>
                        <c:if test="${item.trangThai==10}">Hoàn tất</c:if>
                    </td>
                    <td><c:if test="${item.phuongThucThanhToan==0}">Nhận hàng</c:if>
                        <c:if test="${item.phuongThucThanhToan==1}">Online</c:if></td>
                    <td>
                        <c:if test="${item.loai==0}">tại quầy</c:if>
                        <c:if test="${item.loai==1}">online</c:if>
                    </td>
                    <td>
                        <c:if test="${item.loai==0}"><a href="/ban-hang-tai-quay?id=${item.id}" class="btn btn-success">Chi tiết</a></c:if>
                        <c:if test="${item.loai==1}"><a href="/hoa-don/detail?id=${item.id}" class="btn btn-success">Chi tiết</a></c:if>

                    </td>
                </tr>
            </c:forEach>
        </table>
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center pagination-lg">
                <li class="page-item"><a class="page-link" href="/khuyen-mai/hien-thi?num=0">First</a></li>

                <c:forEach begin="1" end="${total}" varStatus="status">
                    <li class="page-item">
                        <a href="${pageContext.request.contextPath}/khuyen-mai/hien-thi?num=${status.index -1}"
                           class="page-link">${status.index}</a>
                    </li>
                </c:forEach>

                <li class="page-item"><a class="page-link" href="/khuyen-mai/hien-thi?num=${total-1}">Last</a></li>
            </ul>
        </nav>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</html>
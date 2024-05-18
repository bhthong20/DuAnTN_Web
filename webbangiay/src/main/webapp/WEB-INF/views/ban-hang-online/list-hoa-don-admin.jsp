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
        <h3 class="card-header">Thông tin hóa đơn</h3>
        <tr>
            <td style="text-align: center">
                <form action="/hoa-don/search" method="post">
                    <div class="input-group" style="width:100%; text-align: center">
                        <input type="text" class="form-control" placeholder="Bạn tìm gì..."
                               aria-label="Bạn tìm gì..." name="ma">
                        <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" style="height: 40px" type="submit">Search</button>
                        </div>
                    </div>
                </form>
            </td>
            <td>
                <form action="/hoa-don/loc" method="post">
                    <div class="card-body" style="text-align: center">

                            <div class="btn-group">
                                <select class="form-select" name="locTT">
                                    <option selected disabled>Trạng thái</option>
                                    <option value=0>Chờ xác nhận</option>
                                    <option value=1>Đã xác nhận</option>
<%--                                    <option value=2>Đã thanh toán</option>--%>
                                    <option value="3">Chờ thanh toán</option>
<%--                                    <option value="4">Chờ vẫn chuyển</option>--%>
                                    <option value="5">Đang vận chuyển</option>
                                    <option value="6">Vận chuyển hoàn tất</option>
                                    <option value="8">Đã hủy</option>
<%--                                    <option value="9">Mới tạo</option>--%>
                                    <option value="10">Hoàn tất</option>
                                </select>
                            </div>

                            <div STYLE="display: none" class="btn-group">
                                <select class="form-select" name="locLoai">
                                    <option selected disabled>Loại</option>
                                    <option value="0">Tại quầy</option>
                                    <option value="1">online</option>
                                </select>
                            </div>

                            <div class="btn-group">
                                <select class="form-select" name="locPTTT">
                                    <option selected disabled>PT Thanh toán</option>
                                    <option value="0">Nhận hàng</option>
                                    <option value="1">online</option>
                                </select>
                            </div>
                            <div class="btn-group">
                                <input type="date" class="form-control" name="ngayTao" >
                            </div>
                            <div class="btn-group">
                                <button type="submit" class="btn btn-primary mr-2">
                                    Lọc
                                </button>
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
        <table class="table container">
            <tr>
                <th>STT</th>
                <th>Mã</th>
                <th>Tên khách hàng</th>
                <th>Nhân viên</th>
                <th>Ngày tạo</th>
                <th>Ngày Cập nhật</th>
                <th>Trạng thái</th>
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
                                ${item.khachHang.hoTen}
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
                    <td class="ngay-tao">${item.ngayTao}</td>
                    <td class="ngay-tao">${item.ngayCapNhat}</td>
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
                    <td>
                        <c:if test="${item.loai==0}">tại quầy</c:if>
                        <c:if test="${item.loai==1}">online</c:if>
                    </td>
                    <td>
                        <c:if test="${item.loai==0}"><a href="/ban-hang-tai-quay?id=${item.id}" class="btn btn-success">Chi
                            tiết</a></c:if>
                        <c:if test="${item.loai==1}"><a href="/hoa-don/detail?id=${item.id}" class="btn btn-success">Chi
                            tiết</a></c:if>

                    </td>
                </tr>
            </c:forEach>
        </table>
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center pagination-lg">
                <li class="page-item"><a class="page-link" href="/hoa-don?num=0">First</a></li>

                <c:forEach begin="1" end="${total}" varStatus="status">
                    <li class="page-item">
                        <a href="${pageContext.request.contextPath}/hoa-don?num=${status.index -1}"
                           class="page-link">${status.index}</a>
                    </li>
                </c:forEach>

                <li class="page-item"><a class="page-link" href="/hoa-don?num=${total-1}">Last</a></li>
            </ul>
        </nav>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
<script>
    function formatDateTime(dateTimeStr) {
        let date = new Date(dateTimeStr);
        let options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', hour12: false };
        return date.toLocaleDateString('en-GB', options).replace(',', '');
    }
    function formatAllDates() {
        document.querySelectorAll('.ngay-tao').forEach(function (element) {
            element.textContent = formatDateTime(element.textContent);
        });
    }
    window.onload = formatAllDates;
</script>
</html>
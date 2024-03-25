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
</head>
<body>
<h4 style="text-align: center">Thông tin khách hàng</h4>
<br>
<div class="container">
    <table class="table container">
        <tbody>
        <tr>

            <td colspan="2" style="text-align: center">
                <button class="btn btn-info">
                    <a style="color: white;text-decoration: none" href="/khach-hang/view-add">Thêm mới</a>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</div>
<div class="container">
    <table class="table container">
        <tr>
            <th>STT</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Email</th>
            <th>SĐT</th>
            <th>Ngày Sinh</th>
            <th>Giới Tính</th>
            <th>Ngày Tạo</th>
            <th>Ngày Cập Nhập</th>
            <th>Trạng Thái</th>
            <th>Tài Khoản</th>
            <th>Mật Khẩu</th>
            <th colspan="2">Chức năng</th>
        </tr>
        <c:forEach items="${khachHang}" var="kh" varStatus="stt">
            <tr>
                <td>${stt.index+1}</td>
                <td>${kh.ma}</td>
                <td>${kh.hoTen}</td>
                <td>${kh.email}</td>
                <td>${kh.sdt}</td>
                <td>${kh.ngaySinh}</td>
                <td>
                    <c:if test="${nv.gioiTinh == false}">Nam</c:if>
                    <c:if test="${nv.gioiTinh == true}">Nữ</c:if>
                </td>
                <td>${kh.ngayTao}</td>
                <td>${kh.ngayCapNhat}</td>
                <td>
                    <c:if test="${kh.trangThai == true}">Hoạt Động</c:if>
                    <c:if test="${kh.trangThai == false}">Không Hoạt Động</c:if>
                </td>
                <td>${kh.taiKhoan}</td>
                <td>${kh.matKhau}</td>
                <td colspan="2">
                    <a href="/khach-hang/delete/${kh.id}" class="btn btn-success"
                       onclick="return tbxd()">Delete</a>
                    <a href="/khach-hang/view-update/${kh.id}" class="btn btn-success"
                       onclick="return tbxd()">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center pagination-lg">
            <li class="page-item"><a class="page-link" href="/hien-thi/khach-hang?num=0">First</a></li>

            <c:forEach begin="1" end="${total}" varStatus="status">
                <li class="page-item">
                    <a href="${pageContext.request.contextPath}/hien-thi/khach-hang?num=${status.index -1}"
                       class="page-link">${status.index}</a>
                </li>
            </c:forEach>

            <li class="page-item"><a class="page-link" href="/hien-thi/khach-hang?num=${total-1}">Last</a></li>
        </ul>
    </nav>
</div>

</body>
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
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</html>

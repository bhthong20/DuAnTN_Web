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
<h4 style="text-align: center">Thông tin nhân viên</h4>
<br>
<div class="container">
    <table class="table container">
        <tbody>
        <tr>
            <form action="/chi-tiet-san-pham/search" method="post">
                <td colspan="2" style="text-align: center">Tìm kiếm: <input type="text" name="search">
                    <button type="submit">Tìm kiếm</button>
                </td>
            </form>
            <td colspan="2" style="text-align: center">
                <button class="btn btn-info">
                    <a style="color: white;text-decoration: none" href="/nhan-vien/view-add">Thêm mới</a>
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
        <c:forEach items="${nhanVien}" var="nv" varStatus="stt">
            <tr>
                <td>${stt.index+1}</td>
                <td>${nv.ma}</td>
<%--                <td align="center">--%>
<%--                    <img src="../../../uploads/${ctsp.sanPham.hinhAnh.anh1}" width="40" height="40"--%>
<%--                         style="border-radius:50% 50% 50% 50%">--%>

<%--                </td>--%>
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
                    <a href="/view-update/${nv.id}" class="btn btn-success"
                       onclick="return tbxd()">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
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

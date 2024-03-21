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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../../vendors/feather/feather.css">
    <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="../../images/favicon.png"/>
</head>
</head>
<body>
<h4 style="text-align: center">Thông tin chi tiết sản phẩm</h4>
<div class="container">
    <%--@elvariable id="chiTietSanPham" type=""--%>
    <form:form action="/nhan-vien/add" method="post" modelAttribute="nhanVien">
    <div class="row">
        <div class="col-md-6">
            <div class="form-floating mb-3 mt-3">
                <form:input class="form-control" placeholder="" path="ma"/>
                <form:label class="form-label" path="ma">Mã Nhân Viên:</form:label>
                <form:errors path="ma" cssStyle="color: red"/>
            </div>
            <div class="form-floating mb-3 mt-3">
                <form:input class="form-control" placeholder="" path="hoTen"/>
                <form:label class="form-label" path="hoTen">Họ Tên:</form:label>
                <form:errors path="hoTen" cssStyle="color: red"/>
            </div>
        </div>
        <div class="col-6">
        </div>
        <div class="col-md-6">
            <div class="form-floating mb-3 mt-3">
                <form:textarea class="form-control" placeholder="" path="email"/>
                <form:label class="form-label" path="email">Email:</form:label>
                <form:errors path="email" cssStyle="color: #ff0000"/>
            </div>
            <div class="form-floating mb-3 mt-3">
                <form:label class="form-label" path="gioiTinh">Giới Tính:</form:label>
                <form:radiobutton path="gioiTinh" value="0" checked="true"/>Nam
                <form:radiobutton path="gioiTinh" value="1"/>Nữ
            </div>
            <div class="form-floating mb-3 mt-3">
                <form:select class="form-select" path="chucVu">
                    <option selected disabled>Sản phẩm</option>
                    <form:options items="${listCv}" itemValue="id" itemLabel="ten"/>
                </form:select>
                <form:label class="form-label" path="chucVu">Chức Vụ:</form:label>
            </div>
        </div>

        <div class="col-6">
        </div>

        <div class="col-md-6">
            <div class="form-floating mb-3 mt-3">
                <form:textarea class="form-control" placeholder="" path="diaChi"/>
                <form:label class="form-label" path="diaChi">Địa Chỉ:</form:label>
                <form:errors path="diaChi" cssStyle="color: #ff0000"/>
            </div>
        </div>
        <div class="col-6">
        </div>
        <div class="col-md-6">
            <div class="form-floating mb-3 mt-3">
                <form:textarea class="form-control" placeholder="" path="taiKhoan"/>
                <form:label class="form-label" path="taiKhoan">Tài Khoản:</form:label>
                <form:errors path="taiKhoan" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-floating mb-3 mt-3">
                <form:input class="form-control" placeholder="" path="matKhau"/>
                <form:label class="form-label" path="matKhau">Mật Khẩu:</form:label>
                <form:errors path="matKhau" cssStyle="color: #ff0000"/>
            </div
            <div class="form-check mb-3 mt-3">
                <form:label class="form-label" path="tinhTrang">Tình Trạng:</form:label>
                <br>
                <form:radiobutton path="tinhTrang" value="1" checked="true"/>Hoạt động
                <br>
                <form:radiobutton path="tinhTrang" value="0"/>Ngưng hoạt động
            </div>
        </div>
        <div class="col-6">
        </div>


    </div>
    <div class="row">
        <div class="col-12" style="text-align: center">
            <button type="submit" class="btn btn-success"
                    id="btt" onclick="return myFunction1()">Add
            </button>
        </div>
    </div>
</div>
</form:form>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
    $(document).ready(function () {
        $('#selectMauSac').select2();
        $('#selectKichThuoc').select2();
        $('#selectChatLieu').select2();
    });

</script>
</html>

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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>

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
</head>

<body>
<%--<ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">--%>
<%--    <li class="nav-item">--%>
<%--        <a class="nav-link" href="/chi-tiet-san-pham/hien-thi" role="tab"--%>
<%--           onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;">Thông tin chi tiết--%>
<%--            sản phẩm</a>--%>
<%--    </li>--%>
<%--    <li class="nav-item">--%>
<%--        <a class="nav-link" href="/chi-tiet-san-pham/hien-thi-da-xoa" role="tab"--%>
<%--           onclick="if(!(confirm('Bạn có muốn thực hiện thao tác này không ? ')))return false;">Sản phẩm đã xóa</a>--%>
<%--    </li>--%>
<%--    <li class="nav-item">--%>
<%--        <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab"--%>
<%--           aria-controls="description" aria-selected="true" role="tab">Thêm mới chi tiết sản phẩm</a>--%>
<%--    </li>--%>
<%--</ul>--%>
<div class="container">
    <div class="col-md-12">
        <div class="card">
            <h3 class="card-header">Thêm mới sản phẩm</h3>
            <%--@elvariable id="chiTietSanPham" type=""--%>
            <div class="card-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-floating mb-3 mt-3">
                                <input id="tenSP" class="form-control" placeholder="" path="sanPham"/>
                                <label for="tenSP" path="sanPham">Tên sản phẩm:</label>
                                <span path="sanPham" cssStyle="color: red"></span>
                            </div>

                            <div class="form-floating mb-3 mt-3">
                                <input id="soLuongTon" type="number" class="form-control" placeholder="" path="soLuongTon"/>
                                <label for="soLuongTon" path="soLuongTon">Số lượng tồn:</label>
                                <span path="soLuongTon" cssStyle="color: red"></span>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <input id="donGia" class="form-control" type="number" placeholder="" path="donGia"/>
                                <label for="donGia" path="donGia">Đơn giá:</label>
                                <span path="donGia" cssStyle="color: red"></span>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <select class="form-select" id="phanLoai">
                                    <option selected disabled value="">Phân loại</option>
                                    <c:forEach items="${listPL}" var="phanLoai">
                                        <option value="${phanLoai.id}">${phanLoai.tenLoai}</option>
                                    </c:forEach>
                                </select>
                                <label for="phanLoai" path="phanLoai">Phân loại:</label>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <select class="form-select" id="hinhAnh">
                                    <option selected disabled value="">Hình ảnh</option>
                                    <c:forEach items="${listHA}" var="hinhAnh">
                                        <option value="${hinhAnh.id}"
                                                anh1="${hinhAnh.anh1}"
                                                anh2="${hinhAnh.anh2}"
                                                anh3="${hinhAnh.anh3}">${hinhAnh.ten}</option>
                                    </c:forEach>
                                </select>
                                <label for="hinhAnh" path="hinhAnh">Hình ảnh:</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating mb-3 mt-3">
                                <textarea id="moTa" class="form-control" path="moTa"></textarea>
                                <label for="moTa" path="moTa">Mô tả:</label>
                                <span path="moTa" cssStyle="color: red"></span>
                            </div>
                            <div class="form-floating mb-3 mt-3">
                                <select class="form-select" id="thuongHieu">
                                    <option selected disabled>Thương hiệu</option>
                                    <c:forEach items="${listTH}" var="thuongHieu">
                                        <option value="${thuongHieu.id}">${thuongHieu.ten}</option>
                                    </c:forEach>
                                </select>
                                <label for="thuongHieu" path="thuongHieu">Thương hiệu:</label>
                            </div>
                            <div class="form-floating mb-3 mt-3 d-flex justify-content-between">
                                <img id="preview-anh1" class="preview-image"
                                     width="30%" height="100%"
                                     style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                                <img id="preview-anh2" class="preview-image"
                                     width="30%" height="100%"
                                     style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                                <img id="preview-anh3" class="preview-image"
                                     width="30%" height="100%"
                                     style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                            </div>
                        </div>
                    </div>
                </form>

                <div class="row">
                    <div class="col-12" style="text-align: center">
                        <a class="btn btn-primary" href="/chi-tiet-san-pham/hien-thi">Quay lại</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mt-5">
            <h4 class="card-header" style="text-align: center">Thêm thuộc tính</h4>
            <div class="card-body">
                <form>
                    <div class="row">
                        <div class="mt-3 col-4 row">
                            <label class="col-md-5 col-form-label">
                                <span class="me-3">Màu sắc</span>
                                <a type="button" data-bs-toggle="modal" data-bs-target="#exampleModalMauSac">
                                    <img src="/uploads/plus.png">
                                </a>
                            </label>
                            <div class="col-md-7">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleChonModalMauSac">
                                    Chọn màu sắc
                                </button>
                            </div>
                        </div>
                        <div class="mt-3 col-4 row">
                            <label class="col-md-5 col-form-label">
                                <span class="me-3">Kích thước</span>
                                <a type="button" data-bs-toggle="modal" data-bs-target="#exampleModalKichThuoc">
                                    <img src="/uploads/plus.png">
                                </a>
                            </label>
                            <div class="col-md-7">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleChonModalKichThuoc">
                                    Chọn kích thước
                                </button>
                            </div>
                        </div>
                        <div class="mt-3 col-4 row">
                            <label class="col-md-5 col-form-label">
                                <span class="me-3">Chất liệu</span>
                                <a type="button" data-bs-toggle="modal" data-bs-target="#exampleModalChatLieu">
                                    <img src="/uploads/plus.png">
                                </a>
                            </label>
                            <div class="col-md-7">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleChonModalChatLieu">
                                    Chọn chất liệu
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div id="tableCreate" style="display: none" class="card mt-5">
            <h5 class="card-header">Thêm mới chi tiết sản phẩm</h5>
            <div class="card-body">
                <div class="table-responsive text-nowrap">
                    <table class="table table-striped" id="colorTable">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá tiền</th>
                            <th>Số lượng</th>
                            <th>CHẤT LIỆU</th>
                            <th>Size</th>
                            <th>Màu sắc</th>
                            <th>Hình ảnh</th>
                            <th>Mô tả</th>
                            <th>Tình trạng</th>
                        </tr>
                        </thead>
                        <tbody class="table-border-bottom-0" id="colorTableBody">
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-12" style="text-align: center">
                        <button type="button" class="btn btn-success"
                                id="bttCreate" onclick="return myFunction1()">Thêm mới
                        </button>
                        <button type="button" class="btn btn-success"
                                id="bttUpdate" onclick="return myFunction1()">Update
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--Chon mau sac--%>
    <div class="modal fade" id="exampleChonModalMauSac" tabindex="-1" aria-labelledby="exampleModalLabelMauSac"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Chọn màu Sắc</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <c:forEach var="mauSacItem" items="${listMS}">
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" name="mauSac" value="${mauSacItem.id}"
                                   onclick="addRow(this, '${mauSacItem.ten}', '${mauSacItem.id}', 'COLOR')" id="${mauSacItem.id}" />
                            <label class="form-check-label" for="${mauSacItem.id}"> ${mauSacItem.ten} </label>
                        </div>
                    </c:forEach>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%--Chon kich thuoc--%>
    <div class="modal fade" id="exampleChonModalKichThuoc" tabindex="-1" aria-labelledby="exampleModalLabelMauSac"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Chọn kích thước</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <c:forEach var="kichThuoc" items="${listKT}">
                        <div class="form-check mb-3">
                            <input class="form-check-input" name="kichThuoc"
                                   onclick="addRow(this, '${kichThuoc.size}', '${kichThuoc.id}', 'SIZE')" type="checkbox" value="${kichThuoc.id}" id="${kichThuoc.id}" />
                            <label class="form-check-label" for="${kichThuoc.id}"> ${kichThuoc.size} </label>
                        </div>
                    </c:forEach>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%--Chon chat lieu--%>
    <div class="modal fade" id="exampleChonModalChatLieu" tabindex="-1" aria-labelledby="exampleModalLabelMauSac"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Chọn chất liệu</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <c:forEach var="chatLieu" items="${listCL}">
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" name="chatLieu" value="${chatLieu.id}"
                                   onclick="addRow(this, '${chatLieu.tenChatLieu}', '${chatLieu.id}', 'CATEGORY')" id="${chatLieu.id}" />
                            <label class="form-check-label" for="${chatLieu.id}"> ${chatLieu.tenChatLieu} </label>
                        </div>
                    </c:forEach>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%--Them nhanh mau sac--%>
    <div class="modal fade" id="exampleModalMauSac" tabindex="-1" aria-labelledby="exampleModalLabelMauSac"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabelMauSac">Màu Sắc</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="imeiListMauSac">
                        <table class="table">
                            <%--@elvariable id="mauSac" type=""--%>
                            <form:form action="/chi-tiet-san-pham/modal-add-mau-sac" method="post"
                                       modelAttribute="mauSac">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="ten"/>
                                            <form:label class="form-label" path="ten">Tên màu sắc:</form:label>
                                            <form:errors path="ten" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="moTa"/>
                                            <form:label class="form-label" path="moTa">Mô tả:</form:label>
                                            <form:errors path="moTa" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-check mb-3 mt-3">
                                            <form:label class="form-label" path="trangThai">Tình Trạng:</form:label>
                                            <br>
                                            <form:radiobutton path="trangThai" value="0" checked="true"/>Hoạt động
                                            <br>
                                            <form:radiobutton path="trangThai" value="1"/>Ngưng hoạt động
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12" style="text-align: center">
                                            <button type="submit" class="btn btn-success"
                                                    onclick="myFunction1()">Add
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <%--Them nhanh kich co--%>
    <div class="modal fade" id="exampleModalKichThuoc" tabindex="-1" aria-labelledby="exampleModalLabelKichThuoc"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabelKichThuoc">Kích cỡ</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="imeiListKichThuoc">
                        <table class="table">
                            <%--@elvariable id="size" type=""--%>
                            <form:form action="/chi-tiet-san-pham/modal-add-kich-thuoc" method="post"
                                       modelAttribute="kichThuoc">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="size"/>
                                            <form:label class="form-label" path="size">Kích cỡ:</form:label>
                                            <form:errors path="size" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="moTa"/>
                                            <form:label class="form-label" path="moTa">Mô tả:</form:label>
                                            <form:errors path="moTa" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-check mb-3 mt-3">
                                            <form:label class="form-label" path="trangThai">Tình Trạng:</form:label>
                                            <br>
                                            <form:radiobutton path="trangThai" value="0" checked="true"/>Hoạt động
                                            <br>
                                            <form:radiobutton path="trangThai" value="1"/>Ngưng hoạt động
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12" style="text-align: center">
                                            <button type="submit" class="btn btn-success"
                                                    onclick="myFunction1()">Add
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <%--Them nhanh de--%>
    <div class="modal fade" id="exampleModalChatLieu" tabindex="-1" aria-labelledby="exampleModalLabelChatLieu"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabelChatLieu">Loại đế</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="imeiListChatLieu">
                        <table class="table">
                            <%--@elvariable id="de" type=""--%>
                            <form:form action="/chi-tiet-san-pham/modal-add-chat-lieu" method="post"
                                       modelAttribute="chatLieu">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="tenChatLieu"/>
                                            <form:label class="form-label"
                                                        path="tenChatLieu">Chất liệu:</form:label>
                                            <form:errors path="tenChatLieu" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-floating mb-3 mt-3">
                                            <form:input class="form-control" placeholder="" path="moTa"/>
                                            <form:label class="form-label" path="moTa">Mô tả:</form:label>
                                            <form:errors path="moTa" cssStyle="color: red"/>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-check mb-3 mt-3">
                                            <form:label class="form-label" path="trangThai">Tình Trạng:</form:label>
                                            <br>
                                            <form:radiobutton path="trangThai" value="0" checked="true"/>Hoạt động
                                            <br>
                                            <form:radiobutton path="trangThai" value="1"/>Ngưng hoạt động
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12" style="text-align: center">
                                            <button type="submit" class="btn btn-success"
                                                    onclick="myFunction1()">Add
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
<script>

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
    function myFunction1() {
        let text = "Bạn chắc chắn muốn thêm";
        var tenSPValue = document.getElementById('tenSP').value;
        var moTaValue = document.getElementById('moTa').value;
        var thuongHieu = document.getElementById('thuongHieu').value;
        var hinhAnh = document.getElementById('hinhAnh').value;
        var phanLoai = document.getElementById('phanLoai').value;
        getMoney();
        getQuantity();
        getNote();
        getStatus();
        getImages();
        let sanPham = {
            id: null,
            tenSanPham: tenSPValue,
            idLoaiSanPham: phanLoai,
            idHinhAnh: hinhAnh,
            idThuongHieu: thuongHieu,
            moTa: moTaValue,
            chiTietSanPhamDtos: listProductDetail.map(el => {
                return {
                    id: null,
                    idKichThuoc: el.sizeId,
                    idMauSac: el.colorId,
                    idChatLieu: el.categoryId,
                    soLuongTon: el.quantity,
                    donGia: el.money,
                    moTa: el.note,
                    trangThai: el.status,
                    idHinhAnh: el.image
                }
            })
        };

        let kt = confirm(text);
        if (kt == true) {
            $.ajax({
                type: "POST",
                url: "/chi-tiet-san-pham/rest/them-san-pham",
                contentType: "application/json",
                data: JSON.stringify(sanPham),
                success: function(response){
                    alert("Thêm sản phẩm mới thành công");
                    console.log(response)
                    window.location.href = "/chi-tiet-san-pham/hien-thi";
                },
                error: function(xhr, status, error){
                    console.log(xhr.responseText);
                }
            });
            return true
        } else {
            return false;
        }
    }

    document.getElementById("hinhAnh").addEventListener("change", function() {
        var selectedOptionValue = this.value;
        var selectedOption = this.options[this.selectedIndex];

        var anh1Value = selectedOption.getAttribute("anh1");
        var anh2Value = selectedOption.getAttribute("anh2");
        var anh3Value = selectedOption.getAttribute("anh3");

        document.getElementById("preview-anh1").src = '../../../uploads/' + anh1Value;
        document.getElementById("preview-anh2").src = '../../../uploads/' + anh2Value;
        document.getElementById("preview-anh3").src = '../../../uploads/' + anh3Value;
    });

    let listMauSac = [];
    let listSize = [];
    let listCategory = [];
    let listProductDetail = [];

    var url = window.location.href;

    var urlParams = new URLSearchParams(new URL(url).search);

    var id = urlParams.get("idctsp");

    function addRow(checkbox, name, id, type) {
        if (checkbox.checked) {
            if (type === 'COLOR') {
                listMauSac.push({
                    id: id,
                    name: name
                })
            }
            if (type === 'SIZE') {
                listSize.push({
                    id: id,
                    name: name
                })
            }
            if (type === 'CATEGORY') {
                listCategory.push({
                    id: id,
                    name: name
                })
            }
        } else {
            if (type === 'COLOR') {
                listMauSac = listMauSac.filter(el => el.id !== id);
            }
            if (type === 'SIZE') {
                listSize = listSize.filter(el => el.id !== id);
            }
            if (type === 'CATEGORY') {
                listCategory = listCategory.filter(el => el.id !== id);
            }
        }
        renderProductDetail();
        updateColorTable();
    }

    function genComboboxImage(index) {
        var htmlSelect = '<select class="form-select productImg" index="' + index + '" >';
        var selectElement = document.getElementById("hinhAnh");

        var options = selectElement.options;
        for (var i = 0; i < options.length; i++) {
            htmlSelect += '<option value="' + options[i].value + '" anh1="' + options[i].getAttribute('anh1') +
                '" anh2="' + options[i].getAttribute('anh2') + '" anh3="' + options[i].getAttribute('anh3') + '">' + options[i].text + '</option>';
        }
        htmlSelect += '</select>'

        return htmlSelect;
    }

    function updateColorTable() {

        var tableBody = document.getElementById('colorTableBody');
        var html = '';
        listProductDetail.forEach(function (product) {
            html +=
                '<tr>' +
                    '<td>' + product.index + '</td>' +
                    '<td>' + product.name + '</td>' +
                    '<td> <input class="form-control productMoney" index="' + product.index + '" type="number" placeholder="Default input" value="' + product.money + '" /></td>' +
                    '<td> <input class="form-control productQuantity" index="' + product.index + '" type="number" placeholder="Default input" value="' + product.quantity + '" /></td>' +
                    '<td>' + product.categoryName + '</td>' +
                    '<td>' + product.sizeName + '</td>' +
                    '<td>' + product.colorName + '</td>' +
                    '<td>' + genComboboxImage(product.index) + '</td>' +
                    '<td><input class="form-control productNote" type="text" index="' + product.index + '" placeholder="Default input" value="' + product.note + '" /></td>' +
                    '<td><div class="form-check form-switch text-center"><input index="' + product.index + '" class="form-check-input productStatus" type="checkbox" checked="' + (product.status) + '" /></div></td>' +
                '</tr>';
        });

        tableBody.innerHTML = html;
    }

    function renderProductDetail() {
        listProductDetail = [];
        var tableCreate = document.getElementById('tableCreate');
        tableCreate.style.display = 'none';

        if (listMauSac.length !== 0 && listSize.length !== 0 && listCategory.length !== 0) {
            let index = 0;
            var tenSPValue = document.getElementById('tenSP').value;
            var donGia = document.getElementById('donGia').value;
            var soLuongTon = document.getElementById('soLuongTon').value;

            tableCreate.style.display = 'block';
            listMauSac.forEach(color => {
                listSize.forEach(size => {
                    listCategory.forEach(category => {
                        index++;
                        listProductDetail.push({
                            index: index,
                            colorId: color.id,
                            colorName: color.name,
                            sizeId: size.id,
                            sizeName: size.name,
                            categoryId: category.id,
                            categoryName: category.name,
                            quantity: soLuongTon,
                            money: donGia,
                            name: tenSPValue,
                            note: "",
                            status: true,
                            image: ""
                        })
                    })
                })
            })
        }
    }

    function getMoney() {
        var inputs = document.querySelectorAll('.productMoney');
        inputs.forEach(function(input) {
            var index = input.getAttribute('index');

            listProductDetail = listProductDetail.map(el => {
                if (parseInt(el.index) == parseInt(index)) {
                    el.money = input.value
                }
                return el;
            })
        });
    }

    function getQuantity() {
        var inputs = document.querySelectorAll('.productQuantity');
        inputs.forEach(function(input) {
            var index = input.getAttribute('index');

            listProductDetail = listProductDetail.map(el => {
                if (parseInt(el.index) == parseInt(index)) {
                    el.quantity = input.value
                }
                return el;
            })
        });
    }

    function getNote() {
        var inputs = document.querySelectorAll('.productNote');
        inputs.forEach(function(input) {
            var index = input.getAttribute('index');

            listProductDetail = listProductDetail.map(el => {
                if (parseInt(el.index) == parseInt(index)) {
                    el.note = input.value
                }
                return el;
            })
        });
    }

    function getStatus() {
        var inputs = document.querySelectorAll('.productStatus');
        inputs.forEach(function(input) {
            var index = input.getAttribute('index');

            listProductDetail = listProductDetail.map(el => {
                if (parseInt(el.index) == parseInt(index)) {
                    el.status = input.checked ? 1 : 0;
                }
                return el;
            })
        });
    }

    function getImages() {
        var inputs = document.querySelectorAll('.productImg');
        inputs.forEach(function(input) {
            var index = input.getAttribute('index');

            listProductDetail = listProductDetail.map(el => {
                if (parseInt(el.index) == parseInt(index)) {
                    el.image = input.value
                }
                return el;
            })
        });
    }

    window.onload = function () {
        if (id) {
            $('#bttCreate').hide();
            $('#bttUpdate').show();
        } else {
            $('#bttCreate').show();
            $('#bttUpdate').show();
        }
        // getAllHoaDon();
        // findHoaDonById();
        //
        // if (hoaDon.trangThai && (hoaDon.trangThai == 2 || hoaDon.trangThai == 8)) {
        //     $(".checkStatus").attr('disabled', 'disabled')
        // }
    };
</script>
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
</html>

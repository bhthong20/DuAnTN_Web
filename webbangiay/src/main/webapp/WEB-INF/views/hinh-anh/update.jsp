<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Camera</title>
    <link rel="stylesheet" href="../../vendors/feather/feather.css">
    <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="../../images/favicon.png"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div>
    <h1 style="text-align: center">Ảnh</h1>
    <br>
    <div>
        <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
            <li class="nav-item">
                <a class="nav-link" href="/hinh-anh/hien-thi" role="tab" onclick="return myFunction4()">Thông tin ảnh </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab"
                   aria-controls="description" aria-selected="true">Update</a>
            </li>
        </ul>
    </div>
    <div>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                <div>
                    <form:form action="/hinh-anh/update/${anh.id}" method="post" modelAttribute="anh"
                               enctype="multipart/form-data">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Thêm Ảnh</h4>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-4">
                                            <div style="display: none">
                                                <input style="" type="text" name="checkanh1" value="cu1" id="cucheck1">
                                                <br>
                                            </div>
                                            <div align="center">
                                                <br>
                                                <label style="border: 5px solid white;width: 150px;height: 150px;border-radius:50% 50% 50% 50%;"
                                                       for="anhmoi1">
                                                    <img id="preview-anh1-2" class="preview-image"
                                                         src="../../../uploads/${anh.anh1}" alt=""
                                                         width="100%" height="100%"
                                                         style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                                                    <br><br>
                                                    ẢNH
                                                </label>
                                                <br>
                                                <div style="display: none">
                                                    <input type="file" name="anh1s" accept="image/jpeg, image/png"
                                                           id="anhmoi1">
                                                </div>
                                            </div>
                                            <div style="display: none">
                                                <form:input path="anh1"/>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div style="display: none">
                                                <input style="" type="text" name="checkanh2" value="cu2" id="cucheck2">
                                                <br>
                                            </div>
                                            <div align="center">
                                                <br>
                                                <label style="border: 5px solid white;width: 150px;height: 150px;border-radius:50% 50% 50% 50%;"
                                                       for="anhmoi2">
                                                    <img id="preview-anh2-2" class="preview-image"
                                                         src="../../../uploads/${anh.anh2}" alt=""
                                                         width="100%" height="100%"
                                                         style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                                                    <br><br>
                                                    ẢNH
                                                </label>
                                                <br>
                                                <div style="display: none">
                                                    <input type="file" name="anh2s" accept="image/jpeg, image/png"
                                                           id="anhmoi2">
                                                </div>
                                            </div>
                                            <div style="display: none">
                                                <form:input path="anh2"/>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div style="display: none">
                                                <input style="" type="text" name="checkanh3" value="cu3" id="cucheck3">
                                                <br>
                                            </div>
                                            <div align="center">
                                                <br>
                                                <label style="border: 5px solid white;width: 150px;height: 150px;border-radius:50% 50% 50% 50%;"
                                                       for="anhmoi3">
                                                    <img id="preview-anh3-2" class="preview-image"
                                                         src="../../../uploads/${anh.anh3}" alt=""
                                                         width="100%" height="100%"
                                                         style="border-radius:50% 50% 50% 50%;border: 2px solid #8c8c8c">
                                                    <br><br>
                                                    ẢNH
                                                </label>
                                                <br>
                                                <div style="display: none">
                                                    <input type="file" name="anh3s" accept="image/jpeg, image/png"
                                                           id="anhmoi3">
                                                </div>
                                            </div>
                                            <div style="display: none">
                                                <form:input path="anh3"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <form:label path="ten"><b>Tên:</b></form:label>
                                    <form:input class="form-control" placeholder="" path="ten"/>
                                    <form:errors path="ten" cssClass="text-danger"/>
                                </div>
                                <div class="form-group">
                                    <form:label path="moTa"><b>Mô tả:</b></form:label>
                                    <form:input class="form-control" placeholder="" path="moTa"/>
                                    <form:errors path="moTa" cssClass="text-danger"/>
                                </div>
                            </div>
                            <div style="text-align: center">
                                <button type="submit" class="btn btn-primary mr-2" onclick="return myFunction2()">
                                    UPDATE
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
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
        let text = "Bạn chắc chắn muốn sang trang tình trạng đã xóa";
        let kt = confirm(text);
        if (kt == true) {
            confirm("Xóa thành công");
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
        let text = "Bạn chắc chắn muốn sang trang thêm thông tin";
        let kt = confirm(text);
        if (kt == true) {
            return true
        } else {
            return false;
        }
    }
</script>
<script>
    const imageInput1 = document.getElementById('anhmoi1');

    const previewAnh12 = document.getElementById('preview-anh1-2');

    imageInput1.addEventListener('change', function () {
        const file = imageInput1.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                previewAnh12.src = e.target.result;
            };
            reader.readAsDataURL(file);
        } else {
            previewAnh12.src = '';
        }
        document.getElementById('cucheck1').value = 'moi1';
    });
    const imageInput2 = document.getElementById('anhmoi2');

    const previewAnh22 = document.getElementById('preview-anh2-2');

    imageInput2.addEventListener('change', function () {
        const file = imageInput2.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                previewAnh22.src = e.target.result;
            };
            reader.readAsDataURL(file);
        } else {
            previewAnh22.src = '';
        }
        document.getElementById('cucheck2').value = 'moi2';
    });
    const imageInput3 = document.getElementById('anhmoi3');

    const previewAnh32 = document.getElementById('preview-anh3-2');

    imageInput3.addEventListener('change', function () {
        const file = imageInput3.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                previewAnh32.src = e.target.result;
            };
            reader.readAsDataURL(file);
        } else {
            previewAnh32.src = '';
        }
        document.getElementById('cucheck3').value = 'moi3';
    });
</script>
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
</html>
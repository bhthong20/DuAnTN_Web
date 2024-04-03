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
</head>
<body>
<h4 style="text-align: center">Thương hiệu</h4>

<div class="container">
    <table class="table container">
        <tbody>
        <tr>
            <form action="/thuong-hieu/search" method="post">
                <td colspan="2" style="text-align: center">Tìm kiếm: <input type="text" name="search">
                    <button type="submit">Tìm kiếm</button>
                </td>
            </form>
            <td colspan="2" style="text-align: center">
                <button class="btn btn-info">
                    <a style="color: white;text-decoration: none" href="/thuong-hieu/view-add">Thêm mới</a>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div class="container">
    <table class="table container">
        <tr>
            <th>STT</th>
            <th>Id</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Xuất xứ</th>
            <th>Ngày tạo</th>
            <th>Ngày cập nhập</th>
            <th>Mô tả</th>
        </tr>
        <c:forEach items="${pageData.content}" var="i" varStatus="a">
            <tr>
                <td>${a.index+1}</td>
                <td>${i.id}</td>
                <td>${i.ten}</td>
                <td>${i.xuatSu}</td>
                <td>${i.ngayTao}</td>
                <td>${i.ngayCapNhat}</td>
                <td>${i.moTa}</td>
                <td>
                    <a href="/thuong-hieu/delete/${i.id}" class="btn btn-success"
                    >Delete</a>
                    <a href="/thuong-hieu/view-update/${i.id}" class="btn btn-success"
                    >Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:if test="${pageData.number > 0}">
                <li class="page-item">
                    <a class="page-link" href="/thuong-hieu/hien-thi?page=${pageData.number - 1}">Previous</a>
                </li>
            </c:if>
            <li class="page-item"><a class="page-link disabled" href="#">${pageData.number}</a></li>
            <li class="page-item"><a class="page-link" href="/thuong-hieu/hien-thi?page=${pageData.number + 1}">Next</a></li>
        </ul>
    </nav>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</html>
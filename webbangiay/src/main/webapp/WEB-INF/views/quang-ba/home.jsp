<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content=""/>

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

    <link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css"/>

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
</head>

<body style="background-color: #EBF0F5 !important;">

<jsp:include page="header.jsp"></jsp:include>

<section id="content" class="mt-4">
    <section id="banner__page" style="height: 100%">
        <img class="w-100"
             data-src="https://file.hstatic.net/1000356936/file/ch_banner_full_desktop_hp_1920x960px_1_d2efa97a8e5042babad039e94b892ecb.png"
             src="https://file.hstatic.net/1000356936/file/ch_banner_full_desktop_hp_1920x960px_1_d2efa97a8e5042babad039e94b892ecb.png"
             alt="">
        <div style="    right: 200px;
    bottom: 200px;" class="item-content-wrap position-absolute item-content-center">
            <div class="item-content-title main-subheader" style="color: #ffffff;text-align: right;font-size: 70px;
    line-height: 70px; font-weight: bolder;font-family: 'LibreItalic', 'Libre Bodoni', serif !important; font-style: italic;">
                Introducing<br>ZERØGRAND<br>REMASTERED
            </div>
            <div class="item-content-des" style="color: #ffffff;text-align: right;font-size: 30px;">Our Best Just Got
                Better
            </div>
            <div class="item-content-btn" style="color: #ffffff;text-align: right">
                        <span>
                            <a href="#" class="btn btn-dark">MUA NGAY</a>
                        </span>
                <span style="font-size: 22px; margin: 0 10px;line-height: 60px;"> | </span>
                <span>
                            <a href="#" class="btn btn-dark">TÌM HIỂU THÊM</a>
                        </span>
            </div>
        </div>
    </section>

    <section>
        <div class="row" id="listSanPham">
            <!-- Product cards will be rendered here -->
        </div>
        <!-- Pagination -->
        <nav aria-label="Page navigation example" class="pt-4 d-flex align-items-end justify-content-center">
            <ul id="pagination" class="pagination m-0">
                <!-- Pagination buttons will be rendered here -->
            </ul>
        </nav>
    </section>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
<script>

    function getListData() {
        const pageing = document.getElementById("pagination");
        let renderPage = '';

        $.ajax({
            type: "Get",
            url: "/home/rest/all",
            success: function (response) {
                console.log(response)
                renderCard(response.content);
                if (response.totalPages > 1) {
                    for (let i = 0; i < response.totalPages; i++) {
                        renderPage += `
                        <li class="page-item"><button onclick="currentPage(` + i + `)"
                        class="page-link bg-white ` + (response.pageable.pageNumber == i ? 'active' : '') + `" href="#">` + (i + 1) + `</button></li>
                    `;
                    }
                    pageing.innerHTML = renderPage;
                }
            },
            error: function (xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }
    console.log(getListData());
    function renderCard(listCard) {
        const listSanPham = document.getElementById("listSanPham");
        let html = '';
        let index = 0;
        if (listCard && listCard.length !== 0) {
            listCard.forEach(el => {
                console.log(el)
                index++;
                html += `
                <div class="col-3 mt-4">
                    <div class="card card__product">
                        <div class="position-relative" style="overflow: hidden">
                            <img src="../../../uploads/` + el.hinhAnh + `"
                                 class="card-img-top" alt="...">
                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                 class="position-absolute w-100" style="left: 0;
    bottom: 0;"/>
                        </div>
                        <div class="card-body shopee_ic">
                            <h5 class="card-title">` + el.tenSanPham + `</h5>
                            <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">
                                    ` + el.moTa + `
                                </div>
                            </div>
                            <div class="flex-1 flex flex-col justify-between">
                                <div class="mb-2 flex items-center">
                                    <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                        <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                            <span aria-label="promotion price"></span>
                                            <div class="truncate flex items-baseline"><span
                                                    class="text-base/5 truncate">` + (el.donGia) + ` VNĐ</span><span
                                                    class="text-xs/sp14"></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                    <div class="rating">
                                        <input value="5" name="rate` + index + `" id="star5` + el.idSanPham + `" type="radio">
                                        <label title="text" for="star5` + el.idSanPham + `"></label>
                                        <input value="4" name="rate` + index + `" id="star4` + el.idSanPham + `" type="radio">
                                        <label title="text" for="star4` + el.idSanPham + `"></label>
                                        <input value="3" name="rate` + index + `" id="star3` + el.idSanPham + `" type="radio" checked="">
                                        <label title="text" for="star3` + el.idSanPham + `"></label>
                                        <input value="2" name="rate` + index + `" id="star2` + el.idSanPham + `" type="radio">
                                        <label title="text" for="star2` + el.idSanPham + `"></label>
                                        <input value="1" name="rate` + index + `" id="star1` + el.idSanPham + `" type="radio">
                                        <label title="text" for="star1` + el.idSanPham + `"></label>
                                    </div>
                                    <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                        Đã bán ` + el.luotMua + `
                                    </div>
                                </div>
                                <a href="/san-pham/` + el.idSanPham + `" class="btn btn-danger">Mua Ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            `
            })
        }
        listSanPham.innerHTML = html;
    }
</script>
</html>

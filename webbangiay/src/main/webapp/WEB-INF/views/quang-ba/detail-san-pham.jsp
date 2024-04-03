<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
-->
<!-- beautify ignore:start -->
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
    <script src="../assets/js/config.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>
    <script src="../js/menu.js"></script>
</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>

        <section id="content" class="mt-4" style="background-color: #f5f5f9;">
            <section class="container-fluid">
                <div class="row">
                    <div class="col-2 min-vh-100 card">
                        <h5 class="card-header">
                            Tìm kiếm sản phẩm</h5>
                        <hr class="m-0" />
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="html5-text-input" class="col-form-label">Tên giày</label>
                                <div>
                                    <input class="form-control" type="text" value="Sneat" id="html5-text-input"/>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="html5-text-input" class="col-form-label">Mã giày</label>
                                <div>
                                    <input class="form-control" type="text" value="Sneat" id="html5-text-input"/>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="html5-text-input" class="col-form-label">Mô tả</label>
                                <div>
                                    <input class="form-control" type="text" value="Sneat" id="html5-text-input"/>
                                </div>
                            </div>

                            <div class="divider">
                                <div class="divider-text">Màu sắc</div>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Xanh </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Đỏ </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Tím </label>
                            </div>

                            <div class="divider">
                                <div class="divider-text">Phân loại</div>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Giày cao cổ </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Giày thấp cổ </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Giày thể thao </label>
                            </div>

                            <div class="divider">
                                <div class="divider-text">Thương hiệu</div>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Sneaker </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> Adi dat </label>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1"> contruct </label>
                            </div>

                            <div class="divider">
                                <div class="divider-text">Giá thành</div>
                            </div>
                            <div class="form-check mb-3 p-0 d-flex justify-between align-items-center">
                                <input class="form-control" type="text" value="" id="html5-text-input" placeholder="Từ" />
                                <span class="d-flex justify-between align-items-center mx-2"> - </span>
                                <input class="form-control" type="text" value="" id="html5-text-input" placeholder="Đến"/>
                            </div>

                            <a href="#" class="btn btn-primary w-100">Tìm kiếm</a>
                        </div>
                    </div>
                    <div class="col-10 ps-4 ">
                        <section>
                            <h4 class="fw-bold py-3 m-0">
                                <svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 24 24"
                                     style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;">
                                    <path d="M4 6h2v2H4zm0 5h2v2H4zm0 5h2v2H4zm16-8V6H8.023v2H18.8zM8 11h12v2H8zm0 5h12v2H8z"></path>
                                </svg>
                                <span class="">Danh sách sản phẩm</span>
                            </h4>

                            <section class="list-product shopee-search-item-result">
                                <fieldset class="shopee-sort-bar" style="border: 0px;">
                                    <legend style="display: none;"></legend>
                                    <div class="shopee-sort-bar__label">Sắp xếp theo</div>
                                    <div class="shopee-sort-by-options">
                                        <section class="shopee-sort-by-options__option-group">
                                            <button aria-label="" aria-pressed="true"
                                                    class="shopee-sort-by-options__option shopee-sort-by-options__option--selected"
                                                    style="background-color: #696cff;"><span aria-hidden="true">Liên quan</span>
                                            </button>
                                            <button aria-label="" aria-pressed="false" class="shopee-sort-by-options__option">
                                                <span aria-hidden="true">Mới nhất</span></button>
                                            <button aria-label="" aria-pressed="false" class="shopee-sort-by-options__option">
                                                <span aria-hidden="true">Bán chạy</span></button>
                                        </section>
                                        <section>
                                            <div style="pointer-events: auto;">
                                                <select class="sort-price-select" id="exampleFormControlSelect1"
                                                        aria-label="Default select example">
                                                    <option selected>Giá</option>
                                                    <option value="1">Giá: Thấp đến cao</option>
                                                    <option value="2">Giá: Cao đến thấp</option>
                                                </select>
                                            </div>
                                        </section>
                                    </div>
                                </fieldset>
                            </section>

                            <section>
                                <div class="row">
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 mt-4">
                                        <div class="card card__product">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lllv9vshh4cv25_tn.webp"
                                                 class="card-img-top" alt="...">
                                            <img src="https://down-vn.img.susercontent.com/file/vn-50009109-caf8b883b8713804c28abfe16ed9ec0d"
                                                 class="position-absolute w-100"/>
                                            <div class="card-body shopee_ic">
                                                <h5 class="card-title">Giày thể thao
                                                    sneaker </h5>
                                                <div class="space-y-1 mb-1 flex-1 flex flex-col justify-between min-h-[4rem]">
                                                    <div class="line-clamp-2 break-words min-h-[2.5rem] text-sm">Giày thể thao
                                                        sneaker nam hot trend 2023 , đế cao su non 5cm êm chân , tôn dáng - G08
                                                        - 2Seven
                                                    </div>
                                                </div>
                                                <div class="flex-1 flex flex-col justify-between">
                                                    <div class="mb-2 flex items-center">
                                                        <div class="flex-shrink flex flex-row min-w-0 space-x-1 mr-1">
                                                            <div class="shrink-0 max-w-full truncate text-shopee-primary flex items-center font-normal">
                                                                <span aria-label="promotion price"></span>
                                                                <div class="truncate flex items-baseline"><span
                                                                        class="text-xs/sp14">₫</span><span
                                                                        class="text-base/5 truncate">125.000</span><span
                                                                        class="text-xs/sp14"></span></div>
                                                            </div>
                                                            <div class="flex-grow-0 flex-shrink  text-shopee-black26 line-through truncate flex items-center text-xs/sp14"
                                                                 aria-hidden="true">
                                                                <div class="truncate flex items-baseline"><span>₫</span><span
                                                                        class="truncate">250.000</span><span></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="text-shopee-primary font-medium bg-shopee-pink py-0.5 px-1 text-sp10/3 h-4 shrink-0 mr-1">
                                                            <span aria-label="-50%"></span>-50%
                                                        </div>
                                                    </div>
                                                    <div class="flex justify-between items-center space-x-1 mb-2 last:mb-0">
                                                        <div class="rating">
                                                            <input value="5" name="rate" id="star5" type="radio">
                                                            <label title="text" for="star5"></label>
                                                            <input value="4" name="rate" id="star4" type="radio">
                                                            <label title="text" for="star4"></label>
                                                            <input value="3" name="rate" id="star3" type="radio" checked="">
                                                            <label title="text" for="star3"></label>
                                                            <input value="2" name="rate" id="star2" type="radio">
                                                            <label title="text" for="star2"></label>
                                                            <input value="1" name="rate" id="star1" type="radio">
                                                            <label title="text" for="star1"></label>
                                                        </div>
                                                        <div class="truncate text-shopee-black87 text-xs min-h-4 flex-shrink-1">
                                                            Đã bán 5,3k
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-primary">Mua Ngay</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <nav aria-label="Page navigation example" class="pt-4 d-flex align-items-end justify-content-center">
                                    <ul class="pagination m-0">
                                        <li class="page-item">
                                            <a class="page-link bg-white" href="#" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <li class="page-item"><a class="page-link bg-white" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link bg-white" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link bg-white" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link bg-white" href="#" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </section>
                        </section>
                    </div>
                </div>
            </section>
        </section>

    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#carouselExample" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#carouselExample" data-bs-slide-to="1"></li>
            <li data-bs-target="#carouselExample" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="../assets/img/elements/13.jpg" alt="First slide" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>First slide</h3>
                    <p>Eos mutat malis maluisset et, agam ancillae quo te, in vim congue pertinacia.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../assets/img/elements/2.jpg" alt="Second slide" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Second slide</h3>
                    <p>In numquam omittam sea.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../assets/img/elements/18.jpg" alt="Third slide" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Third slide</h3>
                    <p>Lorem ipsum dolor sit amet, virtute consequat ea qui, minim graeco mel no.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExample" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExample" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </a>
    </div>




    <jsp:include page="footer.jsp"></jsp:include>

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
<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->
<script src="../assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="../../../js/select-2.js"></script>
</html>

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
<body>
    <section class="mb-4">
        <div class="row">
            <div class="col-3">
                <div class="card">
                    <h5 class="text-center card-header">Số lượng bán</h5>
                    <div class="card-body">
                        <h2 class="text-center">5.000👟</h2>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <h5 class="text-center card-header">Tổng doanh số</h5>
                    <div class="card-body">
                        <h2 class="text-center">1.000.000🪙</h2>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <h5 class="text-center card-header">Tổng tại quầy</h5>
                    <div class="card-body">
                        <h2 class="text-center">1.000.000🪙</h2>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <h5 class="text-center card-header">Tổng bán online</h5>
                    <div class="card-body">
                        <h2 class="text-center">1.000.000🪙</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="mb-4">
        <div class="card">
            <h4 class="card-header">Thống kê doanh thu</h4>
            <div class="card-body">
                <div id="columnChart"></div>
            </div>
        </div>
    </section>
    <section class="mb-4">
        <div class="row">
            <div style="min-height: 100%" class="col-8">
                <div style="height: 100%" class="card">
                    <h4 class="card-header">Danh sách sản phẩm</h4>
                    <div class="card-body">
                        <div class="table-responsive text-nowrap">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên Sp</th>
                                    <th>Số lượng tồn</th>
                                    <th>Số lượng bán</th>
                                    <th>Đơn giá</th>
                                    <th>Doanh thu</th>
                                </tr>
                                </thead>
                                <tbody class="table-border-bottom-2">
                                    <tr>
                                        <td>1</td>
                                        <td align="center" data-bs-toggle="modal" data-bs-target="#thongKeSanPham">
                                            <img src="../../../uploads/download.png" width="50" height="50"
                                            style="border-radius:50% 50% 50% 50%">
                                            <span class="text-primary cursor-pointer">Sản phẩm A</span>
                                        </td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>1.000.00 - 1.500.000</td>
                                        <td>10.000.00</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td align="center" data-bs-toggle="modal" data-bs-target="#thongKeSanPham">
                                            <img src="../../../uploads/download.png" width="50" height="50"
                                                 style="border-radius:50% 50% 50% 50%">
                                            <span class="text-primary cursor-pointer">Sản phẩm A</span>
                                        </td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>1.000.00 - 1.500.000</td>
                                        <td>10.000.00</td>
                                    </tr>
                                </tbody>
                            </table>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center pagination-lg mt-3 mb-0">
                                    <li class="page-item"><a class="page-link" href="/thuong-hieu/hien-thi?num=0">First</a>
                                    </li>
                                    <c:forEach begin="1" end="${total}" varStatus="status">
                                        <li class="page-item">
                                            <a href="${pageContext.request.contextPath}/thuong-hieu/hien-thi?num=${status.index -1}"
                                               class="page-link">${status.index}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item"><a class="page-link" href="/thuong-hieu/hien-thi?num=${total-1}">Last</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div style="min-height: 100%" class="col-4">
                <div style="height: 100%" class="card">
                    <h4 class="card-header">Thống kê sản phẩm</h4>
                    <div class="card-body">
                        <div id="lineChart"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade" id="thongKeSanPham"
         aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-xl modal-dialog-centered" style="min-width: 1400px;">
            <div class="modal-content">
                <div id="content">
                    <div class="modal-header">
                        <h4 class="modal-title">Thống kê chi tiết sản phẩm A</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="card mb-3">
                            <div id="lineChartCtsp"></div>
                        </div>
                        <div class="card">
                            <div class="table-responsive text-nowrap" style="max-height: 600px;">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Mã Sp</th>
                                        <th>Kích thước</th>
                                        <th>Màu sắc</th>
                                        <th>Chất liệu</th>
                                        <th>Số lượng tồn</th>
                                        <th>Số lượng bán</th>
                                        <th>Đơn giá</th>
                                        <th>Doanh thu</th>
                                    </tr>
                                    </thead>
                                    <tbody class="table-border-bottom-2">
                                    <tr>
                                        <td>1</td>
                                        <td align="center" data-bs-toggle="modal" data-bs-target="#thongKeSanPham">
                                            <img src="../../../uploads/download.png" width="50" height="50"
                                                 style="border-radius:50% 50% 50% 50%">
                                            <span class="text-primary cursor-pointer">Sản phẩm A</span>
                                        </td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>1.000.00 - 1.500.000</td>
                                        <td>10.000.00</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td align="center" data-bs-toggle="modal" data-bs-target="#thongKeSanPham">
                                            <img src="../../../uploads/download.png" width="50" height="50"
                                                 style="border-radius:50% 50% 50% 50%">
                                            <span class="text-primary cursor-pointer">Sản phẩm A</span>
                                        </td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>1.000.00 - 1.500.000</td>
                                        <td>10.000.00</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td align="center" data-bs-toggle="modal" data-bs-target="#thongKeSanPham">
                                            <img src="../../../uploads/download.png" width="50" height="50"
                                                 style="border-radius:50% 50% 50% 50%">
                                            <span class="text-primary cursor-pointer">Sản phẩm A</span>
                                        </td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>20</td>
                                        <td>10</td>
                                        <td>1.000.00 - 1.500.000</td>
                                        <td>10.000.00</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<script src="../../vendors/js/vendor.bundle.base.js"></script>
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
    function columnChart() {
        var options = {
            series: [{
                name: 'Bán hàng online',
                data: [44, 55, 41, 67, 22, 43]
            }, {
                name: 'Bán hàng tại quầy',
                data: [13, 23, 20, 8, 13, 27]
            }],
            chart: {
                type: 'bar',
                height: 350,
                stacked: true,
                toolbar: {
                    show: true
                },
                zoom: {
                    enabled: true
                }
            },
            responsive: [{
                breakpoint: 480,
                options: {
                    legend: {
                        position: 'bottom',
                        offsetX: -10,
                        offsetY: 0
                    }
                }
            }],
            plotOptions: {
                bar: {
                    horizontal: false,
                    borderRadius: 10,
                    borderRadiusApplication: 'end', // 'around', 'end'
                    borderRadiusWhenStacked: 'last', // 'all', 'last'
                    dataLabels: {
                        total: {
                            enabled: true,
                            style: {
                                fontSize: '13px',
                                fontWeight: 900
                            }
                        }
                    }
                },
            },
            xaxis: {
                categories: ['01/01/2011 GMT', '01/02/2011 GMT', '01/03/2011 GMT', '01/04/2011 GMT',
                    '01/05/2011 GMT', '01/06/2011 GMT'
                ],
            },
            legend: {
                position: 'right',
                offsetY: 40
            },
            fill: {
                opacity: 1
            }
        };

        var chart = new ApexCharts(document.querySelector("#columnChart"), options);
        chart.render();
    }

    function lineChart(series, xaxis, lineChart) {
        var options = {
            series: series,
            chart: {
                height: 350,
                type: 'line',
                dropShadow: {
                    enabled: true,
                    color: '#000',
                    top: 18,
                    left: 7,
                    blur: 10,
                    opacity: 0.2
                },
                zoom: {
                    enabled: true
                },
                toolbar: {
                    show: true
                }
            },
            colors: ['#77B6EA', '#545454'],
            dataLabels: {
                enabled: true,
            },
            stroke: {
                curve: 'smooth'
            },
            grid: {
                borderColor: '#e7e7e7',
                row: {
                    colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                    opacity: 0.5
                },
            },
            markers: {
                size: 1
            },
            xaxis: xaxis,
            yaxis: {
                min: 5,
                max: 40
            },
            legend: {
                position: 'top',
                horizontalAlign: 'right',
                floating: true,
                offsetY: -25,
                offsetX: -5
            }
        };

        var chart = new ApexCharts(document.querySelector("#" + lineChart), options);
        chart.render();
    }

    columnChart();
    lineChart([
        {
            name: "Sản phẩm 1",
            data: [28, 29, 33, 36, 32, 32, 33, 33, 36, 32, 32, 33]
        },
        {
            name: "Sản phẩm 2",
            data: [12, 11, 14, 18, 17, 13, 13, 14, 18, 17, 13, 13]
        },
        {
            name: "Sản phẩm 3",
            data: [1, 2, 3, 4, 5, 6, 7, 3, 4, 5, 6, 7]
        }
    ], {
        categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12'],
    }, 'lineChart');
    lineChart([
        {
            name: "Sản phẩm 1",
            data: [28, 29, 33, 36, 32, 32, 33, 33, 36, 32, 32, 33]
        },
        {
            name: "Sản phẩm 2",
            data: [12, 11, 14, 18, 17, 13, 13, 14, 18, 17, 13, 13]
        },
        {
            name: "Sản phẩm 3",
            data: [1, 2, 3, 4, 5, 6, 7, 3, 4, 5, 6, 7]
        }
    ], {
        categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12'],
    }, 'lineChartCtsp');

</script>
</html>

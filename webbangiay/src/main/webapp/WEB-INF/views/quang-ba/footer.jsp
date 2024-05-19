<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>--%>

<%--    <footer id="footer" class="site-footer mt-5">--%>
<%--        <div class="container">--%>
<%--            <div style="font-size: 16px;--%>
<%--    line-height: 20px;--%>
<%--    color: #57585A;--%>
<%--    text-align: center;" class="coppy-right">©IVYmoda All rights reserved</div>--%>
<%--        </div>--%>
<%--        <!-- .container -->--%>
<%--    </footer>--%>
<%--</body>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="css/style.css">

    <title>Footer 02</title>
<%--    <style>--%>
<%--        footer {--%>
<%--            background-color: #f2f2f2; /* Đổi màu nền thành màu xám ghi */--%>
<%--            padding: 40px 0;--%>
<%--        }--%>

<%--        .footer-content {--%>
<%--            margin: 0 auto;--%>
<%--            max-width: 1200px; /* Thay đổi max-width cho phù hợp */--%>
<%--            padding: 0 20px;--%>
<%--        }--%>

<%--        .footer-col h4 {--%>
<%--            font-size: 16px; /* Tăng kích thước font cho tiêu đề */--%>
<%--            margin-bottom: 15px;--%>
<%--            color: #333; /* Đổi màu chữ cho tiêu đề */--%>
<%--        }--%>

<%--        .footer-col p {--%>
<%--            font-size: 14px;--%>
<%--            line-height: 1.6;--%>
<%--            color: #666; /* Đổi màu chữ cho nội dung */--%>
<%--        }--%>

<%--        .footer-col p strong {--%>
<%--            font-weight: 600; /* Tăng độ đậm cho phần in đậm */--%>
<%--        }--%>

<%--        .footer-infomation ul li a {--%>
<%--            color: #555; /* Đổi màu chữ cho các liên kết */--%>
<%--        }--%>

<%--        .footer-link li a {--%>
<%--            color: #555; /* Đổi màu chữ cho các liên kết trong phần footer-link */--%>
<%--        }--%>

<%--        .footer-link li a:hover {--%>
<%--            color: #333; /* Đổi màu chữ khi di chuột qua các liên kết */--%>
<%--        }--%>

<%--        .list-social li a {--%>
<%--            color: #555; /* Đổi màu chữ cho các biểu tượng mạng xã hội */--%>
<%--        }--%>

<%--        .list-social li a:hover {--%>
<%--            color: #333; /* Đổi màu chữ khi di chuột qua biểu tượng mạng xã hội */--%>
<%--        }--%>
<%--        #footer {--%>
<%--            clear: both;--%>
<%--            -webkit-box-sizing: border-box;--%>
<%--            -moz-box-sizing: border-box;--%>
<%--            box-sizing: border-box;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        #footer * {--%>
<%--            -webkit-box-sizing: border-box;--%>
<%--            -moz-box-sizing: border-box;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>

<%--        .footer-content {--%>
<%--            margin: 0 auto;--%>
<%--            padding: 41px 0 32px 0;--%>
<%--            max-width: 1400px;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        .footer-content .footer-row {--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .footer-content .footer-block-1 {--%>
<%--            float: left;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            list-style: none;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation>li {--%>
<%--            margin: 0;--%>
<%--            padding: 0 0 12px 12px;--%>
<%--            float: left;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation>li span {--%>
<%--            display: block;--%>
<%--            margin: 0;--%>
<%--            padding: 0 0 6px 0;--%>
<%--            color: #acacac;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.635;--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation>li ul {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            list-style: none;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation>li ul li {--%>
<%--            margin: 0;--%>
<%--            padding: 0 0 6px 0;--%>
<%--        }--%>

<%--        .footer-content .footer-navigation>li ul li a {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            color: #000;--%>
<%--            font-size: 11.77433px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.3;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 {--%>
<%--            float: left;--%>
<%--            margin: 0;--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 span {--%>
<%--            display: block;--%>
<%--            margin: 0 0 0 0;--%>
<%--            padding: 0 0 20px 0;--%>
<%--            color: #acacac;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.635;--%>
<%--            text-transform: uppercase;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 p {--%>
<%--            margin: 0 0 0 0;--%>
<%--            padding: 0 0 4px 0;--%>
<%--            color: #000;--%>
<%--            font-size: 12px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.3;--%>
<%--            margin-right: 1px;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 p.hours-header {--%>
<%--            text-transform: uppercase;--%>
<%--            padding: 4px 0 12px 0;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 p.phone {--%>
<%--            font-size: 20px;--%>
<%--            padding: 20px 0;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 p.phone a {--%>
<%--            color: rgba(255, 255, 255, 0.8);--%>
<%--            cursor: text;--%>
<%--            font-size: 15px;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 ul {--%>
<%--            height: auto;--%>
<%--            min-height: 36px;--%>
<%--            width: 100%;--%>
<%--            max-width: 308px;--%>
<%--            padding: 0;--%>
<%--            list-style: none;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 ul li {--%>
<%--            margin: 0 8px 8px 0;--%>
<%--            padding: 0 0 0 0;--%>
<%--            width: 36px;--%>
<%--            height: 36px;--%>
<%--            float: left;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 ul li a {--%>
<%--            display: block;--%>
<%--            width: 36px;--%>
<%--            height: 36px;--%>
<%--            border: 1px solid #808285;--%>
<%--            border-radius: 36px;--%>
<%--            color: #969696;--%>
<%--            font-weight: 400;--%>
<%--            font-size: 23px;--%>
<%--            letter-spacing: 2px;--%>
<%--            line-height: 35px;--%>
<%--            text-align: center;--%>
<%--            -webkit-transition-property: border-color;--%>
<%--            -moz-transition-property: border-color;--%>
<%--            -o-transition-property: border-color;--%>
<%--            transition-property: border-color;--%>
<%--            -webkit-transition-property: color;--%>
<%--            -moz-transition-property: color;--%>
<%--            -o-transition-property: color;--%>
<%--            transition-property: color;--%>
<%--            -webkit-transition-duration: 0.3s;--%>
<%--            -moz-transition-duration: 0.3s;--%>
<%--            -o-transition-duration: 0.3s;--%>
<%--            transition-duration: 0.3s;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 ul li a:hover,--%>
<%--        .footer-content .footer-block-2 ul li a:focus,--%>
<%--        .footer-content .footer-block-2 ul li a:active {--%>
<%--            border-color: #b4b5b7;--%>
<%--            color: #b4b5b7;--%>
<%--            text-decoration: none;--%>
<%--        }--%>

<%--        .footer-content .footer-block-2 ul li i {--%>
<%--            display: block;--%>
<%--            width: 35px;--%>
<%--            height: 35px;--%>
<%--            margin-top: 6px;--%>
<%--        }--%>



<%--        .locale-copyright {--%>
<%--            margin: 30px 0 0 0;--%>
<%--            z-index: 1;--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .locale-copyright a.locale {--%>
<%--            margin: 0;--%>
<%--            padding: 0 18px 0 36px;--%>
<%--            color: #ffffff;--%>
<%--            color: rgba(255, 255, 255, 0.8);--%>
<%--            font-size: 11.77433px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.3;--%>
<%--            text-transform: uppercase;--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .locale-copyright a.locale .icon-change_country {--%>
<%--            font-size: 27px;--%>
<%--            width: 27px;--%>
<%--            height: 27px;--%>
<%--            position: absolute;--%>
<%--            top: -9px;--%>
<%--            left: 0;--%>
<%--        }--%>

<%--        .locale-copyright .copyright {--%>
<%--            margin: 0;--%>
<%--            padding: 0 18px 0 18px;--%>
<%--            color: #ffffff;--%>
<%--            color: rgba(255, 255, 255, 0.8);--%>
<%--            font-size: 11.77433px;--%>
<%--            font-weight: 400;--%>
<%--            line-height: 1.3;--%>
<%--            text-transform: uppercase;--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .locale-copyright .copyright:after {--%>
<%--            content: '';--%>
<%--            background: #acacac;--%>
<%--            display: block;--%>
<%--            height: 30px;--%>
<%--            width: 1px;--%>
<%--            position: absolute;--%>
<%--            top: -7px;--%>
<%--            left: 0px;--%>
<%--        }--%>
<%--        .footer-col h4{--%>
<%--            font-size: 14px;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        .footer-col p{--%>
<%--            font-size: 14px;--%>
<%--            font-weight: 400;--%>
<%--        }--%>
<%--        .footer-col p strong{--%>
<%--            display: block;--%>
<%--            margin-bottom: 2px;--%>
<%--        }--%>
<%--        .footer-infomation ul li{margin-bottom:10px;}--%>
<%--        .footer-infomation ul li a{--%>
<%--            font-size:14px;--%>
<%--            color:#000;--%>
<%--            text-decoration:underline;--%>
<%--            font-weight:400;--%>
<%--        }--%>
<%--        .footer-social{margin-top: 30px;}--%>
<%--        .footer-social .list-social li{--%>
<%--            display: inline-block;--%>
<%--            margin-right:10px;--%>
<%--        }--%>
<%--        .footer-social .list-social li a{--%>
<%--            font-size:22px;--%>
<%--            color:#000;--%>
<%--        }--%>
<%--        .footer-link li{margin-bottom:10px;}--%>
<%--        .footer-link li a{--%>
<%--            font-size:14px;--%>
<%--            color:#000;--%>
<%--        }--%>
<%--        .footer-link li a:hover{--%>
<%--            text-decoration: underline;--%>
<%--        }--%>
<%--        ul, ol {--%>
<%--            list-style: none;--%>
<%--            list-style-image: none;--%>
<%--        }--%>
<%--        .footer-col .footer-link a {--%>
<%--            text-decoration: none;--%>
<%--        }--%>
<%--    </style>--%>
    <style>
        footer {
            background-color: rgba(212,223,231,0.65); /* Đổi màu nền thành màu xám ghi */
            padding: 40px 0;
        }

        .footer-content {
            margin: 0 auto;
            max-width: 1200px; /* Thay đổi max-width cho phù hợp */
            padding: 0 20px;
        }

        .footer-col h4 {
            font-size: 16px; /* Tăng kích thước font cho tiêu đề */
            margin-bottom: 15px;
            color: #333; /* Đổi màu chữ cho tiêu đề */
        }

        .footer-col p {
            font-size: 14px;
            line-height: 1.6;
            color: #666; /* Đổi màu chữ cho nội dung */
        }

        .footer-col p strong {
            font-weight: 600; /* Tăng độ đậm cho phần in đậm */
        }

        .footer-infomation ul li a,
        .footer-link li a {
            color: #555; /* Đổi màu chữ cho các liên kết */
        }

        .footer-link li a:hover,
        .list-social li a:hover {
            color: #333; /* Đổi màu chữ khi di chuột qua các liên kết và biểu tượng mạng xã hội */
        }
    </style>
</head>
<body>
<footer>
    <div class="footer-content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 footer-col footer-infomation">
                    <div class="footer-block">
                        <h4>Thông tin liên hệ</h4>
                        <p>
                            Công ty Cổ phần Đầu Tư - Thương Mại Hiệp Bình <br>Địa chỉ: Số 100 Nguyễn Văn Trỗi,
                            Phường 8, Quận Phú Nhuận, TPHCM <br>Số ĐKKD 0304198785 do Sở Kế hoạch đầu tư TP HCM cấp
                            ngày 09/02/2006
                        </p>
                        <p>
                            THỜI GIAN LÀM VIỆC<strong>Thứ 2 - thứ 6 hàng tuần,</strong><span> 8.00 giờ sáng – 5.00
									giờ chiều</span>
                        </p>
                        <ul>

                            <li><a href="mailto:eccocare@tbsretail.vn<br>">eccocare@tbsretail.vn<br></a></li>


                            <li><a href="tel:Hotline:(028)39255200">Hotline: (028) 39 255 200</a></li>

                        </ul>

                    </div>

                    <div class="footer-new-support">
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/eccoshoesvietnam/" target="_blank">
                                    <svg width="46" height="46" fill="none" stroke="currentColor"
                                         stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                         viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.862 9.862 0 0 1-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8Z">
                                        </path>
                                    </svg>
                                    <span>Chat</span>
                                </a>
                            </li>
                            <li>
                                <a href="0919390371" target="_blank">
                                    <svg width="46" height="46" fill="none" stroke="currentColor"
                                         stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                         viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M3.586 3.586A2 2 0 0 0 3 5v1c0 8.284 6.716 15 15 15h1a2 2 0 0 0 2-2v-3.279a1 1 0 0 0-.684-.949l-4.493-1.498a1 1 0 0 0-1.21.502l-1.13 2.257a11.042 11.042 0 0 1-5.516-5.516l2.257-1.13a1 1 0 0 0 .502-1.21L9.228 3.684A1 1 0 0 0 8.28 3H5a2 2 0 0 0-1.414.586Z">
                                        </path>
                                    </svg>
                                    <span>0919390371</span>
                                </a>
                            </li>
                            <li>
                                <a href="mailto:ecom.tbsretail@gmail.com" target="_blank"
                                   class="trigger-email-popup">
                                    <svg width="46" height="46" fill="none" stroke="currentColor"
                                         stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                         viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M19 19H5a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2Z">
                                        </path>
                                        <path d="m3 8 7.89 5.26a2 2 0 0 0 2.22 0L21 8"></path>
                                    </svg>
                                    <span>Email</span>
                                </a>
                            </li>
                        </ul>
                    </div>


                    <div class="footer-col">
                        <div class="footer-social">
                            <h4>
                                KẾT NỐI VỚI ECCO
                            </h4>
                            <ul class="list-social">

                                <li><a href="https://www.facebook.com/eccoshoesvietnam/"><img
                                        src="https://file.hstatic.net/1000143422/file/icons8-facebook-50_c6132bb0443e424e843ed37694a654a7.png"
                                        alt="fb" height="25"></a></li>


                                <li><a href="https://www.instagram.com/ecco/"><img
                                        src="https://file.hstatic.net/1000143422/file/z3849251114929_4bbd13ca8e335d36b0a2f1fd4195b41a_de85a68bbbec429bafba94ca15e94c5b.jpg"
                                        alt="instagram" height="22"></a></li>


                                <li><a href="https://www.youtube.com/user/eccosko"><img
                                        src="https://file.hstatic.net/1000143422/file/icons8-youtube-48_d4b7720b7f9342498ebd7b3a26fc20d6.png"
                                        alt="youtube" height="25"></a></li>


                                <li><a href="https://www.tiktok.com/@ecco"><img
                                        src="https://file.hstatic.net/1000143422/file/tiktok-icon_4b848a254396446386d97c384523301d.png"
                                        alt="zalo" height="25"></a></li>


                                <li><a href="https://eccovietnam.vn/pages/lien-he"><img
                                        src="https://file.hstatic.net/1000143422/file/mail-250_174aef1087354aa194fca0dd13194a1d.png"
                                        alt="email" height="25"></a></li>

                            </ul>
                        </div>


                        <a class="hidden-xs" href="http://online.gov.vn/Home/WebDetails/32098" target="_blank"><img
                                src="//theme.hstatic.net/1000143422/1001234326/14/logo-bct.png?v=90"
                                style="width:150px;"></a>

                    </div>

                </div>

                <div class="col-lg-3 col-sm-3 col-xs-12 visible-lg"></div>

                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 footer-col">
                    <div class="footer-block">
                        <h4>Hỗ trợ khách hàng</h4>
                        <ul class="footer-link">

                            <li><a href="/pages/faqs">Hỏi Đáp</a></li>

                            <li><a href="/pages/huong-dan-dat-hang-1">Hướng dẫn đặt hàng</a></li>

                            <li><a href="/pages/phuong-thuc-thanh-toan">Phương thức thanh toan</a></li>

                            <li><a href="/pages/huong-dan-bao-quan-san-pham">Hướng dẫn chăm sóc sản phẩm</a></li>

                            <li><a href="/pages/stores-addresses">Hệ Thống Cửa Hàng</a></li>

                            <li><a href="http://global.ecco.com/">ECCO Toàn Cầu</a></li>

                        </ul>
                    </div>

                </div>


                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 footer-col">
                    <div class="footer-block">
                        <h4>Chính sách </h4>
                        <ul class="footer-link">

                            <li><a href="/pages/khach-hang-vip">Chính sách thành viên TBS Retail</a></li>

                            <li><a href="/pages/chinh-sach-giao-hang">Chính Sách Giao Hàng</a></li>

                            <li><a href="/pages/chinh-sach-bao-hanh">Chính Sách Bảo Hành &amp; Đổi sản phẩm</a></li>

                            <li><a href="/pages/chinh-sach-bao-mat">Chính Sách Bảo Mật</a></li>

                            <li><a href="/pages/dieu-khoan-va-dieu-kien">Điều Khoản Sử Dụng</a></li>

                        </ul>
                    </div>

                </div>


                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 footer-col">
                    <div class="footer-block">
                        <h4>Giới thiệu</h4>
                        <ul class="footer-link">

                            <li><a href="https://www.eccovietnam.vn/pages/explore-ecco">Khám phá ECCO</a></li>

                            <li><a href="/pages/di-san">Di Sản ECCO</a></li>

                            <li><a href="/pages/lich-su-thuong-hieu">Lịch Sử Thương Hiệu</a></li>

                            <li><a href="https://www.eccovietnam.vn/pages/shoe-making-technology">Công Nghệ Đột
                                Phá</a></li>

                            <li><a href="/pages/phat-trien-ben-vung-1">Phát Triển Bền Vững</a></li>

                        </ul>
                    </div>

                </div>

                <div class=" col-xs-12 visible-xs">

                    <a href="http://online.gov.vn/Home/WebDetails/32098" target="_blank"><img
                            src="//theme.hstatic.net/1000143422/1001234326/14/logo-bct.png?v=90"
                            style="width:150px;"></a>

                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
    </div>
</footer>
<%--<div class="content ">--%>
<%--    <div class="col-md-12 col-sm-12 col-xs-12">--%>
<%--        <h2 class="text-center"><a href="/chinh-sach-1" title="Be Classy"><strong>Be Classy</strong></a></h2>--%>
<%--        <div class="clearfix row">--%>

<%--            <div class="col-md-3 col-sm-6 col-xs-12 news-items">--%>
<%--                <a href="/madeinvietnam" title="SẢN XUẤT TẠI VIỆT NAM" class="clearfix">--%>
<%--                    <div class="evo-article-image">--%>

<%--                        <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930" alt="SẢN XUẤT TẠI VIỆT NAM" class="img-responsive center-block">--%>

<%--                    </div>--%>
<%--                    <h3 class="text">SẢN XUẤT TẠI VIỆT NAM</h3>--%>
<%--                    <p class="">--%>

<%--                        Từ những nghệ nhân đóng giày dày dạn kinh nghiệm với&nbsp;mong muốn mang đến cho&nbsp;Quý Ông đôi giày mang Thương Hiệu Việt&nbsp;chất lượng tốt nhất.--%>

<%--                    </p>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--            <div class="col-md-3 col-sm-6 col-xs-12 news-items">--%>
<%--                <a href="/da-bo-that" title="VẬT TƯ NHẬP KHẨU" class="clearfix">--%>
<%--                    <div class="evo-article-image">--%>

<%--                        <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127" alt="VẬT TƯ NHẬP KHẨU" class="img-responsive center-block">--%>

<%--                    </div>--%>
<%--                    <h3 class="line-clamp">VẬT TƯ NHẬP KHẨU</h3>--%>
<%--                    <p class="">--%>

<%--                        Giày được làm từ những mảng da bò Ý,&nbsp;chọn lọc kỹ càng để đảm bảo thành phẩm là một đôi giày chất lượng và lên màu giày chuẩn nhất.--%>

<%--                    </p>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--            <div class="col-md-3 col-sm-6 col-xs-12 news-items">--%>
<%--                <a href="/phom-giay-danh-rieng-cho-quy-ong-viet" title="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT" class="clearfix">--%>
<%--                    <div class="evo-article-image">--%>

<%--                        <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937" alt="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT" class="img-responsive center-block">--%>

<%--                    </div>--%>
<%--                    <h3 class="line-clamp">LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT</h3>--%>
<%--                    <p class="">--%>

<%--                        Với châm ngôn “Giày Tây dành cho Ta” - Be Classy thiết kế Phom (Last)&nbsp;giày phù hợp với phom chân chuẩn của Quý Ông Việt.--%>

<%--                    </p>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--            <div class="col-md-3 col-sm-6 col-xs-12 news-items">--%>
<%--                <a href="/baohanh3nam" title="BẢO HÀNH 3 NĂM" class="clearfix">--%>
<%--                    <div class="evo-article-image">--%>

<%--                        <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633" alt="BẢO HÀNH 3 NĂM" class="img-responsive center-block">--%>

<%--                    </div>--%>
<%--                    <h3 class="line-clamp">BẢO HÀNH 3 NĂM</h3>--%>
<%--                    <p class="">--%>

<%--                        Chính sách Bảo Hành - Bảo Dưỡng miễn phí trong&nbsp;3 Năm, nhằm hỗ trợ quý&nbsp;khách hàng tốt nhất trong quá trình sử dụng giày.--%>

<%--                    </p>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<footer class="footer-32892 pb-0">--%>
<%--    <div class="site-section">--%>
<%--        <div class="container">--%>


<%--            <div class="row">--%>

<%--                <div class="col-md pr-md-5 mb-4 mb-md-0">--%>
<%--                    <h3>About Us</h3>--%>
<%--                    <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam itaque unde facere repellendus, odio et iste voluptatum aspernatur ratione mollitia tempora eligendi maxime est, blanditiis accusamus. Incidunt, aut, quis!</p>--%>
<%--                    <ul class="list-unstyled quick-info mb-4">--%>
<%--                        <li><a href="#" class="d-flex align-items-center"><span class="icon mr-3 icon-phone"></span> +1 291 3912 329</a></li>--%>
<%--                        <li><a href="#" class="d-flex align-items-center"><span class="icon mr-3 icon-envelope"></span> info@gmail.com</a></li>--%>
<%--                    </ul>--%>

<%--                    <form action="#" class="subscribe">--%>
<%--                        <input type="text" class="form-control" placeholder="Enter your e-mail">--%>
<%--                        <input type="submit" class="btn btn-submit" value="Send">--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--                <div class="col-md mb-4 mb-md-0">--%>
<%--                    <h3>Latest Tweet</h3>--%>
<%--                    <ul class="list-unstyled tweets">--%>
<%--                        <li class="d-flex">--%>
<%--                            <div class="mr-4"><span class="icon icon-twitter"></span></div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere unde omnis veniam porro excepturi.</div>--%>
<%--                        </li>--%>
<%--                        <li class="d-flex">--%>
<%--                            <div class="mr-4"><span class="icon icon-twitter"></span></div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere unde omnis veniam porro excepturi.</div>--%>
<%--                        </li>--%>
<%--                        <li class="d-flex">--%>
<%--                            <div class="mr-4"><span class="icon icon-twitter"></span></div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere unde omnis veniam porro excepturi.</div>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>


<%--                <div class="col-md-3 mb-4 mb-md-0">--%>
<%--                    <h3>Instagram</h3>--%>
<%--                    <div class="row gallery">--%>
<%--                        <div class="col-6">--%>
<%--                            <a href="#"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                            <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                        </div>--%>
<%--                        <div class="col-6">--%>
<%--                            <a href="#"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                            <a href="#"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="col-12">--%>
<%--                    <div class="py-5 footer-menu-wrap d-md-flex align-items-center">--%>
<%--                        <ul class="list-unstyled footer-menu mr-auto">--%>
<%--                            <li><a href="#">Home</a></li>--%>
<%--                            <li><a href="#">About</a></li>--%>
<%--                            <li><a href="#">Our works</a></li>--%>
<%--                            <li><a href="#">Services</a></li>--%>
<%--                            <li><a href="#">Blog</a></li>--%>
<%--                            <li><a href="#">Contacts</a></li>--%>
<%--                        </ul>--%>
<%--                        <div class="site-logo-wrap ml-auto">--%>
<%--                            <a href="#" class="site-logo">--%>
<%--                                Colorlib--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
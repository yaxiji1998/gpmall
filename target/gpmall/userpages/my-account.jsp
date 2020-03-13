<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>Floda - Flower eCommerce Bootstrap 4 Template</title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
<script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="../js/jquery.min.js"></script>
</head>

<body onload="load()">
<script>
    function load(){
        if(${sessionScope.user==null}){
            window.location.replace("/gpmall/index.html");
        }

        $.ajax({
            url:"/gpmall/address/findAddressByUserId.do",
            type:"POST",
            success:function (result) {
                if(result=="true"){
                    console.log("地址信息加载成功")
                }
            }
        });
        $.ajax({
            url:"/gpmall/order/findOrderByUserId.do",
            type: "POST",
            success:function (result) {
                console.log("订单信息加载成功");
            }
        });

    }

    function modifyAddress(id) {
        var addrName = $("#addrName"+id.toString()).val();
        var phoneNumber = $("#phoneNumber"+id.toString()).val();
        var addr = $("#addr"+id.toString()).val();
        var formData = new FormData();
        formData.append("id",id);
        formData.append("name",addrName);
        formData.append("phoneNumber",phoneNumber);
        formData.append("address",addr);
        $.ajax({
            url:"/gpmall/address/modifyAddressById.do",
            type:"POST",
            data:formData,
            processData: false,   // jQuery不要去处理发送的数据
            contentType: false,
            success:function (result) {
                if(result=="true"){
                    location.replace(location);
                }else {
                    alert("修改失败！");
                }
            }
        });
    }

    function receive(id) {
        var formData = new FormData();
        formData.append("id",id);
        $.ajax({
            url:"/order/receive.do",
            type:"POST",
            data:formData,
            processData: false,   // jQuery不要去处理发送的数据
            contentType: false,
            success:function (result) {
                if(result=="true"){
                    location.replace(location);
                }else {
                    alert("收货失败！");
                }
            }
        });
    }

    function modifyUserInfo() {
        if($("#current-pwd").val()!=${sessionScope.user.password}){
            alert("当前密码输入错误！");
        }else if($("#new-pwd").val()!=$("#confirm-pwd").val()){
            alert("两次密码输入不一致！");
        }else {
            //alert("ajax");
            var formData = new FormData();
            var uid = ${sessionScope.user.id};
            var age = $("#age").val();
            var gender = $("#gender").val();
            var phoneNumber = $("#phoneNumber").val();
            var email = $("#email").val();
            var password = $("#new-pwd").val();
            formData.append("id",uid);
            formData.append("age",age);
            formData.append("gender",gender);
            formData.append("phoneNumber",phoneNumber);
            formData.append("email",email);
            formData.append("password",password);
            $.ajax({
                url:"/gpmall/user/modifyUserInfo.do",
                type:"POST",
                data:formData,
                processData: false,   // jQuery不要去处理发送的数据
                contentType: false,
                success:function (result) {
                    location.replace(location);
                }
            });

        }
    }

    function logout() {
        $.ajax({
            url:"/gpmall/user/logout.do",
            type:"GET",
            success:function () {
                location.replace("/gpmall/index.html");
            }
        });
    }

</script>
    <!-- Start Header Area -->
    <header class="header-area">
        <!-- main header start -->
        <div class="main-header d-none d-lg-block">
            <!-- header top start -->
            <div class="header-top bdr-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <div class="welcome-message">
                                <p>Welcome to Floda online store</p>
                            </div>
                        </div>
                        <div class="col-lg-6 text-right">
                            <div class="header-top-settings">
                                <ul class="nav align-items-center justify-content-end">
                                    <li class="language">
                                        <span>Language:</span>
                                        <img src="assets/img/icon/en.png" alt="flag"> English
                                        <i class="fa fa-angle-down"></i>
                                        <ul class="dropdown-list">
                                            <li><a href="#"><img src="assets/img/icon/en.png" alt="flag"> english</a></li>
                                            <li><a href="#"><img src="assets/img/icon/fr.png" alt="flag"> french</a></li>
                                        </ul>
                                    </li>
                                    <li class="curreny-wrap">
                                        <span>Currency:</span>
                                        $ USD
                                        <i class="fa fa-angle-down"></i>
                                        <ul class="dropdown-list curreny-list">
                                            <li><a href="#">$ usd</a></li>
                                            <li><a href="#"> € EURO</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header top end -->

            <!-- header middle area start -->
            <div class="header-main-area sticky">
                <div class="container">
                    <div class="row align-items-center position-relative">

                        <!-- start logo area -->
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="index.jsp">
                                    <img src="assets/img/logo/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- start logo area -->

                        <!-- main menu area start -->
                        <div class="col-lg-6 position-static">
                            <div class="main-menu-area">
                                <div class="main-menu">
                                    <!-- main menu navbar start -->
                                    <nav class="desktop-menu">
                                        <ul>
                                            <li class="active"><a href="index.jsp">Home <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="index.jsp">Home version 01</a></li>
                                                    <li><a href="index-2.jsp">Home version 02</a></li>
                                                </ul>
                                            </li>
                                            <li class="static"><a href="#">pages <i class="fa fa-angle-down"></i></a>
                                                <ul class="megamenu dropdown">
                                                    <li class="mega-title"><a href="#">column 01</a>
                                                        <ul>
                                                            <li><a href="shop.jsp">shop grid left
                                                                    sidebar</a></li>
                                                            <li><a href="shop-grid-right-sidebar.jsp">shop grid right
                                                                    sidebar</a></li>
                                                            <li><a href="shop-list-left-sidebar.jsp">shop list left sidebar</a></li>
                                                            <li><a href="shop-list-right-sidebar.jsp">shop list right sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-title"><a href="#">column 02</a>
                                                        <ul>
                                                            <li><a href="product-details.jsp">product details</a></li>
                                                            <li><a href="product-details-affiliate.jsp">product
                                                                    details
                                                                    affiliate</a></li>
                                                            <li><a href="product-details-variable.jsp">product details
                                                                    variable</a></li>
                                                            <li><a href="product-details-group.jsp">product details
                                                                    group</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-title"><a href="#">column 03</a>
                                                        <ul>
                                                            <li><a href="cart.jsp">cart</a></li>
                                                            <li><a href="checkout.jsp">checkout</a></li>
                                                            <li><a href="compare.jsp">compare</a></li>
                                                            <li><a href="wishlist.jsp">wishlist</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="mega-title"><a href="#">column 04</a>
                                                        <ul>
                                                            <li><a href="my-account.jsp">my-account</a></li>
                                                            <li><a href="login-register.jsp">login-register</a></li>
                                                            <li><a href="contact-us.jsp">contact us</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="megamenu-banners d-none d-lg-block">
                                                        <a href="product-details.jsp">
                                                            <img src="assets/img/banner/img-bottom-menu.jpg" alt="">
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="shop.jsp">shop <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="#">shop grid layout <i class="fa fa-angle-right"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="shop.jsp">shop grid left sidebar</a></li>
                                                            <li><a href="shop-grid-right-sidebar.jsp">shop grid right sidebar</a></li>
                                                            <li><a href="shop-grid-full-3-col.jsp">shop grid full 3 col</a></li>
                                                            <li><a href="shop-grid-full-4-col.jsp">shop grid full 4 col</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">shop list layout <i class="fa fa-angle-right"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="shop-list-left-sidebar.jsp">shop list left sidebar</a></li>
                                                            <li><a href="shop-list-right-sidebar.jsp">shop list right sidebar</a></li>
                                                            <li><a href="shop-list-full-width.jsp">shop list full width</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">products details <i class="fa fa-angle-right"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="product-details.jsp">product details</a></li>
                                                            <li><a href="product-details-affiliate.jsp">product details affiliate</a></li>
                                                            <li><a href="product-details-variable.jsp">product details variable</a></li>
                                                            <li><a href="product-details-group.jsp">product details group</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="blog-left-sidebar.jsp">Blog <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="blog-left-sidebar.jsp">blog left sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.jsp">blog right sidebar</a></li>
                                                    <li><a href="blog-grid-full-width.jsp">blog grid no sidebar</a></li>
                                                    <li><a href="blog-details.jsp">blog details</a></li>
                                                    <li><a href="blog-details-left-sidebar.jsp">blog details left sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact-us.jsp">Contact us</a></li>
                                        </ul>
                                    </nav>
                                    <!-- main menu navbar end -->
                                </div>
                            </div>
                        </div>
                        <!-- main menu area end -->

                        <!-- mini cart area start -->
                        <div class="col-lg-3">
                            <div class="header-configure-wrapper">
                                <div class="header-configure-area">
                                    <ul class="nav justify-content-end">
                                        <li>
                                            <a href="#" class="offcanvas-btn">
                                                <i class="lnr lnr-magnifier"></i>
                                            </a>
                                        </li>
                                        <li class="user-hover">
                                            <a href="#">
                                                <i class="lnr lnr-user"></i>
                                            </a>
                                            <ul class="dropdown-list">
                                                <li><a href="login-register.jsp">login</a></li>
                                                <li><a href="login-register.jsp">register</a></li>
                                                <li><a href="my-account.jsp">my account</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="wishlist.jsp">
                                                <i class="lnr lnr-heart"></i>
                                                <div class="notification">0</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="minicart-btn">
                                                <i class="lnr lnr-cart"></i>
                                                <div class="notification">2</div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- mini cart area end -->

                    </div>
                </div>
            </div>
            <!-- header middle area end -->
        </div>
        <!-- main header start -->

        <!-- mobile header start -->
        <div class="mobile-header d-lg-none d-md-block sticky">
            <!--mobile header top start -->
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="mobile-main-header">
                            <div class="mobile-logo">
                                <a href="index.jsp">
                                    <img src="assets/img/logo/logo.png" alt="Brand Logo">
                                </a>
                            </div>
                            <div class="mobile-menu-toggler">
                                <div class="mini-cart-wrap">
                                    <a href="cart.jsp">
                                        <i class="lnr lnr-cart"></i>
                                    </a>
                                </div>
                                <div class="mobile-menu-btn">
                                    <div class="off-canvas-btn">
                                        <i class="lnr lnr-menu"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- mobile header top start -->
        </div>
        <!-- mobile header end -->
    </header>
    <!-- end Header Area -->

    <!-- off-canvas menu start -->
    <aside class="off-canvas-wrapper">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner-content">
            <div class="btn-close-off-canvas">
                <i class="lnr lnr-cross"></i>
            </div>

            <div class="off-canvas-inner">
                <!-- search box start -->
                <div class="search-box-offcanvas">
                    <form>
                        <input type="text" placeholder="Search Here...">
                        <button class="search-btn"><i class="lnr lnr-magnifier"></i></button>
                    </form>
                </div>
                <!-- search box end -->

                <!-- mobile menu start -->
                <div class="mobile-navigation">

                    <!-- mobile menu navigation start -->
                    <nav>
                        <ul class="mobile-menu">
                            <li class="menu-item-has-children"><a href="index.jsp">Home</a>
                                <ul class="dropdown">
                                    <li><a href="index.jsp">Home version 01</a></li>
                                    <li><a href="index-2.jsp">Home version 02</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">pages</a>
                                <ul class="megamenu dropdown">
                                    <li class="mega-title menu-item-has-children"><a href="#">column 01</a>
                                        <ul class="dropdown">
                                            <li><a href="shop.jsp">shop grid left
                                                    sidebar</a></li>
                                            <li><a href="shop-grid-right-sidebar.jsp">shop grid right
                                                    sidebar</a></li>
                                            <li><a href="shop-list-left-sidebar.jsp">shop list left sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.jsp">shop list right sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 02</a>
                                        <ul class="dropdown">
                                            <li><a href="product-details.jsp">product details</a></li>
                                            <li><a href="product-details-affiliate.jsp">product
                                                    details
                                                    affiliate</a></li>
                                            <li><a href="product-details-variable.jsp">product details
                                                    variable</a></li>
                                            <li><a href="product-details-group.jsp">product details
                                                    group</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 03</a>
                                        <ul class="dropdown">
                                            <li><a href="cart.jsp">cart</a></li>
                                            <li><a href="checkout.jsp">checkout</a></li>
                                            <li><a href="compare.jsp">compare</a></li>
                                            <li><a href="wishlist.jsp">wishlist</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 04</a>
                                        <ul class="dropdown">
                                            <li><a href="my-account.jsp">my-account</a></li>
                                            <li><a href="login-register.jsp">login-register</a></li>
                                            <li><a href="contact-us.jsp">contact us</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children "><a href="#">shop</a>
                                <ul class="dropdown">
                                    <li class="menu-item-has-children"><a href="#">shop grid layout</a>
                                        <ul class="dropdown">
                                            <li><a href="shop.jsp">shop grid left sidebar</a></li>
                                            <li><a href="shop-grid-right-sidebar.jsp">shop grid right sidebar</a></li>
                                            <li><a href="shop-grid-full-3-col.jsp">shop grid full 3 col</a></li>
                                            <li><a href="shop-grid-full-4-col.jsp">shop grid full 4 col</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">shop list layout</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-list-left-sidebar.jsp">shop list left sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.jsp">shop list right sidebar</a></li>
                                            <li><a href="shop-list-full-width.jsp">shop list full width</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">products details</a>
                                        <ul class="dropdown">
                                            <li><a href="product-details.jsp">product details</a></li>
                                            <li><a href="product-details-affiliate.jsp">product details affiliate</a></li>
                                            <li><a href="product-details-variable.jsp">product details variable</a></li>
                                            <li><a href="product-details-group.jsp">product details group</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children "><a href="#">Blog</a>
                                <ul class="dropdown">
                                    <li><a href="blog-left-sidebar.jsp">blog left sidebar</a></li>
                                    <li><a href="blog-right-sidebar.jsp">blog right sidebar</a></li>
                                    <li><a href="blog-grid-full-width.jsp">blog grid no sidebar</a></li>
                                    <li><a href="blog-details.jsp">blog details</a></li>
                                    <li><a href="blog-details-left-sidebar.jsp">blog details left sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-us.jsp">Contact us</a></li>
                        </ul>
                    </nav>
                    <!-- mobile menu navigation end -->
                </div>
                <!-- mobile menu end -->

                <div class="mobile-settings">
                    <ul class="nav">
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Currency
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="currency">
                                    <a class="dropdown-item" href="#">$ USD</a>
                                    <a class="dropdown-item" href="#">$ EURO</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    My Account
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="myaccount">
                                    <a class="dropdown-item" href="my-account.jsp">my account</a>
                                    <a class="dropdown-item" href="login-register.jsp"> login</a>
                                    <a class="dropdown-item" href="login-register.jsp">register</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- offcanvas widget area start -->
                <div class="offcanvas-widget-area">
                    <div class="off-canvas-contact-widget">
                        <ul>
                            <li><i class="fa fa-mobile"></i>
                                <a href="#">0123456789</a>
                            </li>
                            <li><i class="fa fa-envelope-o"></i>
                                <a href="#">info@yourdomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="off-canvas-social-widget">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
                <!-- offcanvas widget area end -->
            </div>
        </div>
    </aside>
    <!-- off-canvas menu end -->



    <!-- main wrapper start -->
    <main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area common-bg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <h1>my account</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">my account</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- my account wrapper start -->
        <div class="my-account-wrapper section-space pb-0">
            <div class="container">
                <div class="section-bg-color">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- My Account Page Start -->
                            <div class="myaccount-page-wrapper">
                                <!-- My Account Tab Menu Start -->
                                <div class="row">
                                    <div class="col-lg-3 col-md-4">
                                        <div class="myaccount-tab-menu nav" role="tablist">
                                            <a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
                                                我的</a>
                                            <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                                订单</a>
                                            <%--<a href="#download" data-toggle="tab"><i class="fa fa-cloud-download"></i>
                                                Download</a>--%>
                                            <%--<a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i>
                                                Payment
                                                Method</a>--%>
                                            <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i>
                                                地址</a>
                                            <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> 详细信息</a>
                                            <a onclick="logout()"><i class="fa fa-sign-out"></i> 退出</a>
                                        </div>
                                    </div>
                                    <!-- My Account Tab Menu End -->

                                    <!-- My Account Tab Content Start -->
                                    <div class="col-lg-9 col-md-8">
                                        <div class="tab-content" id="myaccountContent">
                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>我的</h3>
                                                    <div class="welcome">
                                                        <p>你好, <strong>${sessionScope.user.name}</strong> </p>
                                                    </div>
                                                    <p class="mb-0">你可以在这里很容易的检查，浏览你最近的订单，管理你的收货地址，以及修改密码和其他信息</p>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="orders" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>订单</h3>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>订单编号</th>
                                                                    <th>日期</th>
                                                                    <th>商品名称</th>
                                                                    <th>订单状态</th>
                                                                    <th>总价</th>
                                                                    <th>操作</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:if test="${sessionScope.orderList==null}">
                                                                <h3>您还没有订单哦，赶快去购物吧!</h3>
                                                            </c:if>
                                                            <c:forEach items="${orderList}" var="order">
                                                                <tr>
                                                                    <td>${order.id}</td>
                                                                    <td>${order.orderDate}</td>
                                                                    <td>${order.good.gname}</td>
                                                                    <td>${order.statusString}</td>
                                                                    <td>${order.amount}</td>
                                                                    <td><button class="btn btn__bg" onclick="receive(${order.id})">确认收货</button>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="download" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>Downloads</h3>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>Product</th>
                                                                    <th>Date</th>
                                                                    <th>Expire</th>
                                                                    <th>Download</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>Flowers daisy pink stick</td>
                                                                    <td>Aug 22, 2019</td>
                                                                    <td>Yes</td>
                                                                    <td><a href="#" class="btn btn__bg"><i
                                                                        class="fa fa-cloud-download"></i>
                                                                            Download File</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Orchid flower red stick</td>
                                                                    <td>Sep 12, 2019</td>
                                                                    <td>Never</td>
                                                                    <td><a href="#" class="btn btn__bg"><i
                                                                        class="fa fa-cloud-download"></i>
                                                                            Download File</a></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>Payment Method</h3>
                                                    <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>地址</h3>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                            <tr>
                                                                <th>收货人姓名</th>
                                                                <th>手机号</th>
                                                                <th>地址</th>
                                                                <th>操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach items="${sessionScope.addressList}" var="address">
                                                                <tr>
                                                                    <td><input type="text" value="${address.name}" id="addrName${address.id}"></td>
                                                                    <td><input type="text" value="${address.phoneNumber}" id="phoneNumber${address.id}"></td>
                                                                    <td><input type="text" value="${address.address}" id="addr${address.id}"></td>
                                                                    <td><button class="btn btn__bg" onclick="modifyAddress(${address.id})">确认修改</button>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="account-info" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h3>详细信息</h3>
                                                    <div class="account-details-form">

                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="gender" class="required">性别</label>
                                                                        <input type="text" id="gender" value="${sessionScope.user.gender}" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="age" class="required">年龄</label>
                                                                        <input type="text" id="age" value="${sessionScope.user.age}" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="single-input-item">
                                                                <label for="phoneNumber" class="required">手机号</label>
                                                                <input type="text" id="phoneNumber" value="${sessionScope.user.phoneNumber}" />
                                                            </div>
                                                            <div class="single-input-item">
                                                                <label for="email" class="required">邮箱</label>
                                                                <input type="email" id="email" value="${sessionScope.user.email}" />
                                                            </div>
                                                            <fieldset>
                                                                <legend>修改密码</legend>
                                                                <div class="single-input-item">
                                                                    <label for="current-pwd" class="required">当前密码</label>
                                                                    <input type="password" id="current-pwd" placeholder="当前密码" />
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-6">
                                                                        <div class="single-input-item">
                                                                            <label for="new-pwd" class="required">新密码</label>
                                                                            <input type="password" id="new-pwd" placeholder="新密码" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="single-input-item">
                                                                            <label for="confirm-pwd" class="required">确认密码</label>
                                                                            <input type="password" id="confirm-pwd" placeholder="确认密码" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                            <div class="single-input-item">
                                                                <button class="btn btn__bg" onclick="modifyUserInfo()">保存修改</button>
                                                            </div>

                                                    </div>
                                                </div>
                                            </div> <!-- Single Tab Content End -->
                                        </div>
                                    </div> <!-- My Account Tab Content End -->
                                </div>
                            </div> <!-- My Account Page End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->
    </main>
    <!-- main wrapper end -->

    <!-- Start Footer Area Wrapper -->
    <footer class="footer-wrapper">

        <!-- footer widget area start -->
        <div class="footer-widget-area">
            <div class="container">
                <div class="footer-widget-inner section-space">
                    <div class="row mbn-30">
                        <!-- footer widget item start -->
                        <div class="col-lg-5 col-md-6 col-sm-8">
                            <div class="footer-widget-item mb-30">
                                <div class="footer-widget-title">
                                    <h5>My account</h5>
                                </div>
                                <ul class="footer-widget-body accout-widget">
                                    <li class="address">
                                        <em><i class="lnr lnr-map-marker"></i></em>
                                        184 Main Rd E, St Albans VIC 3021, Australia
                                    </li>
                                    <li class="email">
                                        <em><i class="lnr lnr-envelope"></i>Mail us: </em>
                                        <a href="mailto:test@yourdomain.com">yourmail@gmail.com</a>
                                    </li>
                                    <li class="phone">
                                        <em><i class="lnr lnr-phone-handset"></i> Phones: </em>
                                        <a href="tel:(012)800456789-987">(012) 800 456 789-987</a>
                                    </li>
                                </ul>
                                <div class="payment-method">
                                    <img src="assets/img/payment-pic.png" alt="payment method">
                                </div>
                            </div>
                        </div>
                        <!-- footer widget item end -->

                        <!-- footer widget item start -->
                        <div class="col-lg-2 col-md-6 col-sm-4">
                            <div class="footer-widget-item mb-30">
                                <div class="footer-widget-title">
                                    <h5>categories</h5>
                                </div>
                                <ul class="footer-widget-body">
                                    <li><a href="#">Ecommerce</a></li>
                                    <li><a href="#">shopify</a></li>
                                    <li><a href="#">Prestashop</a></li>
                                    <li><a href="#">Opencart</a></li>
                                    <li><a href="#">Magento</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- footer widget item end -->

                        <!-- footer widget item start -->
                        <div class="col-lg-2 col-md-6 col-sm-6">
                            <div class="footer-widget-item mb-30">
                                <div class="footer-widget-title">
                                    <h5>information</h5>
                                </div>
                                <ul class="footer-widget-body">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Exchanges</a></li>
                                    <li><a href="#">Shipping</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- footer widget item end -->

                        <!-- footer widget item start -->
                        <div class="col-lg-2 offset-lg-1 col-md-6 col-sm-6">
                            <div class="footer-widget-item mb-30">
                                <div class="footer-widget-title">
                                    <h5>Quick Links</h5>
                                </div>
                                <ul class="footer-widget-body">
                                    <li><a href="#">Store Location</a></li>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">Orders Tracking</a></li>
                                    <li><a href="#">Size Guide</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- footer widget item end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- footer widget area end -->

        <!-- footer bottom area start -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 order-2 order-md-1">
                        <div class="copyright-text">
                            <p>Copyright ©All Right Reserved.</p>
                        </div>
                    </div>
                    <div class="col-md-6 order-1 order-md-2">
                        <div class="footer-social-link">
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer bottom area end -->

    </footer>
    <!-- End Footer Area Wrapper -->

    <!-- Quick view modal start -->
    <div class="modal" id="quick_view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5 col-md-5">
                                <div class="product-large-slider">
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                </div>
                                <div class="pro-nav slick-row-10 slick-arrow-style">
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div class="product-details-des quick-details">
                                    <h3 class="product-name">Orchid flower white stick</h3>
                                    <div class="ratings d-flex">
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <div class="pro-review">
                                            <span>1 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span class="price-regular">$70.00</span>
                                        <span class="price-old"><del>$90.00</del></span>
                                    </div>
                                    <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>
                                    <div class="product-countdown" data-countdown="2019/08/25"></div>
                                    <div class="availability">
                                        <i class="fa fa-check-circle"></i>
                                        <span>200 in stock</span>
                                    </div>
                                    <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                        eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
                                    <div class="quantity-cart-box d-flex align-items-center">
                                        <h5>qty:</h5>
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                        <div class="action_link">
                                            <a class="btn btn-cart2" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="useful-links">
                                        <a href="#" data-toggle="tooltip" title="Compare"><i
                                            class="lnr lnr-sync"></i>compare</a>
                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                            class="lnr lnr-heart"></i>wishlist</a>
                                    </div>
                                    <div class="like-icon">
                                        <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                        <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                        <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                        <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- product details inner end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->

    <!-- offcanvas search form start -->
    <div class="offcanvas-search-wrapper">
        <div class="offcanvas-search-inner">
            <div class="offcanvas-close">
                <i class="lnr lnr-cross"></i>
            </div>
            <div class="container">
                <div class="offcanvas-search-box">
                    <form class="d-flex bdr-bottom w-100">
                        <input type="text" placeholder="Search entire storage here...">
                        <button class="search-btn"><i class="lnr lnr-magnifier"></i>search</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas search form end -->

    <!-- offcanvas mini cart start -->
    <div class="offcanvas-minicart-wrapper">
        <div class="minicart-inner">
            <div class="offcanvas-overlay"></div>
            <div class="minicart-inner-content">
                <div class="minicart-close">
                    <i class="lnr lnr-cross"></i>
                </div>
                <div class="minicart-content-box">
                    <div class="minicart-item-wrapper">
                        <ul>
                            <li class="minicart-item">
                                <div class="minicart-thumb">
                                    <a href="product-details.jsp">
                                        <img src="assets/img/cart/cart-1.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.jsp">Flowers bouquet pink for all flower lovers</a>
                                    </h3>
                                    <p>
                                        <span class="cart-quantity">1 <strong>&times;</strong></span>
                                        <span class="cart-price">$100.00</span>
                                    </p>
                                </div>
                                <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                            </li>
                            <li class="minicart-item">
                                <div class="minicart-thumb">
                                    <a href="product-details.jsp">
                                        <img src="assets/img/cart/cart-2.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.jsp">Jasmine flowers white for all flower lovers</a>
                                    </h3>
                                    <p>
                                        <span class="cart-quantity">1 <strong>&times;</strong></span>
                                        <span class="cart-price">$80.00</span>
                                    </p>
                                </div>
                                <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                            </li>
                        </ul>
                    </div>

                    <div class="minicart-pricing-box">
                        <ul>
                            <li>
                                <span>sub-total</span>
                                <span><strong>$300.00</strong></span>
                            </li>
                            <li>
                                <span>Eco Tax (-2.00)</span>
                                <span><strong>$10.00</strong></span>
                            </li>
                            <li>
                                <span>VAT (20%)</span>
                                <span><strong>$60.00</strong></span>
                            </li>
                            <li class="total">
                                <span>total</span>
                                <span><strong>$370.00</strong></span>
                            </li>
                        </ul>
                    </div>

                    <div class="minicart-button">
                        <a href="cart.jsp"><i class="fa fa-shopping-cart"></i> view cart</a>
                        <a href="cart.jsp"><i class="fa fa-share"></i> checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas mini cart end -->

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->

    <!-- All vendor & plugins & active js include here -->
    <!--All Vendor Js -->
    <script src="assets/js/vendor.js"></script>
    <!-- Active Js -->
    <script src="assets/js/active.js"></script>
</body>

</html>
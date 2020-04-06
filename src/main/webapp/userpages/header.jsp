<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2020/3/13
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p>Welcome to GraduationProject online store</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <div class="header-top-settings">
                            <!--<ul class="nav align-items-center justify-content-end">
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
                            </ul>-->
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
                                        <li class="active"><a href="index.jsp">主页 <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="index.jsp">主页</a></li>
                                            </ul>
                                        </li>
                                        <li class="static"><a href="#">页面 <i class="fa fa-angle-down"></i></a>
                                            <ul class="megamenu dropdown">
                                                <li class="mega-title"><a href="#">column 01</a>
                                                    <ul>
                                                        <li><a href="shop.jsp">购物</a></li>
                                                        <%--<li><a href="shop-grid-right-sidebar.jsp">shop grid right
                                                            sidebar</a></li>
                                                        <li><a href="shop-list-left-sidebar.jsp">shop list left sidebar</a></li>
                                                        <li><a href="shop-list-right-sidebar.jsp">shop list right sidebar</a></li>--%>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">column 02</a>
                                                    <ul>
                                                        <li><a href="cart.jsp">购物车</a></li>
                                                       <%-- <li><a href="product-details-affiliate.jsp">product
                                                            details
                                                            affiliate</a></li>
                                                        <li><a href="product-details-variable.jsp">product details
                                                            variable</a></li>
                                                        <li><a href="product-details-group.jsp">product details
                                                            group</a></li>--%>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">column 03</a>
                                                    <ul>

                                                        <%--<li><a href="checkout.jsp">checkout</a></li>
                                                        <li><a href="compare.jsp">compare</a></li>--%>
                                                        <li><a href="wishlist.jsp">愿望清单</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">column 04</a>
                                                    <ul>
                                                        <li><a href="my-account.jsp">我的</a></li>
                                                        <%--<li><a href="login-register.jsp">login-register</a></li>
                                                        <li><a href="contact-us.jsp">contact us</a></li>--%>
                                                    </ul>
                                                </li>
                                                <li class="megamenu-banners d-none d-lg-block">
                                                    <a href="product-details.jsp">
                                                        <img src="assets/img/banner/img-bottom-menu.jpg" alt="">
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.jsp">购物 <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="shop.jsp">浏览商品<i class="fa fa-angle-right"></i></a>
                                                    <%--<ul class="dropdown">
                                                        <li><a href="shop.jsp">shop grid left sidebar</a></li>
                                                        <li><a href="shop-grid-right-sidebar.jsp">shop grid right sidebar</a></li>
                                                        <li><a href="shop-grid-full-3-col.jsp">shop grid full 3 col</a></li>
                                                        <li><a href="shop-grid-full-4-col.jsp">shop grid full 4 col</a></li>
                                                    </ul>--%>
                                                </li>
                                                <%--<li><a href="#">shop list layout <i class="fa fa-angle-right"></i></a>
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
                                                </li>--%>
                                            </ul>
                                        </li>
                                        <%--<li><p >Blog <i class="fa fa-angle-down"></i></p>--%>
                                            <%--<ul class="dropdown">
                                                <li><a href="blog-left-sidebar.jsp">blog left sidebar</a></li>
                                                <li><a href="blog-right-sidebar.jsp">blog right sidebar</a></li>
                                                <li><a href="blog-grid-full-width.jsp">blog grid no sidebar</a></li>
                                                <li><a href="blog-details.jsp">blog details</a></li>
                                                <li><a href="blog-details-left-sidebar.jsp">blog details left sidebar</a></li>
                                            </ul>--%>
                                        </li>
                                        <li><a href="contact-us.jsp">联系我们</a></li>
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
                                            <li><a href="../index.html">login</a></li>
                                            <li><a href="../index.html">register</a></li>
                                            <li><a href="my-account.jsp">my account</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="wishlist.jsp">
                                            <i class="lnr lnr-heart"></i>
                                            <c:if test="${sessionScope.user!=null}">
                                            <%--<div class="notification"></div>--%>

                                            </c:if>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="cart.jsp" ><%--class="minicart-btn"--%>
                                            <i class="lnr lnr-cart"></i>
                                            <%--<div class="notification"></div>--%>
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

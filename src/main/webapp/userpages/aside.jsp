<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2020/3/13
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

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

</head>

<body>

<!-- Start Header Area -->
<jsp:include page="header.jsp"></jsp:include>
<!-- end Header Area -->

<!-- off-canvas menu start -->
<jsp:include page="aside.jsp"></jsp:include>
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
                                <h1>compare</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">compare</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- compare main wrapper start -->
        <div class="compare-page-wrapper section-space pb-0">
            <div class="container">
                <div class="section-bg-color">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Compare Page Content Start -->
                            <div class="compare-page-content-wrap">
                                <div class="compare-table table-responsive">
                                    <table class="table table-bordered mb-0">
                                        <tbody>
                                            <tr>
                                                <td class="first-column">Product</td>
                                                <td class="product-image-title">
                                                    <a href="product-details.html" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-1.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Daimond</a>
                                                    <a href="product-details.html" class="title">Flowers bouquet pink</a>
                                                </td>
                                                <td class="product-image-title">
                                                    <a href="product-details.html" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-2.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Gold</a>
                                                    <a href="product-details.html" class="title">Jasmine flowers white</a>
                                                </td>
                                                <td class="product-image-title">
                                                    <a href="product-details.html" class="image">
                                                        <img class="img-fluid" src="assets/img/product/product-3.jpg" alt="Compare Product">
                                                    </a>
                                                    <a href="#" class="category">Ring</a>
                                                    <a href="product-details.html" class="title">Blossom bouquet flower</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Description</td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident
                                                        nulla, explicabo iste a rerum pariatur.</p>
                                                </td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sit
                                                        commodi obcaecati cumque consectetur alias incidunt?</p>
                                                </td>
                                                <td class="pro-desc">
                                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius,
                                                        facere. Fuga asperiores inventore iste tempora.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Price</td>
                                                <td class="pro-price">$295</td>
                                                <td class="pro-price">$275</td>
                                                <td class="pro-price">$395</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Color</td>
                                                <td class="pro-color">Black</td>
                                                <td class="pro-color">Red</td>
                                                <td class="pro-color">Blue</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Stock</td>
                                                <td class="pro-stock">In Stock</td>
                                                <td class="pro-stock">Stock Out</td>
                                                <td class="pro-stock">In Stock</td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Add to cart</td>
                                                <td><a href="cart.html" class="btn btn__bg">Add to Cart</a></td>
                                                <td><a href="cart.html" class="btn btn__bg disabled">Add to Cart</a></td>
                                                <td><a href="cart.html" class="btn btn__bg">Add to Cart</a></td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Rating</td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </td>
                                                <td class="pro-ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="first-column">Remove</td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                                <td class="pro-remove">
                                                    <button><i class="fa fa-trash-o"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- Compare Page Content End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- compare main wrapper end -->
    </main>
    <!-- main wrapper end -->

<!-- Start Footer Area Wrapper -->
<jsp:include page="footer.jsp"></jsp:include>
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
                                    <a href="product-details.html">
                                        <img src="assets/img/cart/cart-1.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.html">Flowers bouquet pink for all flower lovers</a>
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
                                    <a href="product-details.html">
                                        <img src="assets/img/cart/cart-2.jpg" alt="product">
                                    </a>
                                </div>
                                <div class="minicart-content">
                                    <h3 class="product-name">
                                        <a href="product-details.html">Jasmine flowers white for all flower lovers</a>
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
                        <a href="cart.html"><i class="fa fa-shopping-cart"></i> view cart</a>
                        <a href="cart.html"><i class="fa fa-share"></i> checkout</a>
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
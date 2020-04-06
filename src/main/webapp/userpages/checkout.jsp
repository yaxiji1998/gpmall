<%@ page import="cn.edu.ywb.pojo.Cart" %>
<%@ page import="java.util.List" %>
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
<script src="../js/jquery.min.js"></script>
<![endif]-->

</head>

<body>
<script>
    function pay(){
        $.ajax({
            type:"POST",
            url:"/gpmall/cart/pay.do",
            success:function(result){
                if(result=="false"){
                    alert("您还没有收货地址，快去填写吧！");
                }else {
                    alert("购买成功！");
                }
                    location.replace("/gpmall/userpages/my-account.jsp");
            }
        });
    }

</script>
<!-- Start Header Area -->
<jsp:include page="header.jsp"></jsp:include>
<!-- end Header Area -->

<!-- off-canvas menu start -->
<jsp:include page="aside.jsp"></jsp:include>
<!-- off-canvas menu end -->

<%
    double count = 0;
    List<Cart> carts = (List<Cart>) session.getAttribute("cartList");
    for (Cart c :
            carts) {
        count += c.getShoppingNumber() * c.getGood().getGrprice();
    }
%>
    <!-- main wrapper start -->
    <main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area common-bg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <h1>checkout</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">checkout</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- checkout main wrapper start -->
        <div class="checkout-page-wrapper section-space pb-0">
            <div class="container">
<%--                <div class="row">--%>
<%--                    <div class="col-12">--%>
<%--&lt;%&ndash;                        <!-- Checkout Login Coupon Accordion Start -->&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div class="checkoutaccordion" id="checkOutAccordion">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="card">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <h3>Returning Customer? <span data-toggle="collapse" data-target="#logInaccordion">Click&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            Here To Login</span></h3>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div id="logInaccordion" class="collapse" data-parent="#checkOutAccordion">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="card-body">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <p>If you have shopped with us before, please enter your details in the boxes&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            below. If you are a new customer, please proceed to the Billing &amp;&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            Shipping section.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="login-reg-form-wrap mt-20">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                <div class="col-lg-7 m-auto">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <form action="#" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <div class="col-md-12">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                <div class="single-input-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                    <input type="email" placeholder="Enter your Email" required />&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                                            <div class="col-md-12">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                <div class="single-input-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                    <input type="password" placeholder="Enter your Password" required />&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                                        <div class="single-input-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <div class="login-reg-form-meta d-flex align-items-center justify-content-between">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                <div class="remember-meta">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                    <div class="custom-control custom-checkbox">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                        <input type="checkbox" class="custom-control-input" id="rememberMe" required />&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                        <label class="custom-control-label" for="rememberMe">Remember&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                            Me</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                                                <a href="#" class="forget-pwd">Forget Password?</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                                        <div class="single-input-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <button class="btn btn__bg">Login</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            <div class="card">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <h3>Have A Coupon? <span data-toggle="collapse" data-target="#couponaccordion">Click&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            Here To Enter Your Code</span></h3>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div id="couponaccordion" class="collapse" data-parent="#checkOutAccordion">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="card-body">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="cart-update-option">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <div class="apply-coupon-wrapper">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                <form action="#" method="post" class=" d-block d-md-flex">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <input type="text" placeholder="Enter Your Coupon Code" required />&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <button class="btn btn__bg">Apply Coupon</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <!-- Checkout Login Coupon Accordion End -->&ndash;%&gt;--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="row">
                    <!-- Checkout Billing Details -->
<%--                    <div class="col-lg-6">--%>
<%--                        <div class="checkout-billing-details-wrap">--%>
<%--                            <h2>Billing Details</h2>--%>
<%--                            <div class="billing-form-wrap">--%>
<%--                                <form action="#">--%>
<%--                                    <div class="row">--%>
<%--                                        <div class="col-md-6">--%>
<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="f_name" class="required">First Name</label>--%>
<%--                                                <input type="text" id="f_name" placeholder="First Name" required />--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                        <div class="col-md-6">--%>
<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="l_name" class="required">Last Name</label>--%>
<%--                                                <input type="text" id="l_name" placeholder="Last Name" required />--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="email" class="required">Email Address</label>--%>
<%--                                        <input type="email" id="email" placeholder="Email Address" required />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="com-name">Company Name</label>--%>
<%--                                        <input type="text" id="com-name" placeholder="Company Name" />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="country" class="required">Country</label>--%>
<%--                                        <select name="country nice-select" id="country">--%>
<%--                                            <option value="Afghanistan">Afghanistan</option>--%>
<%--                                            <option value="Albania">Albania</option>--%>
<%--                                            <option value="Algeria">Algeria</option>--%>
<%--                                            <option value="Armenia">Armenia</option>--%>
<%--                                            <option value="Bangladesh">Bangladesh</option>--%>
<%--                                            <option value="India">India</option>--%>
<%--                                            <option value="Pakistan">Pakistan</option>--%>
<%--                                            <option value="England">England</option>--%>
<%--                                            <option value="London">London</option>--%>
<%--                                            <option value="London">London</option>--%>
<%--                                            <option value="Chaina">China</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="street-address" class="required mt-20">Street address</label>--%>
<%--                                        <input type="text" id="street-address" placeholder="Street address Line 1" required />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <input type="text" placeholder="Street address Line 2 (Optional)" />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="town" class="required">Town / City</label>--%>
<%--                                        <input type="text" id="town" placeholder="Town / City" required />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="state">State / Divition</label>--%>
<%--                                        <input type="text" id="state" placeholder="State / Divition" />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="postcode" class="required">Postcode / ZIP</label>--%>
<%--                                        <input type="text" id="postcode" placeholder="Postcode / ZIP" required />--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="phone">Phone</label>--%>
<%--                                        <input type="text" id="phone" placeholder="Phone" />--%>
<%--                                    </div>--%>

<%--                                    <div class="checkout-box-wrap">--%>
<%--                                        <div class="single-input-item">--%>
<%--                                            <div class="custom-control custom-checkbox">--%>
<%--                                                <input type="checkbox" class="custom-control-input" id="create_pwd">--%>
<%--                                                <label class="custom-control-label" for="create_pwd">Create an--%>
<%--                                                    account?</label>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="account-create single-form-row">--%>
<%--                                            <p>Create an account by entering the information below. If you are a--%>
<%--                                                returning customer please login at the top of the page.</p>--%>
<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="pwd" class="required">Account Password</label>--%>
<%--                                                <input type="password" id="pwd" placeholder="Account Password" required />--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="checkout-box-wrap">--%>
<%--                                        <div class="single-input-item">--%>
<%--                                            <div class="custom-control custom-checkbox">--%>
<%--                                                <input type="checkbox" class="custom-control-input" id="ship_to_different">--%>
<%--                                                <label class="custom-control-label" for="ship_to_different">Ship to a--%>
<%--                                                    different address?</label>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="ship-to-different single-form-row">--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="single-input-item">--%>
<%--                                                        <label for="f_name_2" class="required">First Name</label>--%>
<%--                                                        <input type="text" id="f_name_2" placeholder="First Name" required />--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>

<%--                                                <div class="col-md-6">--%>
<%--                                                    <div class="single-input-item">--%>
<%--                                                        <label for="l_name_2" class="required">Last Name</label>--%>
<%--                                                        <input type="text" id="l_name_2" placeholder="Last Name" required />--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="email_2" class="required">Email Address</label>--%>
<%--                                                <input type="email" id="email_2" placeholder="Email Address" required />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="com-name_2">Company Name</label>--%>
<%--                                                <input type="text" id="com-name_2" placeholder="Company Name" />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="country_2" class="required">Country</label>--%>
<%--                                                <select name="country" id="country_2">--%>
<%--                                                    <option value="Bangladesh">Bangladesh</option>--%>
<%--                                                    <option value="India">India</option>--%>
<%--                                                    <option value="Pakistan">Pakistan</option>--%>
<%--                                                    <option value="England">England</option>--%>
<%--                                                    <option value="London">London</option>--%>
<%--                                                    <option value="London">London</option>--%>
<%--                                                    <option value="Chaina">Chaina</option>--%>
<%--                                                </select>--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="street-address_2" class="required mt-20">Street address</label>--%>
<%--                                                <input type="text" id="street-address_2" placeholder="Street address Line 1" required />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <input type="text" placeholder="Street address Line 2 (Optional)" />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="town_2" class="required">Town / City</label>--%>
<%--                                                <input type="text" id="town_2" placeholder="Town / City" required />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="state_2">State / Divition</label>--%>
<%--                                                <input type="text" id="state_2" placeholder="State / Divition" />--%>
<%--                                            </div>--%>

<%--                                            <div class="single-input-item">--%>
<%--                                                <label for="postcode_2" class="required">Postcode / ZIP</label>--%>
<%--                                                <input type="text" id="postcode_2" placeholder="Postcode / ZIP" required />--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="single-input-item">--%>
<%--                                        <label for="ordernote">Order Note</label>--%>
<%--                                        <textarea name="ordernote" id="ordernote" cols="30" rows="3" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                    <!-- Order Summary Details -->
                    <div class="col-lg-6">
                        <div class="order-summary-details">
                            <h2>Your Order Summary</h2>
                            <div class="order-summary-content">
                                <!-- Order Summary Table -->
                                <div class="order-summary-table table-responsive text-center">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th><strong>Products</strong></th>
                                                <th><strong>Total</strong></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${sessionScope.cartList}" var="cart">

                                            <tr>
                                                <td><a href="product-details.jsp?id=${cart.good.id}">${cart.good.gname} <strong> × ${cart.shoppingNumber}</strong></a>
                                                </td>
                                                <td>${cart.good.grprice*cart.shoppingNumber}</td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td>总计</td>
                                                <td><%=count%></td>
                                            </tr>

                                        </tfoot>
                                    </table>
                                </div>
                                <!-- Order Payment Method -->
                                <div class="order-payment-method">
                                    <div class="single-payment-method show">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="cashon" name="paymentmethod" value="cash" class="custom-control-input" checked />
                                                <label class="custom-control-label" for="cashon">银行卡转账</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="cash">
                                            <p>本店支持银行卡转账</p>
                                        </div>
                                    </div>
                                    <div class="single-payment-method">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="directbank" name="paymentmethod" value="bank" class="custom-control-input" />
                                                <label class="custom-control-label" for="directbank">微信支付</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="bank">
                                            <p>通过扫描二维码即可微信付款</p>
                                        </div>
                                    </div>
                                    <div class="single-payment-method">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="checkpayment" name="paymentmethod" value="check" class="custom-control-input" />
                                                <label class="custom-control-label" for="checkpayment">支付宝付款</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="check">
                                            <p>推荐使用支付宝付款</p>
                                        </div>
                                    </div>

                                    <div class="summary-footer-area">
                                        <div class="custom-control custom-checkbox mb-20">
                                            <input type="checkbox" class="custom-control-input" id="terms" required />
                                            <label class="custom-control-label" for="terms">I have read and agree to
                                                the website <a href="index.jsp">terms and conditions.</a></label>
                                        </div>
                                        <button onclick="pay()" class="btn btn__bg">付款</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- checkout main wrapper end -->
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
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
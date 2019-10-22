<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Shop Grid Left Sidebar</title>

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <script src="js/jquery-1.12.4.min.js"></script>
    <%--加载分页页面样式--%>
    <link href="css/zxf_page.css" type="text/css" rel="stylesheet"/>
    <script src="js/zxf_page.js"></script>
</head>
<body>
<jsp:include page="pageloader.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>


<div id="content" class="site-content left-sidebar-content shop-content">
    <div class="space-dark"></div>
    <div class="no-container">
        <div class="blog-breadcrumb shop-breadcrumb">
            <div class="container">

                <div class="intro-div">
                    <h1 class="page-title">Left Sidebar</h1>
                    <div class="breadcrumb">
                        <ul>
                            <li><a href="#">Home</a></li>

                            <li><span class="current">Shop Grid</span></li>

                        </ul>

                    </div><!-- .breadcrumb -->
                </div>

            </div><!-- .container -->
        </div>
    </div>

    <div class="container">
        <div class="row">
            <jsp:include page="main.jsp"></jsp:include>
    <div id="sidebar" class="sidebar left-sidebar left-shop-sidebar col-md-3">
    <aside class="widget">
        <h3 class="widget-title"><span>Shop by</span></h3>
        <div class="f-price">
            <div id="slider-range"></div>
            <span>Price: <strong id="amount"></strong></span>
            <button class="button radius" type="button" id="getPrice">Filter</button>
        </div>
    </aside>
        <script type="text/javascript">
            //过滤的点击事件
            $("#getPrice").click(function () {
                var price = $("#amount").text();
                path="page?method=getRedWineByPrice&<%= session.getAttribute("pathSession")%>&price="+price;
                window.location.href = path;

            });
        </script>
                <aside class="widget">
                    <h3 class="widget-title"><span>Colors</span></h3>
                    <ul class="list-color" id="mycolor">
                        <li><a href="#" class="red" id="a1">red</a><span class="count" id="red">(42)</span></li>
                        <li><a href="#" class="black" id="a2">black</a> <span class="count" id="black">(28)</span></li>
                        <li><a href="#" class="blue" id="a3">blue</a><span class="count" id="blue">(27)</span></li>
                        <li><a href="#" class="yellow" id="a4">yellow</a><span class="count" id="yellow">(15)</span></li>

                    </ul>
                </aside>
                <aside class="widget">

                    <h3 class="widget-title"><span>Sizes</span></h3>

                    <ul class="list-size clearfix">

                        <li><a href="#">S</a></li>

                        <li><a href="#">M</a></li>

                        <li><a href="#">L</a></li>
                    </ul>

                </aside>

                <aside class="widget image_widget">
                    <a href="#" target="_blank"><img src="images/placeholder/left-sidebar-banner.jpg" alt=""/></a>
                </aside>


                <aside class="widget featured-prod">

                    <h3 class="widget-title"><span>new shop</span></h3>

                    <ul id="newul"></ul>
                </aside>
            </div><!-- .left-sidebar -->
        </div>

    </div><!-- .container -->

</div><!-- .site-content -->
<div id="bottom" class="site-bottom">
    <div class="no-container">
        <div class="social">
            <ul>
                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
            </ul>
        </div>
        <div class="back-to-top">
            <a href="#" class="btn-circle"><i class="fa fa-angle-up"></i></a>
        </div>
        <div class="icon-c">
            <ul class="list_iconc">
                <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
            </ul>
        </div>
    </div><!-- .container -->
</div><!-- .site-bottom -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- #wrapper -->


<!-- Boostrap -->
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/vendor/bootstrap-select.min.js"></script>
<script src="js/ie9/html5shiv.min.js"></script>
<script src="js/ie9/respond.min.js"></script>
<!-- jQuery Sticky -->
<script src="js/vendor/jquery.sticky.js"></script>
<!-- OWL CAROUSEL Slider -->
<script src="js/vendor/owl.carousel.min.js"></script>
<!-- Flexslider -->
<script src="js/vendor/flexslider.min.js"></script>
<!-- PrettyPhoto -->
<script src="js/vendor/jquery.prettyPhoto.js"></script>
<!-- Jquery Countdown -->
<script src="js/vendor/jquery.countdown.js"></script>
<!-- Jquery Parallax -->
<script src="js/vendor/parallax.js"></script>
<!-- jQuery UI -->
<script src="js/vendor/jquery-ui.min.js"></script>
<!-- Jquery Masonry -->
<script src="js/vendor/masonry.pkgd.min.js"></script>
<!-- Main -->
<script src="js/main.js"></script>
<%--加载shop.js文件--%>
<script src="js/shop.js"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Compare</title>

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/ie9/html5shiv.min.js"></script>
    <script src="js/ie9/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<jsp:include page="pageloader.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<div id="content" class="site-content content-fullwidth">
<div class="space-dark"></div>
<div class="no-container">
    <div class="blog-breadcrumb shop-breadcrumb">
        <div class="container">

            <div class="intro-div">
                <h1 class="page-title">Compare</h1>
                <div class="breadcrumb">
                    <ul>

                        <li><a href="#">Home</a></li>

                        <li><span class="current">Compare</span></li>

                    </ul>

                </div><!-- .breadcrumb -->
            </div>

        </div><!-- .container -->
    </div>
</div>

<div class="container">

<main id="main" class="site-main">

    <div class="inner-content">
        <div class="compare-table">
            <table class="shop_table compare">
                <tbody class="clearfix">

                <tr class="compare-name compare-item">

                    <th class="compare-head">
                        <span>items</span>
                    </th>
                    <td>
                        <a href="#">
                            <span class="thumb">
                                <img src="images/placeholder/feature-prod-img1.jpg" alt="">
                            </span>
                            <span class="prod-name">Tomatin 12 Year Old</span>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <span class="thumb"><img src="images/placeholder/feature-prod-img1.jpg" alt=""></span>
                            <span class="prod-name">Tomatin 12 Year Old</span>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <span class="thumb"><img src="images/placeholder/feature-prod-img1.jpg" alt=""></span>
                            <span class="prod-name">Tomatin 12 Year Old</span>
                        </a>
                    </td>

                </tr>

                <tr class="compare-rating compare-item">

                    <th class="compare-head">
                        <span>Rating</span>
                    </th>
                    <td>
                        <div class="star-rating">
                            <span style="width:60%"></span>
                        </div>
                    </td>
                    <td>
                        <div class="star-rating">
                            <span style="width:60%"></span>
                        </div>
                    </td>
                    <td>
                        <div class="star-rating">
                            <span style="width:60%"></span>
                        </div>
                    </td>

                </tr>

                <tr class="compare-price compare-item">

                    <th class="compare-head">
                        <span>UNIT PRICE</span>
                    </th>
                    <td>
                        <span class="amount"><span class="symbol">$</span>145.00</span>
                    </td>
                    <td>
                        <span class="amount"><span class="symbol">$</span>145.00</span>
                    </td>
                    <td>
                        <span class="amount"><span class="symbol">$</span>145.00</span>
                    </td>

                </tr>

                <tr class="compare-des compare-item">

                    <th class="compare-head">
                        <span>Description</span>
                    </th>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                    </td>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                    </td>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                    </td>

                </tr>

                <tr class="compare-manufature compare-item">

                    <th class="compare-head">
                        <span>manufature</span>
                    </th>
                    <td>
                        Gucci
                    </td>
                    <td>
                        Lacoste
                    </td>
                    <td>
                        Buberry
                    </td>

                </tr>

                <tr class="compare-availability compare-item">

                    <th class="compare-head">
                        <span>availability</span>
                    </th>
                    <td class="instock">
                        In Stock
                    </td>
                    <td class="outstock">
                        Out Stock
                    </td>
                    <td class="instock">
                        In Stock
                    </td>

                </tr>

                <tr class="compare-size compare-item">

                    <th class="compare-head">
                        <span>Size</span>
                    </th>
                    <td class="list-size">
                        <a href="#">S</a>
                    </td>
                    <td class="list-size">
                        <a href="#">M</a>
                    </td>
                    <td class="list-size">
                        <a href="#">L</a>
                    </td>

                </tr>

                <tr class="compare-color compare-item">

                    <th class="compare-head">
                        <span>Color</span>
                    </th>
                    <td class="list-color">
                        <a class="color" href="#"></a>
                    </td>
                    <td class="list-color">
                        <a class="red" href="#"></a>
                    </td>
                    <td class="list-color">
                        <a class="blue" href="#"></a>
                    </td>

                </tr>

                <tr class="compare-quantity compare-item">

                    <th class="compare-head">
                        <span>Quantity</span>
                    </th>
                    <td>
                        01
                    </td>
                    <td>
                        01
                    </td>
                    <td>
                        01
                    </td>

                </tr>

                <tr class="action-wrap compare-item">
                    <th class="compare-head">
                        <span>actions</span>
                    </th>

                    <td>
                        <div class="p-actions">
                            <a href="#" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                            <a href="#" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                        </div><!-- .p-actions -->
                    </td>

                    <td>
                        <div class="p-actions">
                            <a href="#" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                            <a href="#" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                        </div><!-- .p-actions -->
                    </td>

                    <td>
                        <div class="p-actions">
                            <a href="#" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                            <a href="#" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                        </div><!-- .p-actions -->
                    </td>

                </tr>
                </tbody>
            </table>
        </div>
    </div><!-- inner-content -->

</main><!-- .site-main -->

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
</div><!-- #wrapper -->

<!-- jQuery -->
<script src="js/jquery-1.12.4.min.js"></script>
<!-- Boostrap -->
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/vendor/bootstrap-select.min.js"></script>
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
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <div class="right-header">
                <ul>
                    <li>
                        <a class="top-account top-login" href="#" data-toggle="modal" data-target="#login_dialog">
                            <i class="pe-7s-users"></i>
                        </a>
                    </li>

                    <li>
                        <a class="top-search" href="#" data-toggle="modal" data-target="#search_dialog">
                            <i class="pe-7s-search"></i>
                        </a>
                    </li>

                    <li>
                        <a class="cart-control" href="#">
                            <i class="pe-7s-shopbag cart-icon"></i>
                            <span class="cart-number">2</span>
                        </a>

                        <div class="shop-item" id="shopping_cart_dropdown">
                            <div class="widget_shopping_cart_content">

                                <ul class="cart_list">

                                    <li class="clearfix">
                                        <a class="p-thumb" href="productdetails-fullwidth.jsp">
                                            <img src="images/placeholder/thumb-product-cart1.jpg" alt="">
                                        </a>
                                        <div class="p-info">
                                            <a class="p-title" href="productdetails-fullwidth.jsp">Tomatin 12 Year Old</a>
                                            <span class="price">
                                                <span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>
                                            </span>
                                            <a class="remove" href="#"><i class="pe-7s-close"></i></a>
                                        </div>
                                    </li>

                                    <li class="clearfix">
                                        <a class="p-thumb" href="productdetails-fullwidth.jsp">
                                            <img src="images/placeholder/thumb-product-cart2.jpg" alt="">
                                        </a>
                                        <div class="p-info">
                                            <a class="p-title" href="productdetails-fullwidth.jsp">Tomatin 12 Year Old</a>
                                            <span class="price">
                                                <span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>
                                            </span>
                                            <a class="remove" href="#"><i class="pe-7s-close"></i></a>
                                        </div>
                                    </li>

                                </ul>

                                <p class="total"><strong>Total:</strong> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">£</span>183.26</span></p>

                                <p class="buttons">
                                    <a href="shopping-cart-fullwidth.jsp" class="ro-btn-bd-2 btn-viewcart wc-forward">VIEW CART</a>
                                    <a href="check-out.jsp" class="ro-btn-bd-2 btn-checkout wc-forward">CHECK OUT</a>
                                </p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!-- right-header -->

            <div class="site-brand">
                <a class="logo" href="index.html">
                    <img src="images/assets/logo.png" alt="Vineyard">
                </a>
            </div><!-- .site-brand -->
        </div>
    </div><!-- top-header -->

    <div class="header-menu">
        <div class="container">
            <div class="site-brand">
                <a class="logo" href="index.html">
                    <img src="images/assets/logo.png" alt="Vineyard">
                </a>
            </div><!-- .site-brand -->
            <nav class="main-menu">
                <span class="mobile-menu"><i class="fa fa-bars"></i></span>
                <ul>
                    <li class="mega-menu-wrap"><a href="index.html">Home</a>
                        <div class="sub-menu menu-mega sub-menu menu-mega2">
                            <div class="mega-item">
                                <h3 class="menu-title">Home page</h3>
                                <ul>
                                    <li><a href="index.html">Home version 1</a></li>
                                    <li><a href="home02.html">Home version 2</a></li>
                                    <li><a href="home03.html">Home version 3</a></li>
                                    <li><a href="home04.html">Home version 4</a></li>
                                </ul>
                            </div>
                            <div class="mega-item image">
                                <a href="productdetails-fullwidth.jsp">
                                    <img src="images/placeholder/mega-menu-img.jpg" alt=""/>
                                </a>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Page</h3>
                                <ul>
                                    <li><a href="shopgrid-fullwidth.jsp">Shop Page</a></li>
                                    <li><a href="productdetails-fullwidth.jsp">Single Product</a></li>
                                    <li><a href="shopping-cart-fullwidth.jsp">Shopping cart</a></li>
                                    <li><a href="check-out.jsp">Checkout</a></li>
                                    <li><a href="compare.jsp">Compare</a></li>
                                </ul>
                            </div>
                            <div class="mega-item image">
                                <a href="productdetails-fullwidth.jsp">
                                    <img src="images/placeholder/mega-menu-img2.jpg" alt=""/>
                                </a>
                            </div>
                        </div><!-- .menu-mega -->
                    </li>
                    <li class="mega-menu-wrap current-menu-item"><a href="shopgrid-fullwidth.jsp">Shop</a>
                        <div class="sub-menu menu-mega">
                            <div class="mega-item image">
                                <a href="productdetails-fullwidth.jsp">
                                    <img src="images/placeholder/mega-menu-img.jpg" alt=""/>
                                </a>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Page</h3>
                                <ul>
                                    <li><a href="shoplist-leftsidebar.html">Shop List Left Sidebar</a></li>
                                    <li><a href="shoplist-rightsidebar.html">Shop List Right Sidebar</a></li>
                                    <li><a href="shopgrid-fullwidth.jsp">Shop Grid Full Width</a></li>
                                    <li><a href="shopgrid-leftsidebar.html">Shop Grid Left Sidebar</a></li>
                                    <li><a href="shopgrid-rightsidebar.html">Shop Grid Right Sidebar</a></li>
                                </ul>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Single</h3>
                                <ul>
                                    <li><a href="productdetails-fullwidth.jsp">Full Width</a></li>
                                    <li><a href="productdetails-fullwidth.jsp">Left Sidebar</a></li>
                                    <li><a href="productdetails-rightsidebar.html">Right Sidebar</a></li>
                                </ul>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shopping Cart</h3>
                                <ul>
                                    <li><a href="shopping-cart-fullwidth.jsp">Cart Full Width</a></li>
                                    <li><a href="shopping-cart-leftsidebar.html">Cart Left Sidebar</a></li>
                                    <li><a href="shopping-cart-rightsidebar.html">Cart Right Sidebar</a></li>
                                </ul>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Orther</h3>
                                <ul>
                                    <li><a href="my-wishlist.jsp">My Wishlist</a></li>
                                    <li><a href="check-out.jsp">Check Out</a></li>
                                    <li class="current-menu-item"><a href="compare.jsp">Compare</a></li>
                                </ul>
                            </div>
                        </div><!-- .menu-mega -->
                    </li>
                    <li><a href="portfolio-grid3column1.html">Pages</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="portfolio-grid3column1.html">Portfolio</a>
                                <ul class="sub-menu">
                                    <li><a href="portfolio-freestyle.html">Portfolio FreeStyle</a></li>
                                    <li><a href="portfolio-grid2column.html">Portfolio Grid 2 Column</a></li>
                                    <li><a href="portfolio-grid3column1.html">Portfolio Grid 3 Column 1</a></li>
                                    <li><a href="portfolio-grid3column2.html">Portfolio Grid 3 Column 2</a></li>
                                    <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                </ul>
                            </li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="comming-soon.html">Comming Soon</a></li>
                            <li><a href="page-404.html">404</a></li>
                        </ul>
                    </li>
                    <li><a href="bloglist-fullwidth.html">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="blogdetails-leftsidebar.html">Blog Details LeftSideBar</a></li>
                            <li><a href="blogdetails-rightsidebar.html">Blog Details RightSidebar</a></li>
                            <li><a href="blogdetails-fullwidth.jsp">Blog Details FullWidth</a></li>
                            <li><a href="bloggrid-2column.html">Blog Grid 2Column</a></li>
                            <li><a href="bloggrid-3column.html">Blog Grid 3Column</a></li>
                            <li><a href="bloglist-fullwidth.html">Blog List Full Width</a></li>
                            <li><a href="bloglist-rightsidebar.html">Blog List Right SideBar</a></li>
                            <li><a href="bloglist-leftsidebar.html">Blog List Left SideBar</a></li>
                            <li><a href="bloglist-zigzac.html">Blog List ZigZac</a></li>
                            <li><a href="bloggrid-masonry.html">Blog Grid Masonry</a></li>
                        </ul>
                    </li>
                    <li><a href="contact-us.html">Contact</a>
                        <ul class="sub-menu">
                            <li><a href="contact-us2.html">Contact 2</a></li>
                        </ul>
                    </li>
                </ul>

            </nav><!-- .main-menu -->
        </div>
    </div><!-- header-menu -->

</header><!-- .site-header -->

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

<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
        <title>My Wishlist</title>

        <!-- Style CSS -->
        <link rel="stylesheet" type="text/css" href="style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <![endif]-->
        <script src="js/ie9/html5shiv.min.js"></script>
        <script src="js/ie9/respond.min.js"></script>

    </head>
    <body class="home-01">
        <jsp:include page="pageloader.jsp"></jsp:include>
        <jsp:include page="header.jsp"></jsp:include>

        <script src="js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <script src="js/index.js" type="text/javascript"></script>

        <script src="js/template-web.js" type="text/javascript"></script>
        <script type="text/html" id="Mytemplate">
            {{each list}}
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item">
                <div class="p-thumb">
                    <a href="product?method=findbyPidproduct&pid={{$value.pid}}">
                        <img src="{{$value.pimage}}"  style='width:25%' alt=""/>
                    </a>
                    <a href="#" class="onnew">{{$value.ishot}}
                    </a>

                </div><!-- .p-thumb -->

                <div class="p-info">
                    <h3 class="p-title"><a href="productdetails-fullwidth.jsp">{{$value.pname}}</a></h3>

                    <div class="clearfix">
                        <div class="star-rating">
                            <span style="width:60%"></span>
                        </div>

                        <span class="price">
                            <span class="amount">$<span>{{$value.price}}</span></span>
                        </span>
                    </div>

                    <div class="p-actions">
                        <a href="#" class="button btn-circle quick-view"><span class="pe-7s-expand1"></span></a>
                        <a href="#" class="button btn-circle view-compare"><span class="pe-7s-refresh-2"></span></a>
                        <a href="#" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                        <a href="#" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                    </div><!-- .p-actions -->
                </div><!-- .p-info -->
            </div><!-- .product -->
            {{/each}}
        </script>




            <div id="content" class="site-content content-fullwidth">
                <div class="home-slider">
                    <div class="owl-carousel">
                        <div class="home-slider-item">
                            <img src="images/placeholder/01_slider1.jpg" alt=""/>
                            <div class="slider-content">
                                <img src="images/placeholder/logo-a.png" alt=""/>
                                <div class="slider-btn"><a href="page?method=getCurrentPage&currentPage=1">Shop now</a></div>
                            </div>
                        </div><!-- .home-slider-item -->
                        <div class="home-slider-item">
                            <img src="images/placeholder/01_slider2.jpg" alt=""/>
                            <div class="slider-content">
                                <img src="images/placeholder/logo-a.png" alt=""/>
                                <div class="slider-btn"><a href="page?method=getCurrentPage&currentPage=1">Shop now</a></div>
                            </div>
                        </div><!-- .home-slider-item -->
                    </div>
                </div><!-- .home-slider -->

                <main id="main" class="site-main">
                    <div class="inner-top clearfix">
                        <div class="container">
                            <div class="row">
                                <div class="intro-image col-md-6 col-sm-6">
                                    <img src="images/placeholder/intro-about-us.jpg" alt=""/>
                                </div>
                                <div class="intro-text col-md-6 col-sm-6">
                                    <div class="title-box">
                                        <h2 class="txt-pinyon">wellcome</h2>
                                        <h3>vineyard</h3>
                                    </div>
                                    <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>
                                    <div class="intro-txt-ct">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariaturexplicabout labore.
                                    </div>
                                    <div class="intro-txt-sign">
                                        <img src="images/placeholder/sign-image.png" alt=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="infor-us clearfix">
                                <div class="row">
                                    <div class="infor-item hotline col-md-4 col-sm-4">
                                        <span class="title-infor">Hotline</span>
                                        <span>(00) 123 456 789</span>
                                    </div><!-- hotline -->

                                    <div class="infor-item time-open col-md-4 col-sm-4">
                                        <span class="title-infor">We’re Open</span>
                                        <span>MON-SUN: 8AM-10PM</span>
                                    </div><!-- hotline -->

                                    <div class="infor-item follow-us col-md-4 col-sm-4">
                                        <span class="title-infor">Follow Us</span>
                                        <div class="social">
                                            <ul>
                                                <li><a href="#" class="btn-circle" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" class="btn-circle" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" class="btn-circle" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#" class="btn-circle" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                                            </ul>
                                        </div>
                                    </div><!-- hotline -->
                                </div>
                            </div><!-- infor-us -->
                        </div>
                    </div><!-- inner-top -->

                    <div class="featured-box">
                        <div class="container">
                            <div class="title-box">
                                <h2 class="txt-pinyon">vineyard</h2>
                                <h3>FEATURED WINES</h3>
                            </div>
                            <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>
                            <div class="featured-tab">
                                <div class="featured-tab-heading">
                                    <ul id="list">
                                    </ul>
                                </div>
                                <div class="featured-container">
                                    <div id="roes" class="featured-content">
                                        <div class="row">
                                        </div>
                                    </div>
                                    <div id="organic" class="featured-content">
                                        <div class="row">
                                        </div>
                                    </div>
                                    <div id="kosher" class="featured-content">
                                        <div class="row">
                                        </div>
                                    </div>
                                    <div id="champagne" class="featured-content">
                                        <div class="row">
                                        </div>
                                    </div>
                                    <div id="other" class="featured-content">
                                        <div class="row">
                                        </div>
                                    </div>
                                </div>
                            </div><!-- .featured-tab -->
                            <a href="${pageContext.request.contextPath}/page?method=getCurrentPage&currentPage=1" class="btn-viney">View All</a>
                        </div>
                    </div><!-- .featured-box-->

                    <div class="deal-week" style="background: url('images/placeholder/dealofweek.jpg')">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="title_main_text">
                                    <div class="title-box">
                                        <h2 class="txt-pinyon">Deal Of Week</h2>
                                        <h3>Tomatin 12 year old highland</h3>
                                    </div>
                                    <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>
                                    <div class="tb_block_text">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>
                                        consequat.
                                    </div>
                                    <div class="countdown">
                                        <%--<span id="dtime" title="2019/10/28 10:10:10"></span>--%>
                                        <ul id="ulist"></ul></div>
                                    <p><a href="#" class="btn-viney">Shop Now</a></p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="deal-slider">
                                    <div class="owl-carousel">
                                        <div class="item">
                                            <div class="product">
                                                <div class="tb-product-item">
                                                    <div class="tb-image">
                                                        <div class="tb-item-content-image img-inner">
                                                            <a href="product?method=findbyPidproduct&pid=55"><img src="images/placeholder/product55.png"  style="height:260px" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="tb-content">
                                                        <div class="tb-price-rating">
                                                            <span class="price"><span class="woocs_price_code" data-product-id="1291"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>222.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>222.00</span></ins></span></span>
                                                        </div>
                                                        <div class="clear"></div>
                                                        <div class="tb-action">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="product">
                                                <div class="tb-product-item">
                                                    <div class="tb-image">
                                                        <div class="tb-item-content-image img-inner">
                                                            <a href="product?method=findbyPidproduct&pid=82"><img src="images/placeholder/product82.png" style="height:260px" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="tb-content">
                                                        <div class="tb-price-rating">
                                                            <span class="price"><span class="woocs_price_code" data-product-id="1291"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>168.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>168.00</span></ins></span></span>
                                                        </div>
                                                        <div class="clear"></div>
                                                        <div class="tb-action">
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .deal-week -->

                    <div class="slider-product">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="product-box-title">
                                        <h4>New Arrivals</h4>
                                    </div>
                                    <div class="product-box-content featured-prod">
                                        <div class="owl-carousel">
                                            <div class="item">
                                                <ul style="display:block;" id="list1">
                                                </ul>
                                            </div>
                                            <div class="item">
                                                <ul id="list2">
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="product-box-title">
                                        <h4>Best Sellers</h4>
                                    </div>
                                    <div class="product-box-content featured-prod">
                                        <div class="owl-carousel">
                                            <div class="item">
                                                <ul id="list3">
                                                </ul>
                                            </div>
                                            <div class="item">
                                                <ul id="list4">
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="product-box-title">
                                        <h4>Hot Products</h4>
                                    </div>
                                    <div class="product-box-content featured-prod">
                                        <div class="owl-carousel">
                                            <div class="item">
                                                <ul id="list5">
                                                </ul>
                                            </div>
                                            <div class="item">
                                                <ul id="list6">

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .slider-product -->
                    <div class="event-box" style="background-image: url('images/placeholder/home1-event-bg.jpg');">
                        <div class="container">
                            <div class="title-box">
                                <h2 class="txt-pinyon">Family Winely</h2>
                                <h3>EVENTS WINES</h3>
                            </div>
                            <div class="break-line"><span><img src="images/assets/custom-break-image.png" alt=""/></span></div>
                            <div class="event_good tb-blog event event_winnes">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 colum_a">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-4 show_the_day">
                                                <div class="show_time_day">
                                                    <h2 class="the_date">08</h2>
                                                    <h3 class="the_month">AUG</h3>
                                                    <p class="the_date_time">SunDay: 2.30 - 5.30 PM</p>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-5 col-md-5 show_the_content">
                                                <div class="show_content">
                                                    <article id="post-278" class="text-left post-278 event type-event status-publish format-standard hentry event_category-events-wines">

                                                        <h2 class="get_text"><a class="title_asa" href="http://vineyard.jwsuperthemes.com/event/adgio-vertical-tasting/">ADGIO VERTICAL TASTING</a></h2>

                                                        <p class="get_context"><a href="http://vineyard.jwsuperthemes.com/event/adgio-vertical-tasting/">Tastings will be limited to 10 total guests</a></p>
                                                    </article>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-3 col-md-3 show_the_sale">
                                                <div class="show_sale">
                                                    <h2 class="the_sale">$42</h2>
                                                    <p class="the_text_note">Per person</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 colum_a">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-4 show_the_day">
                                                <div class="show_time_day">
                                                    <h2 class="the_date">14</h2>
                                                    <h3 class="the_month">JUN</h3>
                                                    <p class="the_date_time">Thursday: 7.30 PM</p>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-5 col-md-5 show_the_content">
                                                <div class="show_content">
                                                    <article id="post-276" class="text-left post-276 event type-event status-publish format-standard hentry event_category-events-wines">

                                                        <h2 class="get_text"><a class="title_asa" href="http://vineyard.jwsuperthemes.com/event/summer-solstice-party/">SUMMER SOLSTICE PARTY</a></h2>

                                                        <p class="get_context"><a href="http://vineyard.jwsuperthemes.com/event/summer-solstice-party/">Tastings will be limited to 10 total guests</a></p>
                                                    </article>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-3 col-md-3 show_the_sale">
                                                <div class="show_sale">
                                                    <h2 class="the_sale">$68</h2>
                                                    <p class="the_text_note">Per person</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12 colum_a">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-4 show_the_day">
                                                <div class="show_time_day">
                                                    <h2 class="the_date">26</h2>
                                                    <h3 class="the_month">OCT</h3>
                                                    <p class="the_date_time">Saturday: 12.30 - 2.30 PM</p>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-5 col-md-5 show_the_content">
                                                <div class="show_content">
                                                    <article id="post-274" class="text-left post-274 event type-event status-publish format-standard hentry event_category-events-wines">

                                                        <h2 class="get_text"><a class="title_asa" href="http://vineyard.jwsuperthemes.com/event/wine-club-pick-up-social/">WINE CLUB PICK-UP SOCIAL</a></h2>

                                                        <p class="get_context"><a href="http://vineyard.jwsuperthemes.com/event/wine-club-pick-up-social/">Tastings will be limited to 10 total guests</a></p>
                                                    </article>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-3 col-md-3 show_the_sale">
                                                <div class="show_sale">
                                                    <h2 class="the_sale">$53</h2>
                                                    <p class="the_text_note">Per person</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .event-box-->
                    <div class="blog-box">
                        <div class="container">
                            <div class="title-box">
                                <h2 class="txt-pinyon">Family Winely</h2>
                                <h3>Blog wines</h3>
                            </div>
                            <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>
                            <div class="row blog-box-list">
                                <div class="col-xs-12 col-sm-12 col-md-6 colum_a">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6 thumb-right">
                                            <img src="images/placeholder/01-blog-1.jpg" alt="">
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <article>
                                                <div class="show_meta_day_month">
                                                    <h2 class="the_month">Aug</h2>
                                                    <h2 class="the_date">03</h2>
                                                </div>
                                                <div class="show_text_read">
                                                    <h3 class="show_post_text"><a class="title_asa" href="#">Bruce Neyers of Neyers Vineyards</a>
                                                    </h3>
                                                    <a class="reading" href="#">CONTINUE &nbsp;<i class="fa fa-long-arrow-right"></i></a>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 colum_b">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <img src="images/placeholder/01-blog-2.jpg" alt="">
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <article>
                                                <div class="show_meta_day_month">
                                                    <h2 class="the_month">Oct</h2>
                                                    <h2 class="the_date">03</h2>
                                                </div>
                                                <div class="show_text_read">
                                                    <h3 class="show_post_text"><a class="title_asb" href="#">I’ll Drink to That: Bruce Neyers of Neyers Vineyards</a></h3>
                                                    <a class="reading" href="#">CONTINUE &nbsp;<i class="fa fa-long-arrow-right"></i></a>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 colum_a">
                                    <div class="row">

                                        <div class="col-xs-12 col-sm-6 col-md-6 thumb-right">
                                            <img src="images/placeholder/01-blog-3.jpg" alt="">
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <article>
                                                <div class="show_meta_day_month">
                                                    <h2 class="the_month">OCT</h2>
                                                    <h2 class="the_date">24</h2>
                                                </div>
                                                <div class="show_text_read">
                                                    <h3 class="show_post_text"><a class="title_asa" href="#">Holiday Gift Guide for the Wine Lover</a></h3>
                                                    <a class="reading" href="#">CONTINUE &nbsp;<i class="fa fa-long-arrow-right"></i></a>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 colum_b">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <img src="images/placeholder/01-blog-4.jpg" alt="">
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6">
                                            <article>
                                                <div class="show_meta_day_month">
                                                    <h2 class="the_month">DEC</h2>
                                                    <h2 class="the_date">28</h2>
                                                </div>
                                                <div class="show_text_read">
                                                    <h3 class="show_post_text"><a class="title_asb" href="#">Recipes from a Winemaker’s Restaurant</a></h3>
                                                    <a class="reading" href="#">CONTINUE &nbsp;<i class="fa fa-long-arrow-right"></i></a>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .event-box-->
                </main><!-- .site-main -->
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
        <script src="js/indexproduct.js" type="text/javascript"></script>
        <%--<script src="js/indextime.js" type="text/javascript"></script>--%>
    </body>
        <!-- Custom -->
</html>
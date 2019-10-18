<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Blog Details Fullwidth</title>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $.getJSON(
                "${pageContext.request.contextPath}/message?method=findFiveMessage",
                function (data) {
                    $.each(data , function (i,v) {
                        var lili = "<li class='comment'><div class='comment-wrapper'><div class='comment-avatar'>";
                        lili += "<img class='avatar' alt='' width='70px' height='68px' src='images/placeholder/avatar_0"+(v.mid % 5 + 1)+".jpg'></div>";
                        lili += "<div class='comment-body'><header class='comment-meta clearfix'><cite class='comment-author'>";
                        lili += "<span class='comment-date'>"+v.time+"</span>";
                        lili += "<span><a class='url' rel='external nofollow' href='#'>"+v.name+"</a></span></cite></header><div class='comment-content'>";
                        lili += "<p>"+v.message+"</p></div></div></div></li>";
                        $("#pinglun").append(lili);
                    });
                }
            )
        });
    </script>
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

<body class="single-post">

    <div id="pageloader">
        <div class="s1">
            <div class="s b sb1"></div>
            <div class="s b sb2"></div>
            <div class="s b sb3"></div>
            <div class="s b sb4"></div>
        </div>


        <div class="s2">
            <div class="s b sb5"></div>
            <div class="s b sb6"></div>
            <div class="s b sb7"></div>
            <div class="s b sb8"></div>
        </div>

        <div class="bigcon">
            <div class="big b"></div>
        </div>
    </div><!-- #pageloader -->

    <div id="wrapper">

<div id="login_dialog" class="modal fade login-popup">
    <div class="popup-inner">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
            <h3 class="modal-title">Login</h3>
        </div>
        <form action="#">
            <p class="login-username">
                <label for="user_login">Username*:</label>
                <input name="log" id="user_login" class="input" value="" size="20" type="text">
            </p>
            <p class="login-password">
                <label for="user_pass">Password*:</label>
                <input name="pwd" id="user_pass" class="input" value="" size="20" type="password">
            </p>
            <p class="login-submit">
                <input name="wp-submit" id="wp-submit" class="button-primary" value="Login" type="submit">
            </p>

        </form>
        <div class="modal-footer">
            <a href="#">Register</a>
            <a href="#">Forgot Password</a>
        </div>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div><!-- .search-popup -->

<div id="search_dialog" class="modal fade search-popup">
    <div class="popup-inner">
        <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
        <form action="#">
            <select class="selectpicker search-select" name="search_by_cat" id="search_by_cat">
                <option value="#" selected>All Categories</option>
                <option value="#">Champagne</option>
                <option value="#">Kosher</option>
                <option value="#">Organic</option>
            </select>
            <div class="search-div">
                <input type="text" placeholder="Search">
                <input value="Search" type="submit">
            </div>
        </form>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div><!-- .search-popup -->

<header id="header" class="site-header">

    <div class="top-header">
        <div class="no-container">
            <div class="left-header">
                <span class="icon_setting"><i class="pe-7s-config"></i></span>
                <div class="setting-wrap">
                    <ul class="setting-account-list">
                        <li><a href="#">My Account</a></li>
                        <li><a href="my-wishlist.html">My Wishlist</a></li>
                        <li><a href="compare.html">Compare</a></li>
                        <li><a href="shopping-cart-fullwidth.html">My Cart</a></li>
                        <li><a href="check-out.html">Check out</a></li>
                    </ul>
                    <div class="currency">
                        <span>Currency</span>
                        <ul>
                            <li class="active"><a href="#">USD</a></li>
                            <li><a href="#">EUR</a></li>
                            <li><a href="#">GBP</a></li>
                            <li><a href="#">CNY</a></li>
                        </ul>
                    </div><!-- .currency -->
                    <div class="language">
                        <span>Language</span>
                        <ul>
                            <li class="active"><a href="#"><img src="images/assets/icons/flag-en.jpg" alt=""/></a></li>
                            <li><a href="#"><img src="images/assets/icons/flag-ger.jpg" alt=""/></a></li>
                            <li><a href="#"><img src="images/assets/icons/flag-france.jpg" alt=""/></a></li>
                        </ul>
                    </div><!-- .language -->

                </div>
            </div>

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
                                        <a class="p-thumb" href="productdetails-fullwidth.html">
                                            <img src="images/placeholder/thumb-product-cart1.jpg" alt="">
                                        </a>
                                        <div class="p-info">
                                            <a class="p-title" href="productdetails-fullwidth.html">Tomatin 12 Year Old</a>
                                            <span class="price">
                                                <span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>
                                            </span>
                                            <a class="remove" href="#"><i class="pe-7s-close"></i></a>
                                        </div>
                                    </li>

                                    <li class="clearfix">
                                        <a class="p-thumb" href="productdetails-fullwidth.html">
                                            <img src="images/placeholder/thumb-product-cart2.jpg" alt="">
                                        </a>
                                        <div class="p-info">
                                            <a class="p-title" href="productdetails-fullwidth.html">Tomatin 12 Year Old</a>
                                            <span class="price">
                                                <span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>
                                            </span>
                                            <a class="remove" href="#"><i class="pe-7s-close"></i></a>
                                        </div>
                                    </li>

                                </ul>

                                <p class="total"><strong>Total:</strong> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">£</span>183.26</span></p>

                                <p class="buttons">
                                    <a href="shopping-cart-fullwidth.html" class="ro-btn-bd-2 btn-viewcart wc-forward">VIEW CART</a>
                                    <a href="check-out.html" class="ro-btn-bd-2 btn-checkout wc-forward">CHECK OUT</a>
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
                                <a href="productdetails-fullwidth.html">
                                    <img src="images/placeholder/mega-menu-img.jpg" alt=""/>
                                </a>
                            </div>                          
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Page</h3>
                                <ul>
                                    <li><a href="shopgrid-fullwidth.html">Shop Page</a></li>
                                    <li><a href="productdetails-fullwidth.html">Single Product</a></li>
                                    <li><a href="shopping-cart-fullwidth.html">Shopping cart</a></li>
                                    <li><a href="check-out.html">Checkout</a></li>
                                    <li><a href="compare.html">Compare</a></li>
                                </ul>
                            </div>
                            <div class="mega-item image">
                                <a href="productdetails-fullwidth.html">
                                    <img src="images/placeholder/mega-menu-img2.jpg" alt=""/>
                                </a>
                            </div>
                        </div><!-- .menu-mega -->
                    </li>
                    <li class="mega-menu-wrap"><a href="shopgrid-fullwidth.html">Shop</a>
                        <div class="sub-menu menu-mega">
                            <div class="mega-item image">
                                <a href="productdetails-fullwidth.html">
                                    <img src="images/placeholder/mega-menu-img.jpg" alt=""/>
                                </a>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Page</h3>
                                <ul>
                                    <li><a href="shoplist-leftsidebar.html">Shop List Left Sidebar</a></li>
                                    <li><a href="shoplist-rightsidebar.html">Shop List Right Sidebar</a></li>
                                    <li><a href="shopgrid-fullwidth.html">Shop Grid Full Width</a></li>
                                    <li><a href="shopgrid-leftsidebar.html">Shop Grid Left Sidebar</a></li>
                                    <li><a href="shopgrid-rightsidebar.html">Shop Grid Right Sidebar</a></li>
                                </ul>
                            </div>              
                            <div class="mega-item">
                                <h3 class="menu-title">Shop Single</h3>
                                <ul>
                                    <li><a href="productdetails-fullwidth.html">Full Width</a></li>
                                    <li><a href="productdetails-leftsidebar.html">Left Sidebar</a></li>
                                    <li><a href="productdetails-rightsidebar.html">Right Sidebar</a></li>
                                </ul>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Shopping Cart</h3>
                                <ul>
                                    <li><a href="shopping-cart-fullwidth.html">Cart Full Width</a></li>
                                    <li><a href="shopping-cart-leftsidebar.html">Cart Left Sidebar</a></li>
                                    <li><a href="shopping-cart-rightsidebar.html">Cart Right Sidebar</a></li>
                                </ul>
                            </div>
                            <div class="mega-item">
                                <h3 class="menu-title">Orther</h3>
                                <ul>
                                    <li><a href="my-wishlist.html">My Wishlist</a></li>
                                    <li><a href="check-out.html">Check Out</a></li>
                                    <li><a href="compare.html">Compare</a></li>
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
                    <li class="current-menu-item"><a href="blogdetails-fullwidth.jsp">Blog</a>
                    </li>
                    <li><a href="contact.jsp">Contact</a>
                    </li>
                </ul>

            </nav><!-- .main-menu -->
        </div>
    </div><!-- header-menu -->

</header><!-- .site-header -->

<div id="content" class="site-content content-fullwidth">
<div class="space-dark"></div>
<div class="no-container">
    <div class="blog-breadcrumb">
        <div class="container">

            <div class="intro-div">
                <h1 class="page-title">Full Width</h1>
                <div class="breadcrumb">
                    <ul>

                        <li><a href="index.html">Home</a></li>

                        <li><a href="blogdetails-fullwidth.jsp">Blog</a></li>

                        <li><span class="current">Details</span></li>

                    </ul>

                </div><!-- .breadcrumb -->
            </div>

        </div><!-- .container -->
    </div>
</div>

<div class="container">

<main id="main" class="site-main">

    <article class="post clearfix">

        <div class="post-thumb post-thumb-full">

            <img src="images/placeholder/blog-img01.jpg" alt="">

        </div><!-- .post-thumb.post-thumb-full -->


        <div class="post-info">
            <div class="post-date"><span class="month">Aug</span> <span class="date">08</span></div>

            <h3 class="post-title">William Shatner's New Wine Enterprise</h3>

            <div class="post-content">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. </p>
                <blockquote>
                    Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something.
                    <span class="author-qoute">LUCY MARKET</span>
                </blockquote>
                <p class="txt-title">Recipes from a Winemaker's Restaurant</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nutlla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
            </div>

            <div class="entry-footer">
                <div class="tags-links">
                    <a href="#" rel="tag">Fashions</a>
                    <a href="#" rel="tag">LIFE STYLE</a>
                    <a href="#" rel="tag">Summer</a>
                </div>
                <div class="single-share">
                    <div class="social">
                        <ul>
                            <li><a target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a target="_blank" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a target="_blank" href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a target="_blank" href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a target="_blank" href="#"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div> <!-- entry-footer -->

            <div class="comments-area" id="comments">
                <h3 class="comments-title widget-title"><span>5</span> comments</h3>
                <ol class="comment-list" id="pinglun">


                </ol><!-- .comment-list -->

                <div class="comment-respond" id="respond">
                    <h3 class="comment-reply-title widget-title" id="reply-title">LEAVE A COMMENT</h3>

                    <form novalidate="" class="comment-form" id="commentform" method="post" action="${pageContext.request.contextPath}/message?method=addMessage">

                        <p class="comment-form-author">
                            <input size="30" value="" name="author" placeholder="Name" id="author" type="text">
                        </p>

                        <p class="comment-form-email">
                            <input size="30" value="" name="email" placeholder="Email" id="email" type="text">
                        </p>

                        <p class="comment-form-comment">
                            <textarea aria-required="true" rows="9" cols="45" placeholder="Your comment" name="comment" id="comment"></textarea>
                        </p>

                        <p class="form-submit">
                            <input value="Send Messages" class="submit button radius plum bold" id="submit" name="submit" type="submit">
                        </p>
                    </form>
                </div> <!-- #respond -->
            </div><!-- comments-area -->

        </div><!-- .post-info -->

    </article>


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
<footer id="footer" class="site-footer">
    <div class="container">
        <div class="footer-widget">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                    <div class="footer-item">
                        <aside class="widget about">
                            <div class="textwidget">
                                <a href="index.html" class="logo-ft"><img src="images/assets/logo.png" alt=""/></a>
                                <p>Address : No 40 Baria Sreet 133/2 NewYork City, <br />
                                    NY,  United States <br/>
                                    Email: info.contact@gmail.com<br/>
                                    Phone: (00) 123 456 789</p>
                            </div><!-- .textwidget -->
                        </aside><!-- .widget -->
                    </div><!-- .footer-item -->
                </div>

                <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                    <div class="footer-item">
                        <aside class="widget footer_acc_links">
                            <h3 class="widget-title">My Accounts</h3>
                            <ul class="menu">
                                <li><a href="#">My account</a></li>
                                <li><a href="#">My orders</a></li>
                                <li><a href="#">Register</a></li>
                                <li><a href="#">Login</a></li>
                            </ul>
                        </aside><!-- .widget -->
                    </div><!-- .footer-item -->
                </div>

                <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                    <div class="footer-item">
                        <aside class="widget quick_links">
                            <h3 class="widget-title">Quick link</h3>
                            <ul>
                                <li><a href="#">New User</a></li>
                                <li><a href="#">Help Center</a></li>
                                <li><a href="#">Report Spam</a></li>
                                <li><a href="#">FAQs</a></li>
                            </ul>
                        </aside><!-- .widget -->
                    </div><!-- .footer-item -->
                </div>

                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                    <div class="footer-item">
                        <aside class="widget tags_clound">
                            <h3 class="widget-title">Tag Clound</h3>
                            <ul>
                                <li><a href="#">Music</a></li>
                                <li><a href="#">Travel</a></li>
                                <li><a href="#">Video</a></li>
                                <li><a href="#">Ecommerce</a></li>
                                <li><a href="#">Feature</a></li>
                                <li><a href="#">Text</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Fashion</a></li>
                                <li><a href="#">Store</a></li>
                            </ul>
                        </aside><!-- .widget -->
                    </div><!-- .footer-item -->
                </div>
            </div><!-- .row -->
        </div><!-- .footer-widget -->

        <div class="row">
            <div class="col-md-12">
                <div class="bot-footer clearfix">
                    <nav class="footer-menu">
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Customer Service</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Site Map</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </nav><!-- .footer-menu -->

                    <div class="copyright">
                        <p>Copyright <a href="#">VineYard</a> © 2015. All rights reserved.</p>
                    </div><!-- .copyright -->
                </div><!-- .bot-footer -->
            </div>
        </div><!-- .row -->
    </div><!-- .container -->

</footer><!-- .site-footer -->
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

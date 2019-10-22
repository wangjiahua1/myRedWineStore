<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="js/ie9/html5shiv.min.js"></script>
    <script src="js/ie9/respond.min.js"></script>
    <![endif]-->
</head>

<body>

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

        <form action="${pageContext.request.contextPath}/user?method=login&url=my-wishlist.jsp" method="post">
            <p class="login-username">
                <label for="user_login">Username*:</label>
                <input name="log" id="user_login" class="input" value="10086@163.com" size="20" type="text">
            </p>
            <p class="login-password">
                <label for="user_pass">Password*:</label>
                <input name="pwd" id="user_pass" class="input" value="123456789." size="20" type="password">
            </p>
            <p class="login-submit">
                <input  id="wp-submit" class="button-primary" value="Login" type="submit">
            </p>
        </form>

        <div class="modal-footer">
            <a href="register.jsp">Register</a>
            <a href="forgotpassword.jsp">Forgot Password</a>
        </div>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div><!-- .search-popup -->

        <div id="myAccout_dialog" class="modal fade login-popup">
            <div class="popup-inner">
                <div class="modal-header">
                    <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
                    <h3 class="modal-title">MyAccout</h3>
                </div>

                <form action="${pageContext.request.contextPath}/user?method=" method="post">
                    <p class="login-username">
                        <label for="user_login">Username*:</label>

                        <input name="log" id="user_login" class="input" value="${user.username}
                                <c:if test="${user.username==null}">请设置</c:if>" size="20" type="text"/>
                    </p>
                    <p class="login-password">
                        <label for="user_pass">Password*:</label>
                        <input name="pwd" id="user_pass" class="input" value="${user.password}" size="20" type="password"/>
                    </p>
                    <p class="login-username">
                        <label for="sex">Sex*:</label>
                        <input name="sex" id="sex" class="input" value="${user.sex}<c:if test="${user.sex==null}">请设置</c:if>" size="20" type="text"/>
                    </p>
                    <p class="login-username">
                        <label for="telephone">Telephone*:</label>
                        <input name="telephone" id="telephone" class="input" value="${user.telephone}<c:if test="${user.telephone==null}">请设置</c:if>" size="20" type="text"/>
                    </p>
                    <p class="login-username">
                        <label for="email">Email*:</label>
                        <input name="email" id="email" class="input" value="${user.email}<c:if test="${user.email==null}">请设置</c:if>" size="20" type="text"/>
                    </p>
                    <p class="login-submit">
                        <input  id="wp-submit" class="button-primary" value="Edit" type="submit"/>
                    </p>
                </form>

                <div class="modal-footer">
                    <a href="register.jsp">Register</a>
                    <a href="forgotpassword.jsp">Forgot Password</a>
                </div>
            </div><!-- .popup-inner -->
            <div class="mask popup-close"></div>
        </div>

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
                        <li>
                            <!--利用session中的user来判断用户是否登录-->
                            <!--通过改变data-target属性的值来跳转不同页面-->
                            <a class="top-account top-login" id="myAccount"
                               href="#" data-toggle="modal"
                               data-target="<c:if test="${user!=null}">#myAccout_dialog</c:if>
                                <c:if test="${user==null}">#login_dialog</c:if>">
                                My Account
                            </a>
                        </li>
                        <li><a href="my-wishlist.jsp">My Wishlist</a></li>
                        <li><a href="compare.jsp">Compare</a></li>
                        <li><a href="shopgridleft.jsp">My Cart</a></li>
                        <li><a href="check-out.jsp">Check out</a></li>
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
                    <c:if test="${user!=null}">
                        <li style="font-size:20px ">${user.username}</li>
                        <li >
                            <a href="${pageContext.request.contextPath}/user?method=logout" style="font-size: 20px">
                                LogOut
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${user==null}">
                        <li>
                            <a class="top-account top-login" href="#" data-toggle="modal" data-target="#login_dialog">
                                <i class="pe-7s-users"></i>
                            </a>
                        </li>
                    </c:if>

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
                                    <li><a href="productdetails-leftsidebar.html">Left Sidebar</a></li>
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
                                    <li class="current-menu-item"><a href="my-wishlist.jsp">My Wishlist</a></li>
                                    <li><a href="check-out.jsp">Check Out</a></li>
                                    <li><a href="compare.jsp">Compare</a></li>
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
                            <li><a href="blogdetails-fullwidth.html">Blog Details FullWidth</a></li>
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
                <h1 class="page-title">My WishList</h1>
                <div class="breadcrumb">
                    <ul>

                        <li><a href="#">Home</a></li>

                        <li><span class="current">My WishList</span></li>

                    </ul>

                </div><!-- .breadcrumb -->
            </div>

        </div><!-- .container -->
    </div>
</div>

<div class="container">

<main id="main" class="site-main">

    <div class="inner-content">
        <p class="wishlist-desc-text">Product with varients has added to your wishlist. <a href="shopgrid-fullwidth.jsp">Click here</a> to continue shopping</p>
        <div class="woocommerce">
            <form class="cart-form" action="#" method="post">

                <div class="cart-table">
                    <table class="shop_table cart">
                        <thead>
                        <tr>
                            <th class="table-col-product">Images</th>
                            <th class="table-col-name">Product name</th>
                            <th class="table-col-price">Price</th>
                            <th class="table-col-qty text-center">Quantity</th>
                            <th class="table-col-total text-right">Total</th>
                            <th class="product-remove text-right"><a href="#" class="" title="#"><i class="pe-7s-close"></i></a></th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${collects}" var="c">
                            <tr class="cart-item cart_item">
                                <td>
                                    <a href="productdetails-fullwidth.jsp"><img src="${pageContext.request.contextPath}/${c.product.pimage}" style="height: 130px;" alt=""></a>
                                </td>
                                <td class="table-col-name">
                                    <a href="productdetails-fullwidth.jsp">${c.product.pname}</a>
                                    <div class="meta-cart">
                                        <div class="list-color">Color: <a href="#" class="${c.product.color}"></a> </div>
                                        <div class="list-size">Size: <a href="#">${c.product.size}</a></div>
                                    </div>
                                </td>
                                <td class="table-col-price">
                                    <span class="amount"><span class="symbol">$</span>${c.product.price}</span>
                                </td>
                                <td class="table-col-qty text-center">
                                    <div class="quantity">
                                        <input type="number" step="1" min="0" value="${c.number}" title="Qty" class="qty" size="4">
                                    </div>
                                </td>
                                <td class="price text-right">
                                    <span class="amount"><span class="symbol">$</span>${c.total}</span>
                                </td>
                                <td class="product-remove text-right">
                                    <a href="#" class="remove" title="Remove this item"><i class="pe-7s-close"></i></a>
                                </td>
                            </tr>
                        </c:forEach>

                        <tr class="action-wrap">
                            <td colspan="6" class="actions clearfix">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div class="wc-proceed-to-checkout">

                                            <p class="return-to-shop"><a class="button radius" href="#">Continue Shopping</a></p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">

                                        <input class="button radius plum" name="update_cart" value="Update Cart" disabled="" type="submit">

                                    </div>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>

            </form>


        </div><!-- .woocommerce -->

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

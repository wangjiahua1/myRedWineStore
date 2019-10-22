<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Check out</title>

    <script src="js/jquery.js"></script>
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
    <script type="text/javascript" src="js/chooseme.js"></script>
    <![endif]-->
    <script type="text/javascript">
        $(function () {
            $("#place-order").click(function () {
                console.log("操蛋");
                console.log(${cartTotal.alltotal});
                window.location.href="order?method=orderredmine&total=${cartTotal.alltotal}";
            });
        });
    </script>
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

    <%--显示个人信息弹窗--%>
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

    <div id="login_dialog" class="modal fade login-popup">
        <div class="popup-inner">
            <div class="modal-header">
                <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
                <h3 class="modal-title">Login</h3>
            </div>

            <form action="${pageContext.request.contextPath}/user?method=login&url=check-out.jsp" method="post">
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
                            <li><a href="${pageContext.request.contextPath}/collect?method=findAllCollect">My Wishlist</a></li>
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
                                        <li><a href="my-wishlist.jsp">My Wishlist</a></li>
                                        <li class="current-menu-item"><a href="check-out.jsp">Check Out</a></li>
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
                        <h1 class="page-title">Check out</h1>
                        <div class="breadcrumb">
                            <ul>

                                <li><a href="#">Home</a></li>

                                <li><span class="current">Check out</span></li>

                            </ul>

                        </div><!-- .breadcrumb -->
                    </div>

                </div><!-- .container -->
            </div>
        </div>

        <div class="container">

            <main id="main" class="site-main">

                <div class="inner-content">

                    <div class="return-customer">
                        Returning customer? <a href="#">Click here to login</a>
                    </div>
                    <form class="form-checkout">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="billing-block">
                                    <h3 class="title-checkout">BILLING ADDRESS</h3>



                                    <c:forEach items="${cartTotal.carts}" var="cart">
                                        <p>${cart.pname}</p>
                                        <p>${cart.price}</p>
                                    </c:forEach>






                                    <div class="input-field select-country">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>Country <span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <label for="bill-country"><i class="fa fa-angle-down"></i></label>
                                                <select name="bill-country" id="bill-country" class="selectbox">
                                                    <option disabled selected>Select Country</option>
                                                    <option value="country1">Vietnamese</option>
                                                    <option value="country1">Chinese</option>
                                                    <option value="country1">Laos</option>
                                                    <option value="country1">India</option>
                                                    <option value="country1">Cambodia</option>
                                                    <option value="country1">Myanmar</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>First name <span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-first-name" type="text" class="input-text" id="bill-first-name" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>Last name <span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-last-name" type="text" class="input-text" id="bill-last-name" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>company name <span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-company-name" type="text" class="input-text" id="bill-company-name" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>company name <span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-address-name" type="text" class="input-text" id="bill-address-name" placeholder="Street Address" required>
                                                <input name="bill-apartment-name" type="text" class="input-text" id="bill-apartment-name" placeholder="Apartment, suite, unite ect (optinal)" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>TOWN / CITY<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-town-city" type="text" class="input-text" id="bill-town-city" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>COUNTRY / STATES<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-country-states" type="text" class="input-text" id="bill-country-states" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>POSTCODE / ZIP<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-postcode-zip" type="text" class="input-text" id="bill-postcode-zip" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>EMAIL ADDRESS<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-email" type="email" class="input-text" id="bill-email" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>PHONE<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-phone" type="text" class="input-text" id="bill-phone" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="checkbox">
                                        <input type="checkbox" value="check" name="creat-acc" id="creat-acc" checked/>
                                        <label for="creat-acc">Create an account?</label>
                                        <span class="block">Create an account by entering the information below. If you are a returning customer please login at the top of the page</span>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                <label>ACCOUNT PASSWORD<span>*</span></label>
                                            </div>
                                            <div class="col-lg-9 col-md-9 col-sm-9">
                                                <input name="bill-acc-pw" type="password" class="input-text" id="bill-acc-pw" required>
                                            </div>
                                        </div>
                                    </div><!-- input-field -->

                                    <div class="checkbox">
                                        <input type="checkbox" value="check" name="creat-acc" id="creat-acc2" checked/>
                                        <label for="creat-acc2">Create an account?</label>
                                    </div><!-- input-field -->

                                    <div class="input-field">
                                        <label>ORDER NOTES</label>
                                        <input name="order-note" type="text" class="input-text" id="order-note">
                                    </div><!-- input-field -->

                                </div><!-- billing-block -->
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="infor-checkout">

                                    <div class="promotion-code">
                                        <h3 class="title-checkout">PROMOTIONAL CODE</h3>
                                        <div class="input-field">
                                            <span class="block">Enter your coupon code if you have one</span>
                                            <input name="bill-code" type="text" class="input-text" id="bill-code" placeholder="Coupon code">
                                            <input type="submit" class="button radius btn-subscribe" name="prom-code" value="subscribe"/>
                                        </div>
                                    </div><!-- promotion-code -->

                                    <div class="your-order">
                                        <h3 class="title-checkout">Your Oder</h3>
                                        <div class="product-total">
                                            <table>
                                                <tr class="table-title txt-up">
                                                    <th>Product</th>
                                                    <th>Total</th>
                                                </tr>
                                                <tr class="product-order">
                                                    <td colspan="2">
                                                        <ul>
                                                            <li>
                                                                <span class="product-qty"><a href="single-product.html">Tomatin 12 Year Old </a>  x 01</span>
                                                                <span class="price">$142.00</span>
                                                            </li>
                                                            <li>
                                                                <span class="product-qty"><a href="single-product.html">Tomatin 12 Year Old </a>  x 01</span>
                                                                <span class="price">$144.00</span>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr class="cart-subtotal">
                                                    <th>Cart Subtotal</th>
                                                    <td><span class="amount">$286.00</span></td>
                                                </tr>
                                                <tr class="shipping">
                                                    <th>Shipping and Handling</th>
                                                    <td>Free Shipping</td>
                                                </tr>
                                                <tr class="order-total txt-up">
                                                    <th>Order Total</th>
                                                    <td><span class="amount">${cartTotal.alltotal}</span></td>
                                                </tr>
                                            </table>
                                        </div><!-- .product-total -->
                                        <div class="payment-menthod">
                                            <ul>
                                                <li>
                                                    <div class="radio">
                                                        <input type="radio" checked="checked" value="cheque" name="payment_method" id="direct">
                                                        <label for="direct">Create an account?</label>
                                                    </div>

                                                    <div class="payment-box">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="radio">
                                                        <input type="radio" value="cheque" name="payment_method" id="payment_cheque">
                                                        <label for="payment_cheque">Cheque Payment</label>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="radio">
                                                        <input type="radio" value="cheque" name="payment_method" id="paypal">
                                                        <label for="paypal">Paypal</label>
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="input-field">
                                                <input name="place-order" type="submit" class="button radius place-order" id="place-order" value="Place Order">
                                            </div><!-- input-field -->
                                        </div><!-- payment-menthod -->
                                    </div><!-- your-order -->
                                </div><!-- infor-checkout -->
                            </div>
                        </div>
                    </form><!-- form-checkout -->

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

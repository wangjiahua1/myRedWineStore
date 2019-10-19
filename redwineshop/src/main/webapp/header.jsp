<%@ page contentType="textml;charset=UTF-8" language="java"%>
<header id="header" class="site-header">
    <script src="js/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/chooseme.js"></script>
    <div class="top-header">
        <div class="no-container">
            <div class="left-header">
                <span class="icon_setting"><i class="pe-7s-config"></i></span>
                <div class="setting-wrap">
                    <ul class="setting-account-list">
                        <li><a href="#">My Account</a></li>
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
                                            <img src="images/placeholder/thumb-product-cart1.jpg" alt="" />
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
                                            <img src="images/placeholder/thumb-product-cart2.jpg" alt="" />
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
                                    <a href="shopgridleft.jsp" class="ro-btn-bd-2 btn-viewcart wc-forward">VIEW CART</a>
                                    <a href="check-out.jsp" class="ro-btn-bd-2 btn-checkout wc-forward">CHECK OUT</a>
                                </p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!-- right-header -->

            <div class="site-brand">
                <a class="logo" href="index.jsp">
                    <img src="images/assets/logo.png" alt="Vineyard" />
                </a>
            </div><!-- .site-brand -->
        </div>
    </div><!-- top-header -->

    <div class="header-menu">
        <div class="container">
            <div class="site-brand">
                <a class="logo" href="index.jsp">
                    <img src="images/assets/logo.png" alt="Vineyard" />
                </a>
            </div><!-- .site-brand -->
            <nav class="main-menu">
                <span class="mobile-menu"><i class="fa fa-bars"></i></span>
                <ul>
                    <li id="home" class="mega-menu-wrap"><a href="index.jsp" id="choose1" class="choose1">Home</a>

                    </li>
                    <li id="shop" class="mega-menu-wrap"><a href="${pageContext.request.contextPath}/page?method=getCurrentPage&currentPage=1" class="choose1">Shop</a>

                    </li>

                    <li id="blog" class="mega-menu-wrap"><a href="blog.jsp" class="choose1">Blog</a>

                    </li>
                    <li id="contact"><a href="contact.jsp" class="choose1">Contact</a>
                    </li>
                </ul>

            </nav><!-- .main-menu -->
        </div>
    </div><!-- header-menu -->

</header><!-- .site-header -->

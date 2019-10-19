<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Shopping Cart Fullwidth</title>

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
                <h1 class="page-title">Shopping Cart</h1>
                <div class="breadcrumb">
                    <ul>

                        <li><a href="#">Home</a></li>

                        <li><span class="current">Shopping Cart</span></li>

                    </ul>

                </div><!-- .breadcrumb -->
            </div>

        </div><!-- .container -->
    </div>
</div>

<div class="container">

<main id="main" class="site-main">

    <div class="inner-content">

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
                        <c:forEach items="${carts}" var="cart">
                        <tr class="cart-item cart_item">

                            <td>
                                <a href="productdetails-fullwidth.html"><img style="height: 70px"  src="${pageContext.request.contextPath}/${cart.pimage}" alt="" ></a>
                            </td>

                            <td class="table-col-name">
                                <a href="productdetails-fullwidth.html">${cart.pname}</a>
                                <div class="meta-cart">
                                    <div class="list-color">Color: <a href="#" class="yellow"></a> </div>
                                    <div class="list-size">Size: <a href="#">M</a></div>
                                </div>
                            </td>

                            <td class="table-col-price">
                                <span class="amount"><span class="symbol">$</span>${cart.price}</span>
                            </td>

                            <td class="table-col-qty text-center">
                                <div class="quantity">
                                    <input type="number" step="1" min="0" value="${cart.quantity}" title="Qty" class="qty" size="4">
                                </div>
                            </td>

                            <td class="price text-right">
                                <span class="amount"><span class="symbol">$</span>${cart.total}</span>
                            </td>

                            <td class="product-remove text-right">
                                <a href="#" class="remove" title="Remove this item"><i class="pe-7s-close"></i></a>
                            </td>

                        </tr>
                        </c:forEach>
<%--
                        <tr class="cart-item cart_item">

                            <td>
                                <a href="productdetails-fullwidth.html"><img src="images/placeholder/feature-prod-img1.jpg" alt=""></a>
                            </td>

                            <td class="table-col-name">
                                <a href="productdetails-fullwidth.html">The Gooseberry </a>
                                <div class="meta-cart">
                                    <div class="list-color">Color: <a href="#" class="yellow"></a> </div>
                                    <div class="list-size">Size: <a href="#">M</a></div>
                                </div>
                            </td>

                            <td class="table-col-price">
                                <span class="amount"><span class="symbol">$</span>145.00</span>
                            </td>

                            <td class="table-col-qty text-center">
                                <div class="quantity">
                                    <input type="number" step="1" min="0" value="1" title="Qty" class="qty" size="4">
                                </div>
                            </td>

                            <td class="price text-right">
                                <span class="amount"><span class="symbol">$</span>145.00</span>
                            </td>

                            <td class="product-remove text-right">
                                <a href="#" class="remove" title="Remove this item"><i class="pe-7s-close"></i></a>
                            </td>

                        </tr>

                        <tr class="cart-item cart_item">

                            <td>
                                <a href="productdetails-fullwidth.html"><img src="images/placeholder/feature-prod-img1.jpg" alt=""></a>
                            </td>

                            <td class="table-col-name">
                                <a href="productdetails-fullwidth.html">The Gooseberry </a>
                                <div class="meta-cart">
                                    <div class="list-color">Color: <a href="#" class="yellow"></a> </div>
                                    <div class="list-size">Size: <a href="#">M</a></div>
                                </div>
                            </td>

                            <td class="table-col-price">
                                <span class="amount"><span class="symbol">$</span>145.00</span>
                            </td>

                            <td class="table-col-qty text-center">
                                <div class="quantity">
                                    <input type="number" step="1" min="0" value="1" title="Qty" class="qty" size="4">
                                </div>
                            </td>

                            <td class="price text-right">
                                <span class="amount"><span class="symbol">$</span>145.00</span>
                            </td>

                            <td class="product-remove text-right">
                                <a href="#" class="remove" title="Remove this item"><i class="pe-7s-close"></i></a>
                            </td>

                        </tr>

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
                        </tr>--%>

                        </tbody>
                    </table>
                </div>

            </form>

            <div class="cart-collaterals row">
                <aside class="widget col-md-4">
                    <div class="cal-shipping">
                        <h3>estimate shipping and tax</h3>
                        <p class="desc-cal">Enter your destination to get shipping & tax</p>
                        <form action="#">
                            <div class="cart-input">
                                <span>Country *:</span>
                                <label for="country" class="sl-label"><i class="fa fa-angle-down"></i></label>
                                <select name="country" id="country" class="selectbox">
                                    <option value="default">Select option</option>
                                    <option value="vietnam">Vietnam</option>
                                    <option value="us">US</option>
                                    <option value="uk">UK</option>
                                </select>
                            </div>

                            <div class="cart-input">
                                <span>State/Province *:</span>
                                <label for="bill-provin" class="sl-label"><i class="fa fa-angle-down"></i></label>
                                <select name="bill-provin" id="bill-provin" class="selectbox">
                                    <option value="default">Select option</option>
                                    <option value="country1">Vinh</option>
                                    <option value="country2">Ha Noi</option>
                                </select>
                            </div>

                            <div class="input-text cart-input">
                                <span>Zip/Postal code</span>
                                <input type="text" placeholder="Post Code / Zip">
                            </div>

                            <div class="input-submit">
                                <input class="button bold radius white" type="submit" value="get a quote">
                            </div>
                        </form>
                    </div><!-- .cal-shipping -->
                </aside>

                <aside class="widget col-md-4">
                    <div class="cal-shipping">
                        <h3>Discount codes</h3>
                        <p class="desc-cal">Enter your coupin if you have one</p>

                        <form action="#">
                            <div class="cart-input">
                                <input name="bill-code" class="input-text" id="bill-code" type="text">
                                <input class="button bold radius white btn-subscribe" type="submit" value="Subscribe">
                            </div>
                        </form>
                    </div><!-- .cal-shipping -->
                </aside>

                <aside class="widget col-md-4">
                    <div class="cal-shipping">
                        <h3>Cart total</h3>
                        <table class="clearfix">
                            <tr class="cart-subtotal">
                                <th>Subtotal:</th>
                                <td><strong><span class="amount">$142.00</span></strong></td>
                            </tr>
                            <tr class="cart-grandtotal">
                                <th>GRAND TOTAL:</th>
                                <td><strong><span class="amount">$142.00</span></strong></td>
                            </tr>
                        </table>
                        <div class="cart-actions clearfix">
                            <span>Checkout with multiple address</span>
                            <form action="#">
                                <a class="button radius text-center bold plum" href="checkout.html">PROCESS TO CHECK OUT</a>
                            </form>
                        </div><!-- .cart-actions -->
                    </div><!-- .cal-shipping -->
                </aside>
            </div><!-- .cart-collaterals -->


        </div><!-- .container -->

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

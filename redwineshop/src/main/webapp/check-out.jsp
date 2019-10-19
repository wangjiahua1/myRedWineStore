<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Check out</title>

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
                                                    <td><span class="amount">$286.00</span></td>
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

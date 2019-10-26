<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Details Full Width</title>

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
<script type="text/javascript">

    function addCollect(pid) {
        $.getJSON(
            "collect?method=addCollect",
            {pid:pid},
            function (data) {
                console.log(data);
            }
        )
    }


</script>

<!--添加成功框-->
<div id="add_success" class="modal fade login-popup">
    <div class="popup-inner">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
            <h3 class="modal-title">添加收藏成功</h3>
        </div>

        <p class="login-submit">
            <input  id="wp-submit" class="button-primary" value="确定" type="submit" data-dismiss="modal" aria-hidden="true"/>
        </p>

    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div>

<jsp:include page="pageloader.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div id="content" class="site-content content-fullwidth">
    <div class="space-dark"></div>
    <div class="no-container">
        <div class="blog-breadcrumb">
            <div class="container">

                <div class="intro-div">
                    <h1 class="page-title">Full Width</h1>
                    <div class="breadcrumb">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="page?method=getPage&currentPage=1">Shop</a></li>
                            <li><span class="current">Details</span></li>
                        </ul>
                    </div><!-- .breadcrumb -->
                </div>
            </div><!-- .container -->
        </div>
    </div>

    <div class="container">

        <main id="main" class="site-main">

            <div class="product-detail">
                <div class="images row">
                    <div class="p-preview owl-carousel">
                        <div class="item">
                            <a data-gal="prettyPhoto[p-gal1]" class="zoom" href="#">
                                <img src="${product.pimage}" style="width:210px"  alt="" />
                            </a>
                        </div>
                        <div class="item">
                            <a data-gal="prettyPhoto[p-gal1]" class="zoom" href="#">
                                <img src="${product.pimage}" style="width:210px"  alt="" />
                            </a>
                        </div>
                        <div class="item">
                            <a data-gal="prettyPhoto[p-gal1]" class="zoom" href="#">
                                <img src="${product.pimage}" style="width:210px"   alt="" />
                            </a>
                        </div>
                    </div><!-- #p-preview -->

                    <div class="p-thumb">
                        <ul>
                            <li class="active"><a href="#">
                                <img src="${product.pimage}" width: 157.5px alt="" />
                            </a></li>
                            <li><a href="#">
                                <img src="${product.pimage}" width: 157.5px  alt="" />
                            </a></li>
                            <li><a href="#">
                                <img src="${product.pimage}" width: 157.5px  alt="" />
                            </a></li>
                        </ul>
                    </div><!-- #p-thumb -->
                </div><!-- .images -->
                <div class="p-info">
                    <h3 class="p-title"><a href="details-rightsidebar.html">${product.pname}</a></h3>

                    <div class="clearfix">
                        <div class="star-rating">
                            <span style="width:60%"></span>
                        </div>

                        <span class="price">
                    <span class="amount"><span>$</span>${product.price}</span>
                </span>
                    </div>
                    <div class="p-desc">
                        <p>
                            A generous helping of cocoa, vanilla, over-ripe plum, and raspberry. Long on the mid palate with subtle tannins makes this very easy to drink. A deliciously rich merlot only Washington fruit can produce. 88 points by wine enthusiasists.
                        </p>
                    </div><!-- p-desc -->
                    <form class="form-info" action="#" method="post">
                        <div class="p-select">
                            <div class="row">
                                <div class="sl-color col-lg-6 col-md-6 col-sm-6">
                                    <span>Select Color: </span>
                                    <ul class="list-color">
                                        <li><a href="javascript:void(0)" class="red">Red<span class="count">(42)</span></a></li>

                                        <li><a href="javascript:void(0)" class="black">Black <span class="count">(28)</span></a></li>

                                        <li><a href="javascript:void(0)" class="blue">Blue <span class="count">(27)</span></a></li>

                                        <li><a href="javascript:void(0)" class="green">Green <span class="count">(43)</span></a></li>

                                        <li><a href="javascript:void(0)" class="yellow">Yellow <span class="count">(15)</span></a></li>

                                    </ul>
                                </div>
                                <div class="sl-sizes col-lg-6 col-md-6 col-sm-6">
                                    <span>Select Size: </span>
                                    <ul class="list-size clearfix" id="list">
                                        <li><a href="javascript:void(0)">S</a></li>

                                        <li><a href="javascript:void(0)">M</a></li>

                                        <li><a href="javascript:void(0)">L</a></li>

                                        <li><a href="javascript:void(0)">XL</a></li>

                                        <li><a href="javascript:void(0)">XXL</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div><!-- p-select -->

                        <div class="p-tag-share clearfix">
                            <div class="p-tags">
                                <a href="#">blackberry</a> ,
                                <a href="#">cassis</a> ,
                                <a href="#">plum</a> ,
                                <a href="#">vanilla</a> ,
                                <a href="#">cocoa</a>
                            </div><!-- p-tags -->
                        </div><!-- p-tag-share -->
                        <div class="p-actions">
                            <div class="attr-item">
                                <label>Qty:</label>
                                <div class="quantity">
                                    <input type="number" step="1" min="0" value="1" title="Qty" class="qty" size="4">
                                </div>
                            </div><!-- .attr-item -->
                            <div class="p-actions-btn">
                                <a href="#" class="button btn-circle quick-view"><span class="pe-7s-expand1"></span></a>
                                <a href="#" class="button btn-circle view-compare"><span class="pe-7s-refresh-2"></span></a>
                                <a href="javascript:void (0)" data-toggle="modal" onclick="addCollect('${redwine.pid}')"
                                   id="addCollect" class="button btn-circle add-to-wishlist" data-target="
                                    <c:if test="${user!=null}">#add_success</c:if>
                                    <c:if test="${user==null}">#login_dialog</c:if>">
                                    <span class="pe-7s-like" ></span>
                                </a>
                                <a href="product?method=addcart&pid=${product.pid}" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                            </div>
                        </div><!-- .p-actions -->
                    </form>
                </div><!-- .p-info -->
                <div class="tabs-infor">
                    <ul>
                <div class="p-tag-share clearfix">
                    <div class="p-tags">
                        <a href="#">blackberry</a> ,
                        <a href="#">cassis</a> ,
                        <a href="#">plum</a> ,
                        <a href="#">vanilla</a> ,
                        <a href="#">cocoa</a>
                    </div><!-- p-tags -->
                    <div class="social">
                        <span>Share Link: </span>
                        <ul>
                            <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div><!-- p-tag-share -->
                <div class="p-actions">
                    <div class="attr-item">
                        <label>Qty:</label>
                        <div class="quantity">
                            <input type="number" step="1" min="0" value="1" title="Qty" class="qty" size="4">
                        </div>
                    </div><!-- .attr-item -->
                    <div class="p-actions-btn">
                        <a href="#" class="button btn-circle quick-view"><span class="pe-7s-expand1"></span></a>
                        <a href="#" class="button btn-circle view-compare"><span class="pe-7s-refresh-2"></span></a>
                        <a href="#" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                        <a href="${pageContext.request.contextPath}/product?method=addcart&pid=${redwine.pid}" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                    </div>
                </div><!-- .p-actions -->
            </form>
        </div><!-- .p-info -->
        <div class="tabs-infor">
            <ul>

                        <li class="tab-item">
                            <a href="#" class="tab-title">Product DESCRIPTION</a>
                            <div class="tab-content">
                                <span class="color1">Adult Signature Required :</span> You must be at least 21 years of age to purchase wine. Adult signature is required on delivery.
                                <br/>
                                <span class="color1">Weather Related Delays :</span> The seller may delay shipment if the temperature at the shipping or delivery address is not between 45°F and 80°F.
                                <br/>
                                <span class="color1">Shipping Policies :</span> View shipping rates, policies, and permit information. <br/>
                                <span class="color1">Expected Handling Time :</span> 2 days.
                            </div>
                        </li>

                        <li class="tab-item">
                            <a href="#" class="tab-title">additional imformation</a>
                            <div class="tab-content">
                                <form class="add-info-form" action="#">
                                    <input type="text" placeholder="Your information here">
                                    <input class="button comment-reply-link" type="submit" value="Send">
                                </form>
                            </div>
                        </li>

                        <li class="tab-item">
                            <a href="#" class="tab-title">Customer Reviews <span>(5)</span></a>
                            <div class="tab-content">
                                <ol class="comment-list" id="huifu">

                                </ol><!-- .comment-list -->
                                <div class="comment-respond" id="respond">
                                    <h3 class="comment-reply-title widget-title" id="reply-title">LEAVE A COMMENT</h3>
                                    <form novalidate="" class="comment-form" id="commentform" method="post" action="${pageContext.request.contextPath}/comment?method=addcomment">
                                        <p class="comment-form-author">
                                            <input size="30" value="${sessionScope.user.username}" name="name" placeholder="Name" id="author" type="text">
                                        </p>
                                        <p class="comment-form-email">
                                            <input size="30" value="${sessionScope.user.email}" name="email" placeholder="Email" id="email" type="text">
                                        </p>
                                        <p class="comment-form-comment">
                                            <textarea aria-required="true" rows="9" cols="45" placeholder="Your comment" name="desc" id="comment"></textarea>
                                        </p>
                                        <p class="form-submit">
                                            <input value="Send Messages" class="submit button radius plum bold" id="submit" name="submit" type="submit">
                                        </p>
                                    </form>
                                </div> <!-- #respond -->
                            </div>
                        </li>

                    </ul>
                </div><!-- p-summary -->
            </div><!-- product-details -->

        </main><!-- .site-main -->

        <div class="featured-product">
            <div class="title-box">
                <h2 class="txt-pinyon">Vineyard</h2>
                <h3>FEATURED WINES</h3>
            </div>
            <div class="break-line"><span><img src="images/assets/break-image.png" alt=""/></span></div>

            <div class="list-products row">

            </div>

            <div class="view-all">
                <a href="page?method=getPage&currentPage=1" class="button radius">Show all</a>

            </div>
        </div><!-- featured-product -->

    </div><!-- .container -->

</div><!-- .site-content -->
<div id="bottom" class="site-bottom">
    <div class="no-container">
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
<script src="js/detailproduct.js" type="text/javascript"></script>
<script src="js/winecomment.js"></script>
<script src="js/indexproduct.js"></script>
</body>
</html>

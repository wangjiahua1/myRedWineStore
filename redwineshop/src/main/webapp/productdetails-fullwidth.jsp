<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<jsp:include page="pageloader.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

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
                        <li><a href="page?method=getCurrentPage&currentPage=1">Shop</a></li>
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
                        <img src="${RedWine.pimage}" style="width:210px"  alt="" />
                    </a>
                </div>
                <div class="item">
                    <a data-gal="prettyPhoto[p-gal1]" class="zoom" href="#">
                        <img src="${RedWine.pimage}" style="width:210px"  alt="" />
                    </a>
                </div>
                <div class="item">
                    <a data-gal="prettyPhoto[p-gal1]" class="zoom" href="#">
                        <img src="${RedWine.pimage}" style="width:210px"   alt="" />
                    </a>
                </div>
            </div><!-- #p-preview -->

            <div class="p-thumb">
                <ul>
                    <li class="active"><a href="#">
                        <img src="${RedWine.pimage}" width: 157.5px alt="" />
                    </a></li>
                    <li><a href="#">
                        <img src="${RedWine.pimage}" width: 157.5px  alt="" />
                    </a></li>
                    <li><a href="#">
                        <img src="${RedWine.pimage}" width: 157.5px  alt="" />
                    </a></li>
                </ul>
            </div><!-- #p-thumb -->
        </div><!-- .images -->
        <div class="p-info">
            <h3 class="p-title"><a href="details-rightsidebar.html">${RedWine.pname}</a></h3>

            <div class="clearfix">
                <div class="star-rating">
                    <span style="width:60%"></span>
                </div>

                <span class="price">
                    <span class="amount"><span>$</span>${RedWine.price}</span>
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
                        <a href="my-wishlist.jsp" class="button btn-circle add-to-wishlist"><span class="pe-7s-like"></span></a>
                        <a href="shopping-cart-fullwidth.jsp" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
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
                    <a href="#" class="tab-title">Customer Reviews <span>(15)</span></a>
                    <div class="tab-content">
                        <ol class="comment-list">
                            <li class="comment">

                                <div class="comment-wrapper">

                                    <div class="comment-avatar">
                                        <img class="avatar" alt="" src="images/placeholder/avatar_01.jpg">
                                    </div><!-- .comment-avatar -->

                                    <div class="comment-body">
                                        <header class="comment-meta clearfix">

                                            <cite class="comment-author">
                                                <span class="comment-date">MAR 8, 2015</span>
                                                <span><a class="url" rel="external nofollow" href="#">TuanClean</a></span>
                                            </cite>

                                        </header><!-- .comment-meta -->

                                        <div class="comment-content">
                                            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.</p>
                                        </div> <!-- .comment-content -->
                                    </div><!-- comment-body -->

                                </div><!-- .comment-wrapper -->

                            </li><!-- .comment -->

                            <li class="comment">
                                <div class="comment-wrapper">

                                    <div class="comment-avatar">
                                        <img class="avatar" alt="" src="images/placeholder/avatar_01.jpg">
                                    </div><!-- .comment-avatar -->

                                    <div class="comment-body">
                                        <header class="comment-meta clearfix">

                                            <cite class="comment-author">
                                                <span class="comment-date">MAR 8, 2015</span>
                                                <span><a class="url" rel="external nofollow" href="#">TuanClean</a></span>
                                            </cite>

                                        </header><!-- .comment-meta -->

                                        <div class="comment-content">
                                            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.</p>
                                        </div> <!-- .comment-content -->
                                    </div><!-- .comment-body -->

                                </div><!-- .comment-wrapper -->
                            </li><!-- .comment -->
                        </ol><!-- .comment-list -->
                        <div class="comment-respond" id="respond">
                            <h3 class="comment-reply-title widget-title" id="reply-title">LEAVE A COMMENT</h3>
                            <form novalidate="" class="comment-form" id="commentform" method="post" action="#">
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
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item">
            <div class="p-thumb">
                <a href="productdetails-fullwidth.jsp">
                    <img src="images/placeholder/product1.jpg" alt="">
                </a>
            </div><!-- .p-thumb -->

            <div class="p-info">
                <h3 class="p-title"><a href="productdetails-fullwidth.jsp">Phasellus Vel Hendrerit</a></h3>

                <div class="clearfix">
                    <div class="star-rating">
                        <span style="width:60%"></span>
                    </div>

                    <span class="price">
                        <span class="amount">$125.00</span>
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

        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item">
            <div class="p-thumb">
                <a href="productdetails-fullwidth.jsp">
                    <img src="images/placeholder/product2.jpg" alt="">
                </a>
            </div><!-- .p-thumb -->

            <div class="p-info">
                <h3 class="p-title"><a href="productdetails-fullwidth.jsp">Phasellus Vel Hendrerit</a></h3>

                <div class="clearfix">
                    <div class="star-rating">
                        <span style="width:60%"></span>
                    </div>

                    <span class="price">
                        <span class="amount">$125.00</span>
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

        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item">
            <div class="p-thumb">
                <a href="productdetails-fullwidth.jsp">
                    <img src="images/placeholder/product4.jpg" alt="">
                </a>
            </div><!-- .p-thumb -->

            <div class="p-info">
                <h3 class="p-title"><a href="productdetails-fullwidth.jsp">Phasellus Vel Hendrerit</a></h3>

                <div class="clearfix">
                    <div class="star-rating">
                        <span style="width:60%"></span>
                    </div>

                    <span class="price">
                        <span class="amount">$125.00</span>
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

        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item">
            <div class="p-thumb">
                <a href="productdetails-fullwidth.jsp">
                    <img src="images/placeholder/product3.jpg" alt="">
                </a>
            </div><!-- .p-thumb -->

            <div class="p-info">
                <h3 class="p-title"><a href="productdetails-fullwidth.jsp">Phasellus Vel Hendrerit</a></h3>

                <div class="clearfix">
                    <div class="star-rating">
                        <span style="width:60%"></span>
                    </div>

                    <span class="price">
                        <span class="amount">$125.00</span>
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
    </div>

    <div class="view-all">

        <a href="#" class="button radius">Show all</a>

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
    <script src="js/detailproduct.js" type="text/javascript"></script>
</body>
</html>

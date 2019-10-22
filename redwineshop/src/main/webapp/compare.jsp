<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Compare</title>

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">

    <link rel="stylesheet" type="text/css" href="css/zxf_page.css"/>
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

            <%--<div class="right-header">--%>
                <%--<ul>--%>
                    <%--<li>--%>
                        <%--<a class="top-account top-login" href="#" data-toggle="modal" data-target="#login_dialog">--%>
                            <%--<i class="pe-7s-users"></i>--%>
                        <%--</a>--%>
                    <%--</li>--%>

                    <%--<li>--%>
                        <%--<a class="top-search" href="#" data-toggle="modal" data-target="#search_dialog">--%>
                            <%--<i class="pe-7s-search"></i>--%>
                        <%--</a>--%>
                    <%--</li>--%>

                    <%--<li>--%>
                        <%--<a class="cart-control" href="#">--%>
                            <%--<i class="pe-7s-shopbag cart-icon"></i>--%>
                            <%--<span class="cart-number">2</span>--%>
                        <%--</a>--%>

                        <%--<div class="shop-item" id="shopping_cart_dropdown">--%>
                            <%--<div class="widget_shopping_cart_content">--%>

                                <%--<ul class="cart_list">--%>

                                    <%--<li class="clearfix">--%>
                                        <%--<a class="p-thumb" href="productdetails-fullwidth.jsp">--%>
                                            <%--<img src="images/placeholder/thumb-product-cart1.jpg" alt="">--%>
                                        <%--</a>--%>
                                        <%--<div class="p-info">--%>
                                            <%--<a class="p-title" href="productdetails-fullwidth.jsp">Tomatin 12 Year Old</a>--%>
                                            <%--<span class="price">--%>
                                                <%--<span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>--%>
                                            <%--</span>--%>
                                            <%--<a class="remove" href="#"><i class="pe-7s-close"></i></a>--%>
                                        <%--</div>--%>
                                    <%--</li>--%>

                                    <%--<li class="clearfix">--%>
                                        <%--<a class="p-thumb" href="productdetails-fullwidth.jsp">--%>
                                            <%--<img src="images/placeholder/thumb-product-cart2.jpg" alt="">--%>
                                        <%--</a>--%>
                                        <%--<div class="p-info">--%>
                                            <%--<a class="p-title" href="productdetails-fullwidth.jsp">Tomatin 12 Year Old</a>--%>
                                            <%--<span class="price">--%>
                                                <%--<span class="p-qty">1</span> x <ins><span class="amount">$35.00</span></ins>--%>
                                            <%--</span>--%>
                                            <%--<a class="remove" href="#"><i class="pe-7s-close"></i></a>--%>
                                        <%--</div>--%>
                                    <%--</li>--%>

                <div class="modal-footer">
                    <a href="register.jsp">Register</a>
                    <a href="forgotpassword.jsp">Forgot Password</a>
                </div>
            </div><!-- .popup-inner -->
            <div class="mask popup-close"></div>
        </div>

                                <%--<p class="total"><strong>Total:</strong> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">£</span>183.26</span></p>--%>

                                <%--<p class="buttons">--%>
                                    <%--<a href="shopping-cart-fullwidth.jsp" class="ro-btn-bd-2 btn-viewcart wc-forward">VIEW CART</a>--%>
                                    <%--<a href="check-out.jsp" class="ro-btn-bd-2 btn-checkout wc-forward">CHECK OUT</a>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div><!-- right-header -->--%>

        <div class="modal-footer">
            <a href="register.jsp">Register</a>
            <a href="forgotpassword.jsp">Forgot Password</a>
        </div>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div><!-- .search-popup -->


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
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                            <a href="#">
                            <span class="thumb">
                                <img src="${pageContext.request.contextPath}/${part.product.pimage}" alt="" style="height: 132px;">
                            </span>
                                <span class="prod-name">${part.product.pname}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-rating compare-item">

                    <th class="compare-head">
                        <span>Rating</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                            <div class="star-rating">
                                <span style="width:60%"></span>
                            </div>
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-price compare-item">

                    <th class="compare-head">
                        <span>UNIT PRICE</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                            <span class="amount"><span class="symbol">$</span>${part.product.price}</span>
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-des compare-item">

                    <th class="compare-head">
                        <span>Description</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-manufature compare-item">

                    <th class="compare-head">
                        <span>manufature</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                                ${part.product.brand}
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-availability compare-item">

                    <th class="compare-head">
                        <span>availability</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <c:if test="${part.product.availability == 'In Stock'}">
                            <td class="instock">
                                    ${part.product.availability}
                            </td>
                        </c:if>
                        <c:if test="${part.product.availability == 'Out Stock'}">
                            <td class="outstock">
                                    ${part.product.availability}
                            </td>
                        </c:if>
                    </c:forEach>
                </tr>

                <tr class="compare-size compare-item">

                    <th class="compare-head">
                        <span>Size</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td class="list-size">
                            <a href="#">${part.product.size}</a>
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-color compare-item">

                    <th class="compare-head">
                        <span>Color</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td class="list-color">
                            <a class="${part.product.color}" href="#"></a>
                        </td>
                    </c:forEach>
                </tr>

                <tr class="compare-quantity compare-item">

                    <th class="compare-head">
                        <span>Quantity</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                                ${part.number}
                        </td>
                    </c:forEach>
                </tr>

                <tr class="action-wrap compare-item">
                    <th class="compare-head">
                        <span>actions</span>
                    </th>
                    <c:forEach items="${partCollect}" var="part">
                        <td>
                            <div class="p-actions">
                                <a href="collect?method=delCollect&pid=${part.product.pid}" class="button btn-circle add-to-wishlist" style="color:red"><span class="pe-7s-like"></span></a>
                                <a href="#" class="button btn-circle add-to-cart-button"><span class="pe-7s-cart"></span></a>
                            </div><!-- .p-actions -->
                        </td>
                    </c:forEach>
                </tr>
                </tbody>
            </table>
        </div>
    </div><!-- inner-content -->
    <br />
    <div class="zxf_pagediv"></div>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/zxf_page.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(".zxf_pagediv").createPage({
            pageNum: ${sessionScope.count},
            current: ${page},
            backfun: function(e) {
                var page = e.current;
                console.log(page);
                var path="collect?method=findPartCollect&page="+page;
                window.location.href=path;
//                console.log(page);//回调
            }
        });
    </script>
</main><!-- .site-main -->

</div><!-- .container -->

    <%--分页--%>
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

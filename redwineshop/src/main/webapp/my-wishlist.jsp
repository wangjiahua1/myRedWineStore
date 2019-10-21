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
    <script src="js/jquery.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/ie9/html5shiv.min.js"></script>
    <script src="js/ie9/respond.min.js"></script>

    <![endif]-->
    <script type="text/javascript">
        $(function () {
            $("#delAll").click(function () {
                if(confirm("确定删除全部收藏吗？")){
                    <%--$("#delAll").attr("href","${pageContext.request.contextPath}/collect?method=delAllCollect");--%>
                    $("#delAll").attr("data-toggle","modal");
                    $("#delAll").attr("data-target","#del_success");

                    $.get(
                        "${pageContext.request.contextPath}/collect?method=delAllCollect",
                        function (data) {
                            $("#collects").empty();
                        }
                    )
                }
            });
        })
    </script>
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

    <!--删除成功-->
    <div id="del_success" class="modal fade login-popup">
        <div class="popup-inner">
            <div class="modal-header">
                <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
                <h3 class="modal-title">删除成功</h3>
            </div>

            <p class="login-submit">
                <input  id="wp-submit" class="button-primary" value="确定" type="submit" data-dismiss="modal" aria-hidden="true"/>
            </p>

        </div><!-- .popup-inner -->
        <div class="mask popup-close"></div>
    </div>
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
                            <th class="product-remove text-right">
                                <a
                                   id="delAll" title="#"><i class="pe-7s-close"></i></a>
                                </a>
                            </th>
                        </tr>
                        </thead>
                        <tbody id="collects">

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
                                        <input type="number" step="1" min="0" value="1" title="Qty" class="qty" size="4">
                                    </div>
                                </td>
                                <td class="price text-right">
                                    <span class="amount"><span class="symbol">$</span>${c.product.price}</span>
                                </td>
                                <td class="product-remove text-right">
                                    <a href="${pageContext.request.contextPath}/collect?method=deleCollect&pid=${c.product.pid}" class="remove" title="Remove this item"><i class="pe-7s-close"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>

                        <tr class="action-wrap">
                            <td colspan="6" class="actions clearfix">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div class="wc-proceed-to-checkout">

                                            <p class="return-to-shop"><a class="button radius" href="${pageContext.request.contextPath}/page?method=getCurrentPage&currentPage=1">Continue Shopping</a></p>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">

                                        <input class="button radius plum" name="update_cart" value="Update Cart" disabled="" type="submit">

                                    </div>
                                </div>
                            </td>
                        </tr>

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

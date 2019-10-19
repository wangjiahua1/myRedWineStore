<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>
    <title>Shop Grid Left Sidebar</title>

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="images/assets/favicon.png"/>

    <script src="js/ie9/html5shiv.min.js"></script>
    <script src="js/ie9/respond.min.js"></script>
    <script src="js/jquery-1.12.4.min.js"></script>
    <%--加载分页页面样式--%>
    <link href="css/zxf_page.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<jsp:include page="pageloader.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>


<div id="content" class="site-content left-sidebar-content shop-content">
<div class="space-dark"></div>
<div class="no-container">
    <div class="blog-breadcrumb shop-breadcrumb">
        <div class="container">

            <div class="intro-div">
                <h1 class="page-title">Left Sidebar</h1>
                <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a></li>

                        <li><span class="current">Shop Grid</span></li>

                    </ul>

                </div><!-- .breadcrumb -->
            </div>

        </div><!-- .container -->
    </div>
</div>

<div class="container">

    <div class="row">
    <main id="main" class="site-main col-md-9">
    <div class="sort clearfix">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">

                <form id="f1" action="" class="num-prod-form" method="get">
                    <div class="selectbox">
                        <select name="select-numb" id="select-numb">
                            <option value="9">9 item/pages</option>
                            <option value="12">12 item/pages</option>
                            <option value="15">15 item/pages</option>
                        </select>
                    </div>
                </form>
                <script type="text/javascript">
                    $("#select-numb").change(function () {
                        var options=$("#select-numb option:selected").val();
                        var path="product?method=getAllRedWine&sizePage="+options;
                        console.log(options);
                        window.location.href=path;

                        /*$.ajax({
                            type: 'get',
                            url : path,
                            //url: '/api/one/new/list?p=1',
                            dataType: 'json',
                            success: function (data) {

                            }
                            });*/

                    });
                </script>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <form action="#" class="order pull-left">
                    <div class="selectbox">
                        <select class="orderby" name="orderby">
                            <option value="asc">Name: A to Z</option>
                            <option value="desc">Name: Z to A</option>
                            <option value="popularity">Popularity Name</option>
                            <option value="default">Default sorting</option>
                        </select>
                    </div>
                </form>
            </div>

        </div>

    </div><!-- .sort -->


    <div class="products grid">
    <div class="row" id="myproduct">

    <c:forEach items="${allredwine}" var="redwine">
    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item">
        <div class="p-thumb">
            <a href="productdetails-fullwidth.jsp">
                <img src="${redwine.pimage}" alt="" style="height: 480px">
                <a href="#" class="onnew">${redwine.ishot}</a>
            </a>
        </div><!-- .p-thumb -->

        <div class="p-info">
            <h3 class="p-title"><a href="productdetails-fullwidth.jsp">${redwine.pname}</a></h3>

            <div class="clearfix">
                <div class="star-rating">
                    <span style="width:60%"></span>
                </div>

                    <span class="price">
                        <span class="amount">$ ${redwine.price}</span>
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
    </c:forEach>


    </div>

    </div><!-- .products -->

    <%--分页框--%>
    <div class="zxf_pagediv"></div>
        <script src="js/zxf_page.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(".zxf_pagediv").createPage({
                pageNum: ${maxPage},
                current: 1,
                backfun: function(e) {
                    //console.log(e.current);
                    //ajax获得参数
                    var currentPage=e.current;
                    if (currentPage>${maxPage}){
                        currentPage=${maxPage};
                    }
                    $.ajax({
                        type: 'get',
                        url : 'page?method=getCurrentPage',
                        //url: '/api/one/new/list?p=1',
                        data: {"currentPage":currentPage},
                        dataType: 'json',
                        success: function (data) {
                            $("#myproduct").empty();
                            $.each(data,function (i,v) {
                                var message="<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item\">\n" +
                                    "        <div class=\"p-thumb\">\n" +
                                    "            <a href=\"productdetails-fullwidth.jsp\">\n" +
                                    "                <img src=\""+v.pimage+"\" alt=\"\" style=\"height: 480px\">\n" +
                                    "                <a href=\"#\" class=\"onnew\">"+v.ishot+"</a>\n" +
                                    "            </a>\n" +
                                    "        </div><!-- .p-thumb -->\n" +
                                    "\n" +
                                    "        <div class=\"p-info\">\n" +
                                    "            <h3 class=\"p-title\"><a href=\"productdetails-fullwidth.jsp\">"+v.pname+"</a></h3>\n" +
                                    "\n" +
                                    "            <div class=\"clearfix\">\n" +
                                    "                <div class=\"star-rating\">\n" +
                                    "                    <span style=\"width:60%\"></span>\n" +
                                    "                </div>\n" +
                                    "\n" +
                                    "                    <span class=\"price\">\n" +
                                    "                        <span class=\"amount\">$ "+v.price+"</span>\n" +
                                    "                    </span>\n" +
                                    "            </div>\n" +
                                    "\n" +
                                    "            <div class=\"p-actions\">\n" +
                                    "                <a href=\"#\" class=\"button btn-circle quick-view\"><span class=\"pe-7s-expand1\"></span></a>\n" +
                                    "                <a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\n" +
                                    "                <a href=\"#\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\n" +
                                    "                <a href=\"#\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>\n" +
                                    "            </div><!-- .p-actions -->\n" +
                                    "        </div><!-- .p-info -->\n" +
                                    "    </div><!-- .product -->";
                                $("#myproduct").append(message);
                            })
                        },
                        error: function () {
                            //alert("");
                        }
                    });
                }
            });
        </script>

    </main><!-- .site-main -->

    <div id="sidebar" class="sidebar left-sidebar left-shop-sidebar col-md-3">

    <aside class="widget list-category">

        <h3 class="widget-title"><span>CATEGORIES</span></h3>

        <ul class="menu">

            <li><a href="#">WoMen</a></li>
            <li><a href="#">men</a></li>
            <li><a href="#">Accesories</a></li>
            <li><a href="#">blog</a></li>
            <li><a href="#">NEW</a></li>
            <li><a href="#">SALES</a></li>

        </ul>

    </aside>

    <aside class="widget">

        <h3 class="widget-title"><span>Shop by</span></h3>

        <div class="f-price">

            <div id="slider-range"></div>

            <span>Price: <strong id="amount"></strong></span>

            <button class="button radius" type="button">Filter</button>

        </div>

    </aside>

    <aside class="widget">

        <h3 class="widget-title"><span>Colors</span></h3>

        <ul class="list-color">

            <li><a href="#" class="red">Red <span class="count">(42)</span></a></li>

            <li><a href="#" class="black">Black <span class="count">(28)</span></a></li>

            <li><a href="#" class="blue">Blue <span class="count">(27)</span></a></li>

            <li><a href="#" class="green">Green <span class="count">(43)</span></a></li>

            <li><a href="#" class="yellow">Yellow <span class="count">(15)</span></a></li>

        </ul>

    </aside>

    <aside class="widget">

        <h3 class="widget-title"><span>Sizes</span></h3>

        <ul class="list-size clearfix">

            <li><a href="#">S</a></li>

            <li><a href="#">M</a></li>

            <li><a href="#">L</a></li>

            <li><a href="#">XL</a></li>

            <li><a href="#">XXL</a></li>

        </ul>

    </aside>

    <aside class="widget image_widget">
        <a href="#" target="_blank"><img src="images/placeholder/left-sidebar-banner.jpg" alt=""/></a>
    </aside>


    <aside class="widget featured-prod">

        <h3 class="widget-title"><span>Featured</span></h3>

        <ul>

            <li class="clearfix">

                <a class="product-thumb" href="productdetails-fullwidth.jsp">

                    <img src="images/placeholder/feature-prod-img1.jpg" alt="">

                </a>

                <div class="product-info">

                    <h3 class="title"><a href="productdetails-fullwidth.jsp">Rose Wines</a></h3>

                    <div class="star-rating">

                        <span style="width:60%"></span>

                    </div>

                    <span class="price">

                        <span class="amount">$125.00</span>

                    </span>

                </div><!-- .product-info -->

            </li>

            <li class="clearfix">

                <a class="product-thumb" href="productdetails-fullwidth.jsp">

                    <img src="images/placeholder/feature-prod-img2.jpg" alt="">

                </a>

                <div class="product-info">

                    <h3 class="title"><a href="productdetails-fullwidth.jsp">Rose Wines</a></h3>

                    <div class="star-rating">

                        <span style="width:60%"></span>

                    </div>

                    <span class="price">

                        <span class="amount">$263.00</span>

                    </span>

                </div><!-- .product-info -->

            </li>

            <li class="clearfix">

                <a class="product-thumb" href="productdetails-fullwidth.jsp">

                    <img src="images/placeholder/feature-prod-img3.jpg" alt="">

                </a>

                <div class="product-info">

                    <h3 class="title"><a href="productdetails-fullwidth.jsp">Rose Wines</a></h3>

                    <div class="star-rating">

                        <span style="width:60%"></span>

                    </div>

                    <span class="price">

                        <span class="amount">$125.00</span>

                    </span>

                </div><!-- .product-info -->

            </li>

            <li class="clearfix">

                <a class="product-thumb" href="productdetails-fullwidth.jsp">

                    <img src="images/placeholder/feature-prod-img4.jpg" alt="">

                </a>

                <div class="product-info">

                    <h3 class="title"><a href="productdetails-fullwidth.jsp">Rose Wines</a></h3>

                    <div class="star-rating">

                        <span style="width:60%"></span>

                    </div>

                    <span class="price">

                        <span class="amount">$125.00</span>

                    </span>

                </div><!-- .product-info -->

            </li>

            <li class="clearfix">

                <a class="product-thumb" href="productdetails-fullwidth.jsp">

                    <img src="images/placeholder/feature-prod-img5.jpg" alt="">

                </a>

                <div class="product-info">

                    <h3 class="title"><a href="productdetails-fullwidth.jsp">Rose Wines</a></h3>

                    <div class="star-rating">

                        <span style="width:60%"></span>

                    </div>

                    <span class="price">

                        <span class="amount">$125.00</span>

                    </span>

                </div><!-- .product-info -->

            </li>

        </ul>

    </aside>
    </div><!-- .left-sidebar -->
    </div>

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
<!-- #wrapper -->


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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<main id="main" class="site-main col-md-9">
    <div class="sort clearfix">
        <div class="row">
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
                <%--&nbsp;--%>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item">
                    <div class="p-thumb">
                        <a href="product?method=getRedWineById&id=${redwine.pid}">
                            <img src="${redwine.pimage}" alt="" style="height:300px;">
                            <c:if test="${redwine.ishot == 'new'}">
                                <a href="#" class="onnew">${redwine.ishot}</a>
                            </c:if>
                            <c:if test="${redwine.ishot == 'hot'}">
                                <a href="#" class="onsale">${redwine.ishot}</a>
                            </c:if>
                            <c:if test="${redwine.ishot == null}">
                                <a href="#" class="">${redwine.ishot}</a>
                            </c:if>
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
                <%--&nbsp;--%>
            </c:forEach>


        </div>

    </div><!-- .products -->
    <%--分页框--%>
    <div class="zxf_pagediv"></div>
    <script src="js/zxf_page.js"></script>
    <script type="text/javascript">
        $(".zxf_pagediv").createPage({
            pageNum:12,
            current: ${currentPage},
            backfun: function(e) {
                var currentPage = e.current;
                if (currentPage > 12) {
                    currentPage = 12;
                }
                var path="page?method=getCurrentPage&currentPage="+currentPage;
                window.location.href=path;
            }
        });
    </script>
</main><!-- .site-main -->

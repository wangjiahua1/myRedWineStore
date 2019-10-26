<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <a href="javascript:void (0)" data-toggle="modal" onclick="addCollect('${redwine.pid}')"
                               id="addCollect" class="button btn-circle add-to-wishlist" data-target="
                                    <c:if test="${user!=null}">#add_success</c:if>
                                    <c:if test="${user==null}">#login_dialog</c:if>">
                                <span class="pe-7s-like" ></span>
                            </a>
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
            pageNum:${maxPage},
            current: ${page.pageNumber},
            backfun: function(e) {
                var currentPage = e.current;
                var path="${page.path}"+currentPage;
                window.location.href=path;
            }
        });
    </script>
</main><!-- .site-main -->

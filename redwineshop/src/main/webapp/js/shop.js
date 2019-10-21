//左下热门商品加载
$(function () {
    $.getJSON(
        "product?method=gethotRedwine",
        function (data) {
            var myhot=$("#newul");
            $.each(data,function (i,v) {
                myhot.append("<li class=\"clearfix\">\n" +
                    "                <a class=\"product-thumb\" href=\"productdetails-fullwidth.jsp\">\n" +
                    "                    <img src=\""+v.pimage+"\" style='height: 50px' >\n" +
                    "                </a>\n" +
                    "                <div class=\"product-info\">\n" +
                    "                    <h3 class=\"title\"><a href=\"productdetails-fullwidth.jsp\">"+v.pname+"</a></h3>\n" +
                    "                    <div class=\"star-rating\">\n" +
                    "                        <span style=\"width:60%\"></span>\n" +
                    "                    </div>\n" +
                    "                    <span class=\"price\">\n" +
                    "                        <span class=\"amount\">$"+v.price+"</span>\n" +
                    "                    </span>\n" +
                    "                </div><!-- .product-info -->\n" +
                    "            </li>");
            })
        }
    )

    //过滤的点击事件
        $("#getPrice").click(function () {
            var price = $("#amount").text();
            // console.log(price);
            // var path = "product?method=getChoosePrice&currentpage=1&price="+price;
            // window.location.href = path;
            $(".zxf_pagediv").empty();//分页重置
                $(".zxf_pagediv").createPage({
                    pageNum:12,
                    current: 1,
                    backfun: function(e) {
                        var currentPage = e.current;
                        console.log(currentPage);
                        $.getJSON(
                            "page/method=getChoosePrice",
                            "{price:"+price+"}",
                            function (data) {
                                $("#myproduct").empty();
                                $.each(data,function (i,v) {
                                    console.log(v);
                                    var newPage="<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item\">\n" +
                                        "        <div class=\"p-thumb\">\n" +
                                        "            <a href=\"productdetails-fullwidth.html\">\n" +
                                        "                <img src=\""+v.pimage+"\" alt=\"\" height='330px'>\n" +
                                        "            </a>\n" +
                                        "        </div><!-- .p-thumb -->\n" +
                                        "\n" +
                                        "        <div class=\"p-info\">\n" +
                                        "            <h3 class=\"p-title\"><a href=\"productdetails-fullwidth.html\">"+v.pname+"</a></h3>\n" +
                                        "\n" +
                                        "            <div class=\"clearfix\">\n" +
                                        "                <div class=\"star-rating\">\n" +
                                        "                    <span style=\"width:60%\"></span>\n" +
                                        "                </div>\n" +
                                        "\n" +
                                        "                    <span class=\"price\">\n" +
                                        "                        <span class=\"amount\">$"+v.price+"</span>\n" +
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
                                        "    </div><!-- .product -->"
                                    $("#myproduct").append(newPage);
                                })
                            }
                        );
                    }
                });
            }
        );
});

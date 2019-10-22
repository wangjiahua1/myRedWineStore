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

});

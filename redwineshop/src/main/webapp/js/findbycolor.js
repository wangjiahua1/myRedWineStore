$(function () {
    $("#mycolor a").click(function () {
        var color = $(this).html().split('<span')[0];
        var num=$("#mycolor #"+color+"").html();
        num = num.replace("(","").replace(")","");
        num = Math.floor(num/9);
        console.log(num)
        if (num ==0){
            num = 1;
        }
        if (num==0&&num%9!=0){
            num = num+1;
        }
        console.log(num);
        $.getJSON(
            "product?method=findproductbycolor&color="+color,
            function (data) {
                console.log(data);
                $("#myproduct").empty();
                $(".zxf_pagediv").empty();
                $.each(data, function (i,v) {
                    var lili="<div class=\"col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item\">\n" +
                        " <div class=\"p-thumb\">\n" +
                        "            <a href=\"product?method=findbyPidproduct&pid="+v.pid+"\">\n" +
                        "                <img src=\"" + v.pimage + "\" class=\"myimg\" style=\"height: 300px\">\n" +
                        "                <a href=\"#\" class=\"onnew\">" + v.ishot + "</a>\n" +
                        "            </a>\n" +
                        "        </div><!-- .p-thumb -->\n" +
                        "\n" +
                        "        <div class=\"p-info\">\n" +
                        "            <h3 class=\"p-title\"><a href=\"product?method=findbyPidproduct&pid="+v.pid+"\">" + v.pname + "</a></h3>\n" +
                        "\n" +
                        " <div class=\"clearfix\">\n" +
                        "<div class=\"star-rating\">\n" +
                        "<span style=\"width:60%\"></span>\n" +
                        " </div>\n" +
                        "\n" +
                        "                    <span class=\"price\">\n" +
                        " <span class=\"amount\">$ " + v.price + "</span>\n" +
                        "                    </span>\n" +
                        "            </div>\n" +
                        "\n" +
                        "            <div class=\"p-actions\">\n" +
                        "                <a href=\"#\" class=\"button btn-circle quick-view\"><span class=\"pe-7s-expand1\"></span></a>\n" +
                        "                <a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\n" +
                        "                <a href=\"#\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\n" +
                        "                <a href=\"${pageContext.request.contextPath}/product?method=addcart\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>\n" +
                        "            </div><!-- .p-actions -->\n" +
                        "        </div><!-- .p-info -->\n" +
                        "    </div><!-- .product -->";
                    $("#myproduct").append(lili);
                });
            }

        )
    })
})
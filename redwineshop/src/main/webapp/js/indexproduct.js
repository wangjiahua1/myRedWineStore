$(function () {
    $.getJSON(
        "product?method=findproductbyIsnew",
        function (data) {
            var ul = $(".owl-item.active .item #list1");
            var ul2=$(".owl-carousel .item #list2");
            $.each(data, function (i,v) {
                var lili="";
                lili +="<li class='clearfix product-item'>";
                lili +="<div class=\"row\">\n" +
                    " <div class=\"col-md-4 col-xs-4 col-sm-12\">\n" +
                    "  <a class=\"product-thumb\" href='product?method=findbyPidproduct&pid="+v.pid+"'>\n" +
                    "<img src='"+v.pimage+"' alt=\"\" style='width:30px'>\n" +
                    " </a>\n" +
                    " </div>\n" +
                    " <div class=\"col-md-8 col-xs-8 col-sm-12\">\n" +
                    " <div class=\"product-info\">\n" +
                    "\n" +
                    "    <h3 class=\"title\"><a href='product?method=findbyPidproduct&pid="+v.pid+"'>"+v.pname+"</a></h3>\n" +
                    "\n" +
                    "   <div class=\"star-rating\">\n" +
                    "\n" +
                    "     <span style=\"width:60%\"></span>\n" +
                    "\n" +
                    "       </div>\n" +
                    "\n" +
                    "        <span class=\"price\">\n" +
                    "\n" +
                    "     <span class=\"amount\"><span>$<span></span>"+v.price+"</span>\n" +
                    "\n" +
                    "   </span>\n" +
                    "    <div class=\"p-actions\">\n" +
                    "  <a href=\"#\" class=\"button btn-circle quick-view\"><span class='pe-7s-expand1'></span></a>\n" +
                    "<a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\n" +
                    "  <a href=\"#\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\n" +
                    "  <a href=\"#\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>\n" +
                    " </div><!-- .p-actions -->\n" +
                    " </div><!-- .product-info -->\n" +
                    " </div>\n" +
                    " </div>\n" +
                    "  </li>";
                ul.append(lili);
                ul2.append(lili);

            });
        }
    )
    $.getJSON(
        "product?method=findproductbyIshot",
        function (data) {
            var ul = $(".owl-item.active .item #list3");
            var ul2=$(".owl-carousel .item #list4");

            $.each(data, function (i,v) {
                var lili="";
                lili +="<li class='clearfix product-item'>";
                lili +="<div class=\"row\">\n" +
                    " <div class=\"col-md-4 col-xs-4 col-sm-12\">\n" +
                    "  <a class=\"product-thumb\" href='product?method=findbyPidproduct&pid="+v.pid+"'>\n" +
                    "<img src='"+v.pimage+"' alt=\"\" style='width: 30px'>\n" +
                    " </a>\n" +
                    " </div>\n" +
                    " <div class=\"col-md-8 col-xs-8 col-sm-12\">\n" +
                    " <div class=\"product-info\">\n" +
                    "\n" +
                    "    <h3 class=\"title\"><a href='product?method=findbyPidproduct&pid="+v.pid+"'>"+v.pname+"</a></h3>\n" +
                    "\n" +
                    "   <div class=\"star-rating\">\n" +
                    "\n" +
                    "     <span style=\"width:60%\"></span>\n" +
                    "\n" +
                    "       </div>\n" +
                    "\n" +
                    "        <span class=\"price\">\n" +
                    "\n" +
                    "     <span class=\"amount\"><span>$<span></span>"+v.price+"</span>\n" +
                    "\n" +
                    "   </span>\n" +
                    "  <div class='p-actions'>\n" +
                    " <a href=\"#\" class='button btn-circle quick-view'><span class='pe-7s-expand1'></span></a>\n" +
                    "<a href=\"#\" class='button btn-circle view-compare'>" +
                    "<span class='pe-7s-refresh-2'></span></a>\n" +
                    "  <a href=\"#\" class='button btn-circle add-to-wishlist'><span class='pe-7s-like'></span></a>\n" +
                    "  <a href=\"#\" class='button btn-circle add-to-cart-button'><span class='pe-7s-cart'></span></a>\n" +
                    " </div><!-- .p-actions -->\n" +
                    " </div><!-- .product-info -->\n" +
                    " </div>\n" +
                    " </div>\n" +
                    "  </li>";
                ul.append(lili);
                ul2.append(lili);
            });
        }
    )
    $.getJSON(
        "product?method=findproductbyIsbhot",
        function (data) {
            var ul = $(".owl-item.active .item #list5");
            var ul2=$(".owl-carousel .item #list6");

            $.each(data, function (i,v) {
                var lili="";
                lili +="<li class='clearfix product-item'>";
                lili +="<div class=\"row\">\n" +
                    " <div class=\"col-md-4 col-xs-4 col-sm-12\">\n" +
                    "  <a class=\"product-thumb\" href='product?method=findbyPidproduct&pid="+v.pid+"'>\n" +
                    "<img src='"+v.pimage+"' alt=\"\" style='width: 30px'>\n" +
                    " </a>\n" +
                    " </div>\n" +
                    " <div class=\"col-md-8 col-xs-8 col-sm-12\">\n" +
                    " <div class=\"product-info\">\n" +
                    "\n" +
                    "    <h3 class=\"title\"><a href='product?method=findbyPidproduct&pid="+v.pid+"'>"+v.pname+"</a></h3>\n" +
                    "\n" +
                    "<div class=\"clearfix\">"+
                    "   <div class=\"star-rating\">\n" +
                    "\n" +
                    "     <span style=\"width:60%\"></span>\n" +
                    "\n" +
                    "       </div>\n" +
                    "\n" +
                    "        <span class=\"price\">\n" +
                    "\n" +
                    "     <span class=\"amount\"><span>$<span></span>"+v.price+"</span>\n" +
                    "\n" +
                    " </span>\n" +
                    "  </div>\n" +
                    "\n" +
                    " <div class=\"p-actions\">\n" +
                    " <a href=\"#\" class=\"button btn-circle quick-view\"><span class=\"pe-7s-expand1\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>"
                    " </div>\n" +
                    " </div>\n" +
                    " </div>\n" +
                    "  </li>";
                ul.append(lili);
                ul2.append(lili);

            });
        }
    )
    $.getJSON(
        "product?method=findcproduct",
        function (data) {

            var dvi=$(".list-products.row");
            $.each(data, function (i,v) {
                var di="";
                di +="<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-3 product-item\">\n" +
                    " <div class=\"p-thumb\">\n" +
                    "<a href=\"product?method=findbyPidproduct&pid="+v.pid+"\">\n" +
                    " <img src=\""+v.pimage+"\" style='height: 360px' alt=\"\">\n" +
                    " </a>\n" +
                    " </div><!-- .p-thumb -->\n" +
                    "\n" +
                    " <div class=\"p-info\">\n" +
                    " <h3 class=\"p-title\"><a href=\"product?method=findbyPidproduct&pid="+v.pid+"\">"+v.pname+"</a></h3>\n" +
                    "\n" +
                    "<div class=\"clearfix\">\n" +
                    "<div class=\"star-rating\">\n" +
                    " <span style=\"width:60%\"></span>\n" +
                    " </div>\n" +
                    "\n" +
                    " <span class=\"price\">\n" +
                    " <span class=\"amount\">$"+v.price+"</span>\n" +
                    "</span>\n" +
                    " </div>\n" +
                    "\n" +
                    "   <div class=\"p-actions\">\n" +
                    "   <a href=\"#\" class=\"button btn-circle quick-view\"><span class=\"pe-7s-expand1\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\n" +
                    " <a href=\"#\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>\n" +
                    " </div>\n" +
                    " </div>\n" +
                    " </div>"
                dvi.append(di);
            })
        }
    )

});
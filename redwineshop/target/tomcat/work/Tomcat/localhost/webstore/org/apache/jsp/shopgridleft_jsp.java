/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-10-21 01:58:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shopgridleft_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/png\" href=\"images/assets/favicon.png\"/>\r\n");
      out.write("    <title>Shop Grid Left Sidebar</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Style CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("    <!-- Favicon -->\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/png\" href=\"images/assets/favicon.png\"/>\r\n");
      out.write("    <script src=\"js/jquery-1.12.4.min.js\"></script>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <link href=\"css/zxf_page.css\" type=\"text/css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <script src=\"js/zxf_page.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pageloader.jsp", out, false);
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"content\" class=\"site-content left-sidebar-content shop-content\">\r\n");
      out.write("    <div class=\"space-dark\"></div>\r\n");
      out.write("    <div class=\"no-container\">\r\n");
      out.write("        <div class=\"blog-breadcrumb shop-breadcrumb\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"intro-div\">\r\n");
      out.write("                    <h1 class=\"page-title\">Left Sidebar</h1>\r\n");
      out.write("                    <div class=\"breadcrumb\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"#\">Home</a></li>\r\n");
      out.write("\r\n");
      out.write("                            <li><span class=\"current\">Shop Grid</span></li>\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("\r\n");
      out.write("                    </div><!-- .breadcrumb -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div><!-- .container -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "main.jsp", out, false);
      out.write("\r\n");
      out.write("    <div id=\"sidebar\" class=\"sidebar left-sidebar left-shop-sidebar col-md-3\">\r\n");
      out.write("    <aside class=\"widget\">\r\n");
      out.write("        <h3 class=\"widget-title\"><span>Shop by</span></h3>\r\n");
      out.write("        <div class=\"f-price\">\r\n");
      out.write("            <div id=\"slider-range\"></div>\r\n");
      out.write("            <span>Price: <strong id=\"amount\"></strong></span>\r\n");
      out.write("            <button class=\"button radius\" type=\"button\" id=\"getPrice\">Filter</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </aside>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(\"#getPrice\").click(function () {\r\n");
      out.write("                var price=$(\"#amount\").text();\r\n");
      out.write("                console.log(price);\r\n");
      out.write("                $.ajax({\r\n");
      out.write("                    type: 'get',\r\n");
      out.write("                    url: 'product?method=getChoosePrice',\r\n");
      out.write("                    //url: '/api/one/new/list?p=1',\r\n");
      out.write("                    data: {\"price\": price},\r\n");
      out.write("                    dataType: 'json',\r\n");
      out.write("                    success: function (data) {\r\n");
      out.write("                        $(\"#myproduct\").empty();\r\n");
      out.write("                        $.each(data, function (i, v) {\r\n");
      out.write("                            var message = \"<div class=\\\"col-xs-12 col-sm-6 col-md-6 col-lg-4 product-item\\\">\\n\" +\r\n");
      out.write("                                \"        <div class=\\\"p-thumb\\\">\\n\" +\r\n");
      out.write("                                \"            <a href=\\\"productdetails-fullwidth.jsp\\\">\\n\" +\r\n");
      out.write("                                \"                <img src=\\\"\" + v.pimage + \"\\\" class=\\\"myimg\\\" style=\\\"height: 480px\\\">\\n\" +\r\n");
      out.write("                                \"                <a href=\\\"#\\\" class=\\\"onnew\\\">\" + v.ishot + \"</a>\\n\" +\r\n");
      out.write("                                \"            </a>\\n\" +\r\n");
      out.write("                                \"        </div><!-- .p-thumb -->\\n\" +\r\n");
      out.write("                                \"\\n\" +\r\n");
      out.write("                                \"        <div class=\\\"p-info\\\">\\n\" +\r\n");
      out.write("                                \"            <h3 class=\\\"p-title\\\"><a href=\\\"productdetails-fullwidth.jsp\\\">\" + v.pname + \"</a></h3>\\n\" +\r\n");
      out.write("                                \"\\n\" +\r\n");
      out.write("                                \"            <div class=\\\"clearfix\\\">\\n\" +\r\n");
      out.write("                                \"                <div class=\\\"star-rating\\\">\\n\" +\r\n");
      out.write("                                \"                    <span style=\\\"width:60%\\\"></span>\\n\" +\r\n");
      out.write("                                \"                </div>\\n\" +\r\n");
      out.write("                                \"\\n\" +\r\n");
      out.write("                                \"                    <span class=\\\"price\\\">\\n\" +\r\n");
      out.write("                                \"                        <span class=\\\"amount\\\">$ \" + v.price + \"</span>\\n\" +\r\n");
      out.write("                                \"                    </span>\\n\" +\r\n");
      out.write("                                \"            </div>\\n\" +\r\n");
      out.write("                                \"\\n\" +\r\n");
      out.write("                                \"            <div class=\\\"p-actions\\\">\\n\" +\r\n");
      out.write("                                \"                <a href=\\\"#\\\" class=\\\"button btn-circle quick-view\\\"><span class=\\\"pe-7s-expand1\\\"></span></a>\\n\" +\r\n");
      out.write("                                \"                <a href=\\\"#\\\" class=\\\"button btn-circle view-compare\\\"><span class=\\\"pe-7s-refresh-2\\\"></span></a>\\n\" +\r\n");
      out.write("                                \"                <a href=\\\"#\\\" class=\\\"button btn-circle add-to-wishlist\\\"><span class=\\\"pe-7s-like\\\"></span></a>\\n\" +\r\n");
      out.write("                                \"                <a href=\\\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/product?method=addcart\\\" class=\\\"button btn-circle add-to-cart-button\\\"><span class=\\\"pe-7s-cart\\\"></span></a>\\n\" +\r\n");
      out.write("                                \"            </div><!-- .p-actions -->\\n\" +\r\n");
      out.write("                                \"        </div><!-- .p-info -->\\n\" +\r\n");
      out.write("                                \"    </div><!-- .product -->\";\r\n");
      out.write("                            $(\"#myproduct\").append(message);\r\n");
      out.write("                        });\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <aside class=\"widget\">\r\n");
      out.write("                    <h3 class=\"widget-title\"><span>Colors</span></h3>\r\n");
      out.write("                    <ul class=\"list-color\" id=\"mycolor\">\r\n");
      out.write("                        <li><a href=\"#\" class=\"red\" id=\"a1\">red</a><span class=\"count\" id=\"red\">(42)</span></li>\r\n");
      out.write("                        <li><a href=\"#\" class=\"black\" id=\"a2\">black</a> <span class=\"count\" id=\"black\">(28)</span></li>\r\n");
      out.write("                        <li><a href=\"#\" class=\"blue\" id=\"a3\">blue</a><span class=\"count\" id=\"blue\">(27)</span></li>\r\n");
      out.write("                        <li><a href=\"#\" class=\"yellow\" id=\"a4\">yellow</a><span class=\"count\" id=\"yellow\">(15)</span></li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </aside>\r\n");
      out.write("                <aside class=\"widget\">\r\n");
      out.write("\r\n");
      out.write("                    <h3 class=\"widget-title\"><span>Sizes</span></h3>\r\n");
      out.write("\r\n");
      out.write("                    <ul class=\"list-size clearfix\">\r\n");
      out.write("\r\n");
      out.write("                        <li><a href=\"#\">S</a></li>\r\n");
      out.write("\r\n");
      out.write("                        <li><a href=\"#\">M</a></li>\r\n");
      out.write("\r\n");
      out.write("                        <li><a href=\"#\">L</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("\r\n");
      out.write("                </aside>\r\n");
      out.write("\r\n");
      out.write("                <aside class=\"widget image_widget\">\r\n");
      out.write("                    <a href=\"#\" target=\"_blank\"><img src=\"images/placeholder/left-sidebar-banner.jpg\" alt=\"\"/></a>\r\n");
      out.write("                </aside>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <aside class=\"widget featured-prod\">\r\n");
      out.write("\r\n");
      out.write("                    <h3 class=\"widget-title\"><span>new shop</span></h3>\r\n");
      out.write("\r\n");
      out.write("                    <ul id=\"newul\"></ul>\r\n");
      out.write("                </aside>\r\n");
      out.write("            </div><!-- .left-sidebar -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div><!-- .container -->\r\n");
      out.write("\r\n");
      out.write("</div><!-- .site-content -->\r\n");
      out.write("<div id=\"bottom\" class=\"site-bottom\">\r\n");
      out.write("    <div class=\"no-container\">\r\n");
      out.write("        <div class=\"social\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-pinterest\"></i></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"back-to-top\">\r\n");
      out.write("            <a href=\"#\" class=\"btn-circle\"><i class=\"fa fa-angle-up\"></i></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"icon-c\">\r\n");
      out.write("            <ul class=\"list_iconc\">\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-cc-visa\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-cc-mastercard\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-cc-discover\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-cc-amex\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-cc-paypal\"></i></a></li>\r\n");
      out.write("                <li><a href=\"#\"><i class=\"fa fa-credit-card\"></i></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div><!-- .container -->\r\n");
      out.write("</div><!-- .site-bottom -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("<!-- #wrapper -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Boostrap -->\r\n");
      out.write("<script src=\"js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/vendor/bootstrap-select.min.js\"></script>\r\n");
      out.write("<script src=\"js/ie9/html5shiv.min.js\"></script>\r\n");
      out.write("<script src=\"js/ie9/respond.min.js\"></script>\r\n");
      out.write("<!-- jQuery Sticky -->\r\n");
      out.write("<script src=\"js/vendor/jquery.sticky.js\"></script>\r\n");
      out.write("<!-- OWL CAROUSEL Slider -->\r\n");
      out.write("<script src=\"js/vendor/owl.carousel.min.js\"></script>\r\n");
      out.write("<!-- Flexslider -->\r\n");
      out.write("<script src=\"js/vendor/flexslider.min.js\"></script>\r\n");
      out.write("<!-- PrettyPhoto -->\r\n");
      out.write("<script src=\"js/vendor/jquery.prettyPhoto.js\"></script>\r\n");
      out.write("<!-- Jquery Countdown -->\r\n");
      out.write("<script src=\"js/vendor/jquery.countdown.js\"></script>\r\n");
      out.write("<!-- Jquery Parallax -->\r\n");
      out.write("<script src=\"js/vendor/parallax.js\"></script>\r\n");
      out.write("<!-- jQuery UI -->\r\n");
      out.write("<script src=\"js/vendor/jquery-ui.min.js\"></script>\r\n");
      out.write("<!-- Jquery Masonry -->\r\n");
      out.write("<script src=\"js/vendor/masonry.pkgd.min.js\"></script>\r\n");
      out.write("<!-- Main -->\r\n");
      out.write("<script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/shop.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-10-21 00:15:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productdetails_002dfullwidth_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>Details Full Width</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Style CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("    <!-- Responsive CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\r\n");
      out.write("    <!-- Favicon -->\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/png\" href=\"images/assets/favicon.png\"/>\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"js/ie9/html5shiv.min.js\"></script>\r\n");
      out.write("    <script src=\"js/ie9/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"single-post\">\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "pageloader.jsp", out, false);
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"content\" class=\"site-content content-fullwidth\">\r\n");
      out.write("    <div class=\"space-dark\"></div>\r\n");
      out.write("    <div class=\"no-container\">\r\n");
      out.write("        <div class=\"blog-breadcrumb\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"intro-div\">\r\n");
      out.write("                    <h1 class=\"page-title\">Full Width</h1>\r\n");
      out.write("                    <div class=\"breadcrumb\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                            <li><a href=\"page?method=getCurrentPage&currentPage=1\">Shop</a></li>\r\n");
      out.write("                            <li><span class=\"current\">Details</span></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div><!-- .breadcrumb -->\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- .container -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <main id=\"main\" class=\"site-main\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"product-detail\">\r\n");
      out.write("                <div class=\"images row\">\r\n");
      out.write("                    <div class=\"p-preview owl-carousel\">\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <a data-gal=\"prettyPhoto[p-gal1]\" class=\"zoom\" href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" style=\"width:210px\"  alt=\"\" />\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <a data-gal=\"prettyPhoto[p-gal1]\" class=\"zoom\" href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" style=\"width:210px\"  alt=\"\" />\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"item\">\r\n");
      out.write("                            <a data-gal=\"prettyPhoto[p-gal1]\" class=\"zoom\" href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" style=\"width:210px\"   alt=\"\" />\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div><!-- #p-preview -->\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"p-thumb\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"active\"><a href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" width: 157.5px alt=\"\" />\r\n");
      out.write("                            </a></li>\r\n");
      out.write("                            <li><a href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" width: 157.5px  alt=\"\" />\r\n");
      out.write("                            </a></li>\r\n");
      out.write("                            <li><a href=\"#\">\r\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pimage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" width: 157.5px  alt=\"\" />\r\n");
      out.write("                            </a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div><!-- #p-thumb -->\r\n");
      out.write("                </div><!-- .images -->\r\n");
      out.write("                <div class=\"p-info\">\r\n");
      out.write("                    <h3 class=\"p-title\"><a href=\"details-rightsidebar.html\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</a></h3>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"clearfix\">\r\n");
      out.write("                        <div class=\"star-rating\">\r\n");
      out.write("                            <span style=\"width:60%\"></span>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <span class=\"price\">\r\n");
      out.write("                    <span class=\"amount\"><span>$</span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span>\r\n");
      out.write("                </span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"p-desc\">\r\n");
      out.write("                        <p>\r\n");
      out.write("                            A generous helping of cocoa, vanilla, over-ripe plum, and raspberry. Long on the mid palate with subtle tannins makes this very easy to drink. A deliciously rich merlot only Washington fruit can produce. 88 points by wine enthusiasists.\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </div><!-- p-desc -->\r\n");
      out.write("                    <form class=\"form-info\" action=\"#\" method=\"post\">\r\n");
      out.write("                        <div class=\"p-select\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"sl-color col-lg-6 col-md-6 col-sm-6\">\r\n");
      out.write("                                    <span>Select Color: </span>\r\n");
      out.write("                                    <ul class=\"list-color\">\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\" class=\"red\">Red<span class=\"count\">(42)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\" class=\"black\">Black <span class=\"count\">(28)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\" class=\"blue\">Blue <span class=\"count\">(27)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\" class=\"green\">Green <span class=\"count\">(43)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\" class=\"yellow\">Yellow <span class=\"count\">(15)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"sl-sizes col-lg-6 col-md-6 col-sm-6\">\r\n");
      out.write("                                    <span>Select Size: </span>\r\n");
      out.write("                                    <ul class=\"list-size clearfix\" id=\"list\">\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\">S</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\">M</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\">L</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\">XL</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li><a href=\"javascript:void(0)\">XXL</a></li>\r\n");
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div><!-- p-select -->\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"p-tag-share clearfix\">\r\n");
      out.write("                            <div class=\"p-tags\">\r\n");
      out.write("                                <a href=\"#\">blackberry</a> ,\r\n");
      out.write("                                <a href=\"#\">cassis</a> ,\r\n");
      out.write("                                <a href=\"#\">plum</a> ,\r\n");
      out.write("                                <a href=\"#\">vanilla</a> ,\r\n");
      out.write("                                <a href=\"#\">cocoa</a>\r\n");
      out.write("                            </div><!-- p-tags -->\r\n");
      out.write("                        </div><!-- p-tag-share -->\r\n");
      out.write("                        <div class=\"p-actions\">\r\n");
      out.write("                            <div class=\"attr-item\">\r\n");
      out.write("                                <label>Qty:</label>\r\n");
      out.write("                                <div class=\"quantity\">\r\n");
      out.write("                                    <input type=\"number\" step=\"1\" min=\"0\" value=\"1\" title=\"Qty\" class=\"qty\" size=\"4\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div><!-- .attr-item -->\r\n");
      out.write("                            <div class=\"p-actions-btn\">\r\n");
      out.write("                                <a href=\"#\" class=\"button btn-circle quick-view\"><span class=\"pe-7s-expand1\"></span></a>\r\n");
      out.write("                                <a href=\"#\" class=\"button btn-circle view-compare\"><span class=\"pe-7s-refresh-2\"></span></a>\r\n");
      out.write("                                <a href=\"my-wishlist.jsp\" class=\"button btn-circle add-to-wishlist\"><span class=\"pe-7s-like\"></span></a>\r\n");
      out.write("                                <a href=\"product?method=addcart&pid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" class=\"button btn-circle add-to-cart-button\"><span class=\"pe-7s-cart\"></span></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div><!-- .p-actions -->\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div><!-- .p-info -->\r\n");
      out.write("                <div class=\"tabs-infor\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"tab-item\">\r\n");
      out.write("                            <a href=\"#\" class=\"tab-title\">Product DESCRIPTION</a>\r\n");
      out.write("                            <div class=\"tab-content\">\r\n");
      out.write("                                <span class=\"color1\">Adult Signature Required :</span> You must be at least 21 years of age to purchase wine. Adult signature is required on delivery.\r\n");
      out.write("                                <br/>\r\n");
      out.write("                                <span class=\"color1\">Weather Related Delays :</span> The seller may delay shipment if the temperature at the shipping or delivery address is not between 45°F and 80°F.\r\n");
      out.write("                                <br/>\r\n");
      out.write("                                <span class=\"color1\">Shipping Policies :</span> View shipping rates, policies, and permit information. <br/>\r\n");
      out.write("                                <span class=\"color1\">Expected Handling Time :</span> 2 days.\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"tab-item\">\r\n");
      out.write("                            <a href=\"#\" class=\"tab-title\">additional imformation</a>\r\n");
      out.write("                            <div class=\"tab-content\">\r\n");
      out.write("                                <form class=\"add-info-form\" action=\"#\">\r\n");
      out.write("                                    <input type=\"text\" placeholder=\"Your information here\">\r\n");
      out.write("                                    <input class=\"button comment-reply-link\" type=\"submit\" value=\"Send\">\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"tab-item\">\r\n");
      out.write("                            <a href=\"#\" class=\"tab-title\">Customer Reviews <span>(5)</span></a>\r\n");
      out.write("                            <div class=\"tab-content\">\r\n");
      out.write("                                <ol class=\"comment-list\" id=\"huifu\">\r\n");
      out.write("\r\n");
      out.write("                                </ol><!-- .comment-list -->\r\n");
      out.write("                                <div class=\"comment-respond\" id=\"respond\">\r\n");
      out.write("                                    <h3 class=\"comment-reply-title widget-title\" id=\"reply-title\">LEAVE A COMMENT</h3>\r\n");
      out.write("                                    <form novalidate=\"\" class=\"comment-form\" id=\"commentform\" method=\"post\" action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/comment?method=addcomment\">\r\n");
      out.write("                                        <p class=\"comment-form-author\">\r\n");
      out.write("                                            <input size=\"30\" value=\"\" name=\"name\" placeholder=\"Name\" id=\"author\" type=\"text\">\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <p class=\"comment-form-email\">\r\n");
      out.write("                                            <input size=\"30\" value=\"\" name=\"email\" placeholder=\"Email\" id=\"email\" type=\"text\">\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <p class=\"comment-form-comment\">\r\n");
      out.write("                                            <textarea aria-required=\"true\" rows=\"9\" cols=\"45\" placeholder=\"Your comment\" name=\"desc\" id=\"comment\"></textarea>\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <p class=\"form-submit\">\r\n");
      out.write("                                            <input value=\"Send Messages\" class=\"submit button radius plum bold\" id=\"submit\" name=\"submit\" type=\"submit\">\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                </div> <!-- #respond -->\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div><!-- p-summary -->\r\n");
      out.write("            </div><!-- product-details -->\r\n");
      out.write("\r\n");
      out.write("        </main><!-- .site-main -->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"featured-product\">\r\n");
      out.write("            <div class=\"title-box\">\r\n");
      out.write("                <h2 class=\"txt-pinyon\">Vineyard</h2>\r\n");
      out.write("                <h3>FEATURED WINES</h3>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"break-line\"><span><img src=\"images/assets/break-image.png\" alt=\"\"/></span></div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"list-products row\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"view-all\">\r\n");
      out.write("                <a href=\"page?method=getCurrentPage&currentPage=1\" class=\"button radius\">Show all</a>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- featured-product -->\r\n");
      out.write("\r\n");
      out.write("    </div><!-- .container -->\r\n");
      out.write("\r\n");
      out.write("</div><!-- .site-content -->\r\n");
      out.write("<div id=\"bottom\" class=\"site-bottom\">\r\n");
      out.write("    <div class=\"no-container\">\r\n");
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
      out.write("<footer id=\"footer\" class=\"site-footer\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"footer-widget\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n");
      out.write("                    <div class=\"footer-item\">\r\n");
      out.write("                        <aside class=\"widget about\">\r\n");
      out.write("                            <div class=\"textwidget\">\r\n");
      out.write("                                <a href=\"index.html\" class=\"logo-ft\"><img src=\"images/assets/logo.png\" alt=\"\"/></a>\r\n");
      out.write("                                <p>Address : No 40 Baria Sreet 133/2 NewYork City, <br />\r\n");
      out.write("                                    NY,  United States <br/>\r\n");
      out.write("                                    Email: info.contact@gmail.com<br/>\r\n");
      out.write("                                    Phone: (00) 123 456 789</p>\r\n");
      out.write("                            </div><!-- .textwidget -->\r\n");
      out.write("                        </aside><!-- .widget -->\r\n");
      out.write("                    </div><!-- .footer-item -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-xs-12 col-sm-6 col-md-2 col-lg-2\">\r\n");
      out.write("                    <div class=\"footer-item\">\r\n");
      out.write("                        <aside class=\"widget footer_acc_links\">\r\n");
      out.write("                            <h3 class=\"widget-title\">My Accounts</h3>\r\n");
      out.write("                            <ul class=\"menu\">\r\n");
      out.write("                                <li><a href=\"#\">My account</a></li>\r\n");
      out.write("                                <li><a href=\"#\">My orders</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Register</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Login</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </aside><!-- .widget -->\r\n");
      out.write("                    </div><!-- .footer-item -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-xs-12 col-sm-6 col-md-2 col-lg-2\">\r\n");
      out.write("                    <div class=\"footer-item\">\r\n");
      out.write("                        <aside class=\"widget quick_links\">\r\n");
      out.write("                            <h3 class=\"widget-title\">Quick link</h3>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"#\">New User</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Help Center</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Report Spam</a></li>\r\n");
      out.write("                                <li><a href=\"#\">FAQs</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </aside><!-- .widget -->\r\n");
      out.write("                    </div><!-- .footer-item -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-4\">\r\n");
      out.write("                    <div class=\"footer-item\">\r\n");
      out.write("                        <aside class=\"widget tags_clound\">\r\n");
      out.write("                            <h3 class=\"widget-title\">Tag Clound</h3>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"#\">Music</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Travel</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Video</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Ecommerce</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Feature</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Text</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Sports</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Fashion</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Store</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </aside><!-- .widget -->\r\n");
      out.write("                    </div><!-- .footer-item -->\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- .row -->\r\n");
      out.write("        </div><!-- .footer-widget -->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-12\">\r\n");
      out.write("                <div class=\"bot-footer clearfix\">\r\n");
      out.write("                    <nav class=\"footer-menu\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"#\">About</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Customer Service</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Terms & Conditions</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Privacy Policy</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Site Map</a></li>\r\n");
      out.write("                            <li><a href=\"#\">Contact</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav><!-- .footer-menu -->\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"copyright\">\r\n");
      out.write("                        <p>Copyright <a href=\"#\">VineYard</a> © 2015. All rights reserved.</p>\r\n");
      out.write("                    </div><!-- .copyright -->\r\n");
      out.write("                </div><!-- .bot-footer -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- .row -->\r\n");
      out.write("    </div><!-- .container -->\r\n");
      out.write("\r\n");
      out.write("</footer><!-- .site-footer -->\r\n");
      out.write("</div><!-- #wrapper -->\r\n");
      out.write("\r\n");
      out.write("<!-- jQuery -->\r\n");
      out.write("<script src=\"js/jquery-1.12.4.min.js\"></script>\r\n");
      out.write("<!-- Boostrap -->\r\n");
      out.write("<script src=\"js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/vendor/bootstrap-select.min.js\"></script>\r\n");
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
      out.write("<script src=\"js/detailproduct.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/winecomment.js\"></script>\r\n");
      out.write("<script src=\"js/indexproduct.js\"></script>\r\n");
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
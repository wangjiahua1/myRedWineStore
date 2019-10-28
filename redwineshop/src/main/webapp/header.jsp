<%@ page contentType="textml;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header" class="site-header">
    <script src="js/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/chooseme.js"></script>

    <div id="myAccout_dialog" class="modal fade login-popup">
        <div class="popup-inner">
            <div class="modal-header">
                <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
                <h3 class="modal-title">MyAccount</h3>
            </div>

            <form id="myAccountForm" action="${pageContext.request.contextPath}/user?method=changeAccount" method="post">
                <p class="login-username">
                    <label for="user_login">Username*:</label>

                    <input name="log" id="user_login" class="input" value="${user.username}
                                <c:if test="${user.username==null}">请设置</c:if>" size="20" type="text"/>
                </p>
                <p class="login-username">
                    <label for="sex">Sex*:</label>
                    <input name="sex" id="sex" class="input" value="${user.sex}<c:if test="${user.sex==null}">请设置</c:if>" size="20" type="text"/>
                </p>
                <p class="login-username">
                    <label for="telephone">Telephone*:</label>
                    <input name="telephone" id="telephone" class="input" value="${user.telephone}<c:if test="${user.telephone==null}">请设置</c:if>" size="20" type="text"/>
                </p>
                <p class="login-username">
                    <label for="email">Email*:</label>
                    <input name="email" id="email" class="input" value="${user.email}<c:if test="${user.email==null}">请设置</c:if>" size="20" type="text"/>
                </p>
                <p>
                    <input type="hidden" name="uid" id="uid" class="input" value="${user.uid}"/>
                </p>
                <p class="login-submit">
                    <input  id="wp-submit" class="button-primary" value="Edit" type="submit"/>
                </p>
            </form>

            <div class="modal-footer">
                <a href="register.jsp">Register</a>
                <a href="changePassword.jsp">Update Password</a>
                <a href="forgotpassword.jsp">Forgot Password</a>
            </div>
        </div><!-- .popup-inner -->
        <div class="mask popup-close"></div>
    </div>


    <div class="top-header">
        <div class="no-container">
            <div class="left-header">
                <span class="icon_setting">
                    <a class="top-account top-login">
                        <i class="pe-7s-config" ></i>
                    </a>
                </span>
                <div class="setting-wrap">
                    <ul class="setting-account-list">
                        <li>
                            <!--利用session中的user来判断用户是否登录-->
                            <!--通过改变data-target属性的值来跳转不同页面-->
                            <a class="top-account top-login" id="myAccount"
                               href="#" data-toggle="modal"
                               data-target="<c:if test="${user!=null}">#myAccout_dialog</c:if>
                                <c:if test="${user==null}">#login_dialog</c:if>">
                                My Account
                            </a>
                        </li>
                        <li><a href="">My Cart</a></li>
                        <li><a href="${pageContext.request.contextPath}/product?method=findcartproduct&uid=${user.uid}">Check out</a></li>
                        <li>
                            <a <c:if test="${user==null}"> data-target="#login_dialog"</c:if>
                               <c:if test="${user!=null}">href="${pageContext.request.contextPath}/collect?method=findAllCollect"</c:if>>
                                My Wishlist
                            </a>
                        </li>
                        <li><a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                               <c:if test="${user != null}">href="${pageContext.request.contextPath}/collect?method=findCountCollect"</c:if>>
                            Compare</a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="right-header">
                <ul>
                    <c:if test="${user!=null}">
                        <li style="font-size:20px "><a href="#" class="top-account top-login" style="font-size:20px">${user.username}</a> </li>
                        <li >
                            <a href="${pageContext.request.contextPath}/user?method=logout" class="top-account top-login" style="font-size:20px">
                                LogOut
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${user==null}">
                        <li>
                            <a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                                    class="top-account top-login" href="#" data-toggle="modal" data-target="#login_dialog">
                                <i class="pe-7s-users"></i>
                            </a>
                        </li>
                    </c:if>

                    <li>
                        <a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                                class="top-search" href="#" data-toggle="modal" data-target="#search_dialog">
                            <i class="pe-7s-search"></i>
                        </a>
                    </li>

                    <li>
                        <a class="cart-control" href="#">
                            <i class="pe-7s-shopbag cart-icon"></i>
                            <%--<span class="cart-number">2</span>--%>
                        </a>

                        <div class="shop-item" id="shopping_cart_dropdown">
                            <div class="widget_shopping_cart_content">
                                <p class="buttons">
                                    <a href="${pageContext.request.contextPath}/product?method=findcartproduct&uid=${user.uid}" class="ro-btn-bd-2 btn-viewcart wc-forward">VIEW CART</a>
                                    <a href="${pageContext.request.contextPath}/product?method=findcartproduct&uid=${user.uid}" class="ro-btn-bd-2 btn-checkout wc-forward">CHECK OUT</a>
                                </p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!-- right-header -->

            <div class="site-brand">
                <a class="logo" href="index.jsp">
                    <img src="images/assets/logo.png" alt="Vineyard" />
                </a>
            </div><!-- .site-brand -->
        </div>
    </div><!-- top-header -->

    <div class="header-menu">
        <div class="container">
            <div class="site-brand">
                <a class="logo" href="index.jsp">
                    <img src="images/assets/logo.png" alt="Vineyard" />
                </a>
            </div><!-- .site-brand -->
            <nav class="main-menu">
                <span class="mobile-menu"><i class="fa fa-bars"></i></span>
                <ul>
                    <li id="home" class="mega-menu-wrap"><a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if> href="index.jsp" id="choose1" class="choose1">Home</a>

                    </li>
                    <li id="shop" class="mega-menu-wrap"><a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                            href="${pageContext.request.contextPath}/page?method=getPage&currentPage=1" class="choose1">Shop</a>

                    </li>

                    <li id="blog" class="mega-menu-wrap"><a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                            href="blog.jsp" class="choose1">Blog</a>

                    </li>
                    <li id="contact"><a <c:if test="${user == null}">data-toggle="modal" data-target="#login_dialog"</c:if>
                            href="contact.jsp" class="choose1">Contact</a>
                    </li>
                </ul>

            </nav><!-- .main-menu -->
        </div>
    </div><!-- header-menu -->
</header><!-- .site-header -->

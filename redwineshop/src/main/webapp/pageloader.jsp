<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="wrapper">
<div id="login_dialog" class="modal fade login-popup">
    <div class="popup-inner">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
            <h3 class="modal-title">Login</h3>
        </div>

        <form action="${pageContext.request.contextPath}/user?method=login" method="post">
            <p class="login-username">
                <label for="user_login">Username*:</label>
                <input name="log" id="user_login" class="input" value="1664320691@qq.com" size="20" type="text"/>
            </p>
            <p class="login-password">
                <label for="user_pass">Password*:</label>
                <input name="pwd" id="user_pass" class="input" value="123456789." size="20" type="password"/>
            </p>
            <p class="login-submit">
                <input  id="wp-submit" class="button-primary" value="Login" type="submit"/>
            </p>
        </form>

        <div class="modal-footer">
            <a href="register.jsp">Register</a>
            <a href="forgotpassword.jsp">Forgot Password</a>
        </div>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div><!-- .search-popup -->

<div id="search_dialog" class="modal fade search-popup">
    <div class="popup-inner">
        <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
        <form action="search">
            <select class="selectpicker search-select" name="search_by_cat" id="search_by_cat">
                <option value="all_cat" selected="selected">All Categories</option>
                <option value="Champagne">Champagne</option>
                <option value="Kosher">Kosher</option>
                <option value="Organic">Organic</option>
                <option value="Rase">Rase</option>
                <option value="Other">Other</option>
            </select>
            <div class="search-div">
                <input type="text" placeholder="Search"/>
                <input value="Search" type="submit"/>
            </div>
        </form>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div>
</div>
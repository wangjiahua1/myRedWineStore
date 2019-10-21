<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="search_dialog" class="modal fade search-popup">
    <div class="popup-inner">
        <a href="#" class="close" data-dismiss="modal" aria-hidden="true">X</a>
        <form action="#">
            <select class="selectpicker search-select" name="search_by_cat" id="search_by_cat">
                <option value="#" selected="selected" >All Categories</option>
                <option value="#">Champagne</option>
                <option value="#">Kosher</option>
                <option value="#">Organic</option>
            </select>
            <div class="search-div">
                <input type="text" placeholder="Search" />
                <input value="Search" type="submit" />
            </div>
        </form>
    </div><!-- .popup-inner -->
    <div class="mask popup-close"></div>
</div>

<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</div><!-- .search-popup -->

<%--
  Created by IntelliJ IDEA.
  User: 卢翔
  Date: 2019/10/21
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <title>jQuery星级评价打分代码</title>
    <style>
        .stars{ overflow: hidden; clear: both; margin: 10px; padding: 10px; border: 1px saddlebrown solid;}
        .stars span{ float: left; height: 30px; line-height: 30px; cursor:default;}
        .stars i{width: 30px; height: 30px; line-height: 30px; float: left; margin-right: 30px; background: #ccc; color: #fff; text-align: center; cursor:default; font-style: normal;}
        .stars .on{ color: #a71417;}
    </style>
    <script src="../../js/jquery.min.js"></script>
</head>
<body>
<div class="stars">
    <span>评价1：</span>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <input type="text"/>
</div>
<div class="stars">
    <span>评价2：</span>
    <i class="" score="1">★</i>
    <i class="" score="2">★</i>
    <i class="" score="3">★</i>
    <i class="" score="4">★</i>
    <i class="" score="5">★</i>
    <input type="text"/>
</div>
<div class="stars">
    <span>评价3：</span>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <i>★</i>
    <input type="text"/>
</div>
<script>
    $(function(){
        /*
         * 鼠标点击，该元素包括该元素之前的元素获得样式,并给隐藏域input赋值
         * 鼠标移入，样式随鼠标移动
         * 鼠标移出，样式移除但被鼠标点击的该元素和之前的元素样式不变
         * 每次触发事件，移除所有样式，并重新获得样式
         * */
        var stars = $('.stars');
        var Len = stars.length;
        //遍历每个评分的容器
        for(i=0;i<Len;i++){
            //每次触发事件，清除该项父容器下所有子元素的样式所有样式
            function clearAll(obj){
                obj.parent().children('i').removeClass('on');
            }
            stars.eq(i).find('i').click(function(){
                var num = $(this).index();
                clearAll($(this));
                //当前包括前面的元素都加上样式
                $(this).addClass('on').prevAll('i').addClass('on');
                //给隐藏域input赋值
                $(this).siblings('input').val(num);
            });
            stars.eq(i).find('i').mouseover(function(){
                var num = $(this).index();
                clearAll($(this));
                //当前包括前面的元素都加上样式
                $(this).addClass('on').prevAll('i').addClass('on');
            });
            stars.eq(i).find('i').mouseout(function(){
                clearAll($(this));
                //触发点击事件后input有值
                var score = $(this).siblings('input').val();
                for(i=0;i<score;i++){
                    $(this).parent().find('i').eq(i).addClass('on');
                }
            });
        }
    })
</script>
<div style="text-align:center;">
</div>
</body>
</html>

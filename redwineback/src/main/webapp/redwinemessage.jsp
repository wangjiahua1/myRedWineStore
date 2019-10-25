<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/22 0022
  Time: 下午 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost" />
    <link rel="stylesheet" href="layui/css/layui.css" media="all" />
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
    <script src="js/jquery.min.js"></script>
    <script>

    </script>

</head>
<style>
    body, ul, li, h1, h2, h3, h4, h5, h6, p, form, dl, dt, dd {
        margin: 0px;
        padding: 0px;
        font-size: 12px;
        font-weight: normal; }
    ul { list-style: none; }
    img { border-style: none; }
    .rt_wrap{margin-left:218px;margin-right:10px;height:100%;position:relative;}
    .rt_content{margin-bottom:80px;margin-right:8px;}
    .textWhite{color:white;}
    .link_btn{border:1px #139667 solid;border-radius:2px;background:#19a97b;color:white;padding:8px 15px;display:inline-block;cursor:pointer;}
    .link_btn:hover{background:#11a274;border:1px #0e8f61 solid;}
    .link_btn:active{background:#0c9c6e;border:1px #0e8f61 solid;}
    .textbox{border:1px #139667 solid;height:26px;line-height:26px;padding:5px;font-size:12px; vertical-align:middle;}
    .textbox_295{width:295px;}
    .textbox_225{width:225px;}
    .select{padding:0 5px;height:38px;font-size:12px;border:1px #139667 solid;vertical-align:middle; appearance: button;-webkit-appearance:button;}
    .group_btn{border:1px #139667 solid;background:#19a97b;color:white;padding:0 15px;height:38px;cursor:pointer;display:inline-block;vertical-align:middle;}
    .group_btn:hover{background:#11a274;border:1px #0e8f61 solid;}
    .group_btn:active{background:#0c9c6e;border:1px #0e8f61 solid;}
    .page_title{height:40px;line-height:40px;border-bottom:1px #b6b6b6 solid;margin:10px 0;}
    .page_title h2{font-size:15px;font-weight:bold;}
    .page_title .top_rt_btn{display:inline-block;height:30px;line-height:30px;padding:0 15px;border:1px #d2d2d2 solid;background:#f8f8f8;color:#19a97b; vertical-align:middle;cursor:pointer;}
    .table{width:100%;table-layout:fixed;margin:5px 0;}
    .table th{border:1px #d2d2d2 solid;height:40px;line-height:40px;}
    .table td{border:1px #d2d2d2 solid;padding:10px 8px;position:relative;}
    .table td p{margin:5px 0;line-height:1.3;}
    .table td mark{color:red;line-height:1.3;}
    .table tr:nth-child(odd){background:#f8f8f8;}
    .table tr:hover{background:#f9f9f9;}
    .table td a{color:#19a97b;margin:0 5px;cursor:pointer;}
    .table td .full_link_td{display:block;width:100%;height:100%;border:none;outline:none;position:absolute;top:0;left:0;text-align:center;margin:0;font-size:20px;font-weight:bold;}
    .table td .full_link_td:hover{background:#f4f4f4;color:#019163;}
    .table td .inner_btn{background:#F9F;color:white;padding:5px 8px;border-radius:2px;}
    .table td .inner_btn:hover{background:#ffa4ff;color:#f8f8f8;}
    .table td .cut_title{width:265px;}
    .table td .link_icon{font-size:24px;font-family:'adminthemesregular';color:#19a97b;}
    .table td .link_icon:hover{color:#019163;}
    .paging{margin:8px 0;overflow:hidden;text-align:right;}
    .paging a{background:#19a97b;border:1px #139667 solid;color:white;padding:5px 8px;display:inline-block;cursor:pointer;}
    .paging a:hover{background:#11a274;border:1px #0e8f61 solid;}
    .paging a:active{background:#17a578;border:1px #0e8f61 solid;}
    .single_selection{color:#333;padding:6px 8px;display:inline-block;vertical-align:middle;}
    .single_selection input{margin-right:3px;vertical-align:middle;}
    .errorTips{color:red;margin:0 8px;}
    .errorTips:before{content:"x";font-family:'adminthemesregular';margin-right:3px;font-size:16px;}
    .textarea{display:inline-block;margin-top:5px;outline:none;resize:none;border:1px #139667 solid;padding:8px;}
    .uploadImg{display:inline-block;padding:15px;background:#f8f8f8;position:relative;border:1px #139667 solid;}
    /*.uploadImg input{display:none;}*/
    .uploadImg span{display:block;font-size:12px;text-align:center;color:#139667;}
    .uploadImg span:before{content:"#";font-family:'adminthemesregular';display:block;font-size:40px;}
    /*.ulColumn2{overflow:hidden;}*/
    .ulColumn2 li{margin-left: -260px;}
    .ulColumn2 li .item_name{text-align:right;display:inline-block;}
    /*#updateimg{margin-bottom: 0px}*/
</style>
<body>
<!--header-->

<!--aside nav-->
<!--aside nav-->


<section class="rt_wrap content mCustomScrollbar">
    <div class="rt_content">
        <form action="${pageContext.request.contextPath}/redwine" id="uploadForm"  method="post">
            <ul class="ulColumn2">
                <br/>
                <li>
                    <span class="item_name" style="width:120px;">商品名称：</span>
                    <input type="text" class="textbox textbox_295" placeholder="商品名称..." value="${redWine.pname}" readonly="true" id="pname" name="pname"/>
                    <span class="errorTips" style="visibility:hidden;">错误提示信息...</span>
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;">商品货号：</span>
                    <input type="text" class="textbox" placeholder="商品货号..." value="${redWine.pid}" readonly="true" id="pid" name="pid"/>
                    <span class="errorTips" style="visibility:hidden;">错误提示信息...</span>
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;">品牌：</span>
                    <select class="select" id="brands" name="brand">
                        <option>选择品牌</option>
                    </select>
                    <span class="errorTips" style="visibility:hidden;">错误提示信息...</span>
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;">分类：</span>
                    <select class="select" id="mycategory" name="category">
                        <option>选择产品分类</option>
                    </select>
                    <span class="errorTips" style="visibility:hidden;">错误提示信息...</span>
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;">推荐：</span>
                    <label class="single_selection"><input type="radio" name="ishot" class="myhot" value="boutique" checked="checked"/>是否精品</label>
                    <label class="single_selection"><input type="radio" name="ishot" class="myhot" value="hot"/>是否热销</label>
                    <label class="single_selection"><input type="radio" name="ishot" class="myhot" value="new"/>是否新品</label>
                    <span class="errorTips" style="visibility:hidden;" id="gethotError">错误提示信息...</span>
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;">上传图片：</span>
                    <label class="uploadImg">
                        <input id="upload"  type="file" name="upload" onchange="uploadFile()"/>
                        <span>上传图片</span>
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="${redWine.pimage}" alt="" id="updateimg" height="60px" />
                    <input type="hidden" id="mypath" value="${redWine.pimage}" name="pimage">
                </li><br/>
                <li>
                    <span class="item_name" style="width:120px;"></span>
                    <input type="button" class="link_btn"  data-method="input_submit" id="updateredwine" value="确定"/>
                </li>
            </ul>
            <input type="hidden" name="method" value="updateRedwine">
        </form>
    </div>
</section>
</body>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript" src="js/redwinemessage.js"></script>
</html>

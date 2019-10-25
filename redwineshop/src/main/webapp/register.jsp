<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-Type" content="text/html" charset="utf-8">
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script type="text/javascript">
        $(function () {
            $("#getKey").click(function () {
                var emaill=$("#emaill").val();
                if(emaill!=""){
                $.get(
                    "user?method=getactivecode",{ emaill: emaill},
                   function (data) {
                       //window.open("registerSuccess.jsp",-blank);
                       //pageContext.request.contextPath
                     /*  window.location.href = "}/registerSuccess.jsp";*/
                   /*  Console.log("我去");
                       Console.log(data);
                        Console.log(data.activeCode);*/

                    console.log(data);
                    $("#emailhidden").val(data);
  /*                  console.log(data.uid);*/
                    },
                    "json"
                );
                }
                else {
                    alert("无值");
                    console.log("无值");
                }
                var time=60;
                var validCode=true;
                var code=$(this);
                if (validCode) {
                    validCode=false;
                    code.addClass("msgs1");
                    var t=setInterval(function  () {
                        time--;
                        code.html(time+"秒");
                        if (time==0) {
                            clearInterval(t);
                            code.html("重新获取");
                            validCode=true;
                            code.removeClass("msgs1");
                            $("#emailhidden").val("");
                        }
                    },1000)
                }
            });
            
            
            //获取短信验证码
/*            var validCode=true;
            $("#accode").click (function  () {

            })*/
        })
    </script>
</head>
<body>
<div class="content">
    <div class="ucSimpleHeader">
        <a href="##"></a>
        <div class="trigger">
            <a href="##">注册</a>
        </div>
    </div>
    <form id="#mainForm1" class="mainForm mainForm1" action="user?method=register" method="post">
        <div class="number">
            <a href="##" class="linkABlue">邮箱注册用户</a>

        </div>
        <div class="normalInput">
            <input type="text" class="phone email" id="emaill" name="emaill" placeholder="邮箱">
        </div>
        <ul class="bRadius2 mail">
        <li data-mail="@qq.com" class="item item1">@qq.com</li>
        <li data-mail="@sina.com" class="item item2">@sina.com</li>
        <li data-mail="@126.com" class="item item3">@126.com</li>
        <li data-mail="@163.com" class="item item4">@163.com</li>
        <li data-mail="@gmail.com" class="item item5">@gmail.com</li>
        </ul>
        <span class="error error1"></span>


        <div class="normalInput">
            <input type="text" class="kapkey msgs" name="accode" id="accode" maxlength="6" placeholder="验证码">
            <input  type="hidden" id="emailhidden" name="emailhidden">
            <span class="formLine"></span>
            <a href="${pageContext.request.contextPath}/registerSuccess.jsp" id="getKey" class="linkABlue" target="_blank" >获取验证码</a>   <!--target="_blank"-->
        </div>
        <span class="error error2"></span>
        <div class="normalInput">
            <input type="text" class="password" name="password" maxlength="16" autocomplete="off" placeholder="密码">
            <input type="password" class="password1" name="password" maxlength="16" autocomplete="off" placeholder="密码">
            <a id="pwdBtn" href="##" class="pwdBtnShow" isshow="false">
                <i class="i_icon"></i>
            </a>
        </div>
        <span class="error error3"></span>
        <div class="rememberField">
				<span class="checkboxPic check_chk" tabindex="-1" isshow="false">
					<i class="i_icon"></i>
				</span>
            <label class="pointer">我已阅读并接受</label>
            <a href="#" target="_blank" class="linkABlue">《Flyme服务协议条款》</a>
        </div>
        <span class="otherError">请确认已阅读并同意Flyme服务协议条款</span>
        <input type="submit" class="fullBtnBlue" value="注册">
    </form>
    <form id="#mainForm2" class="mainForm mainForm2">
        <div class="number">
            <a href="##" class="linkABlue2 number2">手机号码注册</a>
            <span></span>
            <a href="##" class="linkAGray2">账户名注册</a>
        </div>
        <div class="normalInput">
            <input type="text" class="username" maxlength="32" placeholder="账户名" autocomplete="off">
            <span class="grayTip">@flyme.cn</span>
        </div>
        <span class="error error1"></span>
        <div class="normalInput">
            <input type="text" class="passwordN" maxlength="16" autocomplete="off" placeholder="密码">
            <input type="password" class="password1N" maxlength="16" autocomplete="off" placeholder="密码">
            <a id="pwdBtnN" href="##" class="pwdBtnShowN" isshow="false">
                <i class="i_icon"></i>
            </a>
        </div>
        <span class="error error3"></span>
        <div class="normalInput">
            <input type="text" class="email" maxlength="32" placeholder="安全邮箱" autocomplete="off">
        </div>
        <span class="error error2"></span>
        <div class="rememberField">
				<span class="checkboxPic check_chk" tabindex="-1" isshow="false">
					<i class="i_icon"></i>
				</span>
            <label class="pointer">我已阅读并接受</label>
            <a href="https://www.17sucai.com/" target="_blank" class="linkABlue">《Flyme服务协议条款》</a>
        </div>
        <span class="otherError">请确认已阅读并同意Flyme服务协议条款</span>
        <a href="##" class="fullBtnBlue">注册</a>
    </form>
</div>

</div>
<div id="mz_Float">
    <div class="mz_FloatBox">
        <div class="mz3AngleL">
            <i class="i_icon"></i>
        </div>
        <div class="mzFloatTip bRadius2">长度为8-16个字符,区分大小写,至少包含两种类型</div>
    </div>
</div>
<div style="text-align:center;">
</div>
</body>
</html>
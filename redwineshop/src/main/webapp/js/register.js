$(function () {
    $("#username").blur(function () {
        //发送ajax请求
        $.get(
            "user?method=checkUsername",
            {username:$("#username").val()},
            function (data) {

                //{"isExist":true}
                if(data.isExist){
                    $("#errorUsername").html("用户已经存在");
                }else{
                    $("#errorUsername").html("");
                }
            },
            "json"
        );
    });


    $("#registForm").validate({
        rules:{
            username:{
                required:true
            },
            password:{
                required:true,
                rangelength:[6,12]
            },
            repassword:{
                //inputPassword3 密码框的id
                equalTo:"#inputPassword3"
            },
            sex:{
                required:true
            }
        },
        messages:{
            username:{
                required: "用户名必须填写"
            },
            password:{
                required:"密码必须填写",
                rangelength:"密码必须6-12位"
            },
            repassword:{
                equalTo:"两次输入的密码不一致"
            },
            sex:{
                required:"性别必须填写"
            }
        },
        errorPlacement: function (error, element) { //指定错误信息位置
            if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox

                error.appendTo(element.parent().parent()); //将错误信息添加当前元素的父结点后面
            } else {
                error.insertAfter(element);
            }
        }

    });
});
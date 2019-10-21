$(function () {
    $("#myAccountForm").validate({
        rules:{
            log:{
                required:true
            },
            telephone:{
                required:true,
                rangelength:[11,11]
            },
            email:{
                email:true
            }
        },
        message:{
            log:{
                required: "用户名必须填写"
            },
            telephone:{
                required:"电话必须填写",
                rangelength:"电话必须11位"
            },
            email:{
                email:"邮箱格式不正确"
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
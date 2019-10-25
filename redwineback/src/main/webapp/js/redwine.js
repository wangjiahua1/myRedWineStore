layui.config({
    base : "js/"
}).use(['form','layer','jquery','laypage'],function(){
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;

    $(".redwine_edit").on("click",function(){
        var id=$("#myid1").val();
        layer.open({
            type: 2,
            title: 'layer mobile页',
            shadeClose: true,
            shade: 0.8,
            area: ['560px', '70%'],
            content: 'redwine?method=getredwinebypid&id='+id+''//iframe的url
            });

    });

    $(".linksAdd_btn").on("click",function(){
        layer.open({
            type: 2,
            title: 'layer mobile页',
            shadeClose: true,
            shade: 0.8,
            area: ['600px', '70%'],
            content: 'addredwine.jsp'//iframe的url
        });

    });
    $(".redwine_del").on("click",function(){
        var pid=$("#myid2").val();
        layer.confirm('您确定要删除吗？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $.getJSON(
                "redwine?method=deleteRedWineByPid&pid="+pid,
                function (data) {
                    console.log(data);
                }
            );
            layer.msg('删除成功', {icon: 1});
        }, function(){
            layer.closeAll();
        });
    });
    $(".search_btn").on("click",function(){
       var pid=$("#getpid").val();
        $("#tbody1").empty();
        $.getJSON(
            "redwine?method=findRedWineByPid&pid="+pid,
            function (data) {
                var td="<tr>\n" +
                    "                <td></td>\n" +
                    "                <td>"+data.pid+"</td>\n" +
                    "                <td>$"+data.pname+"</td>\n" +
                    "                <td><img src=\""+data.pimage+"\" width=\"5px\" id=\"myimg\"/></td>\n" +
                    "                <td>"+data.price+"</td>\n" +
                    "                <td>"+data.description+"</td>\n" +
                    "                <td>"+data.cid+"</td>\n" +
                    "                <td>"+data.ishot+"</td>\n" +
                    "                <td><a class=\"layui-btn layui-btn-mini redwine_edit\"><i class=\"iconfont icon-edit\"></i>\n" +
                    "                    <input type=\"hidden\" value=\""+data.pid+"\" id=\"myid1\">编辑</a>\n" +
                    "                    <a class=\"layui-btn layui-btn-danger layui-btn-mini redwine_del\" ><i class=\"layui-icon\">&#xe640;</i>\n" +
                    "                    <input type=\"hidden\" value=\""+data.pid+"\" id=\"myid2\">  删除</a></td>\n" +
                    "                </td>\n" +
                    "            </tr>";
                $("#tbody1").append(td);
                $(".redwine_edit").on("click",function(){
                    var id=$("#myid1").val();
                    layer.open({
                        type: 2,
                        title: 'layer mobile页',
                        shadeClose: true,
                        shade: 0.8,
                        area: ['560px', '70%'],
                        content: 'redwine?method=getredwinebypid&id='+id+''//iframe的url
                    });

                });
            }

        );
    })
});
function uploadFile() {
    var form = $('#uploadForm');
    var sendData1 = new FormData(form[0]);
    //使用ajax发送数据
    $.ajax({
        url:"uploadimg",
        data:sendData1,
        type : 'post',
        cache:false,
        processData: false,// 默认 | 不处理数据
        contentType: false,// 默认 | 不设置内容类型
        dataType:"json", //返回json数据
        success:function (res) {
            //显示图片
            layer.msg('图片加载中', {icon: 4},function () {
                $("#updateimg").prop("src","");
                $("#updateimg").prop("src",res.path);
            });
            $("#mypath").attr("value","");
            $("#mypath").attr("value",res.path);
        },
        error:function () {
        },
        async:true
    });
}

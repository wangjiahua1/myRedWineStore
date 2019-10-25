layui.config({
    base : 'js/'
}).use(['form','layer','jquery','laypage'],function(){
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;

    $.getJSON(
        "redwine?method=getredwineCategory",
        function (data) {
            $("#mycategory").empty();
            $.each(data, function (i, v) {
                var option = "<option>" + v.cname + "</option>";
                $("#mycategory").append(option);
            })
        }
    )
    $.getJSON(
        "redwine?method=getredwineBrand",
        function (data) {
            $("#brands").empty();
            $.each(data, function (i, v) {
                var option = "<option>" + v.bname + "</option>";
                $("#brands").append(option);
            })
        }
    )
    var active = {
        input_submit: function () {
            layer.confirm('您确定要修改吗？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                layer.msg('页面加载中', {icon: 3},function () {
                    $("#uploadForm").submit();
                });
            }, function(){
                layer.closeAll();
            });
        }
    }
    $('#updateredwine').on('click', function(){
        var othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });

    //     var pid = $("#pid").val();
    //     var pname = $("#pname").val();
    //     var brand = $("#brands option:selected").text();
    //     var categroy = $("#mycategory option:selected").text();
    //     var ishot = $(".myhot").val();
    //     var pimage = $("#updateimg").val();
    //     $.ajax({
    //             url:"redwine?method=updateRedwine",
    //             data:{pid:pid,pname:pname,brand:brand,categroy:categroy,ishot:ishot,pimage:pimage},
    //             datetype:JSON,
    //             suceess:function (result) {
    //
    //             },
    //             error:function (result) {
    //
    //             }
    //
    //
    //     });
    // });
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

layui.config({
    base : 'js/'
}).use(['form','layer','jquery','laypage'],function() {
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
        });
    var active = {
        input_submit: function () {
            layer.confirm('您确定要增加吗？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                layer.msg('页面加载中', {icon: 3},function () {
                    $("#addForm").submit();
                });
            }, function(){
                layer.closeAll();
            });
        }
    }
    $('#addredwine').on('click', function(){
        var othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });
});
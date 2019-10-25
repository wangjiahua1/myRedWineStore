layui.config({
    base : "js/"
}).use(['form','layer','jquery','laypage'],function(){
    var form = layui.form(),
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;

    //加载页面数据
    var linksData = '';
    $.ajax({
        url : "../../commentServlet?method=findAllComment",
        type : "get",
        dataType : "json",
        success : function(data){
            linksData = data;
            if(window.sessionStorage.getItem("addLinks")){
                var addLinks = window.sessionStorage.getItem("addLinks");
                linksData = JSON.parse(addLinks).concat(linksData);
            }
            //执行加载数据的方法
            linksList();
        }
    })

    //查询
    $(".search_btn").click(function(){
        var newArray = [];
        if($(".search_input").val() != ''){
            var index = layer.msg('查询中，请稍候',{icon: 16,time:false,shade:0.8});
            setTimeout(function(){
                $.ajax({
                    url : "../../json/linksList.json",
                    type : "get",
                    dataType : "json",
                    success : function(data){
                        if(window.sessionStorage.getItem("addLinks")){
                            var addLinks = window.sessionStorage.getItem("addLinks");
                            linksData = JSON.parse(addLinks).concat(data);
                        }else{
                            linksData = data;
                        }
                        for(var i=0;i<linksData.length;i++){
                            var linksStr = linksData[i];
                            var selectStr = $(".search_input").val();
                            function changeStr(data){
                                var dataStr = '';
                                var showNum = data.split(eval("/"+selectStr+"/ig")).length - 1;
                                if(showNum > 1){
                                    for (var j=0;j<showNum;j++) {
                                        dataStr += data.split(eval("/"+selectStr+"/ig"))[j] + "<i style='color:#03c339;font-weight:bold;'>" + selectStr + "</i>";
                                    }
                                    dataStr += data.split(eval("/"+selectStr+"/ig"))[showNum];
                                    return dataStr;
                                }else{
                                    dataStr = data.split(eval("/"+selectStr+"/ig"))[0] + "<i style='color:#03c339;font-weight:bold;'>" + selectStr + "</i>" + data.split(eval("/"+selectStr+"/ig"))[1];
                                    return dataStr;
                                }
                            }
                            //网站名称
                            if(linksStr.linksName.indexOf(selectStr) > -1){
                                linksStr["linksName"] = changeStr(linksStr.linksName);
                            }
                            //网站地址
                            if(linksStr.linksUrl.indexOf(selectStr) > -1){
                                linksStr["linksUrl"] = changeStr(linksStr.linksUrl);
                            }
                            //
                            if(linksStr.showAddress.indexOf(selectStr) > -1){
                                linksStr["showAddress"] = changeStr(linksStr.showAddress);
                            }
                            if(linksStr.linksName.indexOf(selectStr)>-1 || linksStr.linksUrl.indexOf(selectStr)>-1 || linksStr.showAddress.indexOf(selectStr)>-1){
                                newArray.push(linksStr);
                            }
                        }
                        linksData = newArray;
                        linksList(linksData);
                    }
                })

                layer.close(index);
            },2000);
        }else{
            layer.msg("请输入需要查询的内容");
        }
    })

    //添加友情链接
    $(".linksAdd_btn").click(function(){
        var index = layui.layer.open({
            title : "添加友情链接",
            type : 2,
            content : "linksAdd.jsp",
            success : function(layero, index){
                layui.layer.tips('点击此处返回文章列表', '.layui-layer-setwin .layui-layer-close', {
                    tips: 3
                });
            }
        })
        //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
        $(window).resize(function(){
            layui.layer.full(index);
        })
        layui.layer.full(index);
    })

    //批量删除
    $(".batchDel").click(function () {
        var $checkbox = $('.links_list tbody input[type="checkbox"][name="checked"]');
        var $checked = $('.links_list tbody input[type="checkbox"][name="checked"]:checked');

        if ($checkbox.is(":checked")) {
            layer.confirm('确定删除选中的信息？', {icon: 3, title: '提示信息'}, function (index) {
                var index = layer.msg('删除中，请稍候', {icon: 16, time: false, shade: 0.8});
                setTimeout(function () {
                    //删除数据
                    for (var j = 0; j < $checked.length; j++) {
                        console.log($checked[j].value);
                        $.getJSON(
                            "http://localhost:8888/webstore/commentServlet?method=delComment",
                            {mmid:$checked[j].value},
                            function (data) {
                            }
                        )
                    }
                    $('.links_list thead input[type="checkbox"]').prop("checked", false);
                    form.render();
                    layer.close(index);
                    layer.msg("删除成功");
                    window.location.href="comment.jsp";
                }, 2000);
            })
        } else {
            layer.msg("请选择需要删除的评论");
        }
    })

    //全选
    form.on('checkbox(allChoose)', function (data) {
        var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"])');
        child.each(function (index, item) {
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    });

    //通过判断文章是否全部选中来确定全选按钮是否选中
    form.on("checkbox(choose)", function (data) {
        var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"])');
        var childChecked = $(data.elem).parents('table').find('tbody input[type="checkbox"]:not([name="show"]):checked')
        data.elem.checked;
        if (childChecked.length == child.length) {
            $(data.elem).parents('table').find('thead input#allChoose').get(0).checked = true;
        } else {
            $(data.elem).parents('table').find('thead input#allChoose').get(0).checked = false;
        }
        form.render('checkbox');
    })


    // $("body").on("click", ".links_look", function (index) {
    // 	console.log(index);
    // 	// layer.confirm()
    //
    //     layer.open({
    //         type: 1
    //         ,
    //         title: false //不显示标题栏
    //         ,
    //         closeBtn: false
    //         ,
    //         area: '300px;'
    //         ,
    //         shade: 0.8
    //         ,
    //         id: 'LAY_layuipro' //设定一个id，防止重复弹出
    //         ,
    //         btn: ['确认']
    //         ,
    //         btnAlign: 'c'
    //         ,
    //         moveType: 1 //拖拽模式，0或者1
    //         ,
    //         content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
    //     });
    //     layer.close(index);
    // });

    function linksList(that) {
        //渲染数据
        function renderDate(data,curr){
        	var dataHtml = '';
        	if(!that){
        		currData = linksData.concat().splice(curr*nums-nums, nums);
        	}else{
        		currData = that.concat().splice(curr*nums-nums, nums);
        	}
        	if(currData.length != 0){
        		for(var i=0;i<currData.length;i++){
        			dataHtml += '<tr>'
        	    	+'<td><input type="checkbox" name="checked" value='+currData[i].mmid+' lay-skin="primary" lay-filter="choose"></td>'
        	    	+'<td align="left">'+currData[i].title+'</td>'
        	    	+'<td><a style="" target="_blank" href="#">'+currData[i].product.pname+'</a></td>'
        	    	+'<td>'+currData[i].email+'</td>'
        	    	+'<td>'+currData[i].time1+'</td>'
        	    	+'<td>'+currData[i].name+'</td>'
        	    	+'<td>'
        			+  '<a class="" onclick="showDetails(\''+currData[i].desc+'\')"><i class="iconfont icon-edit"></i> 查看详情</a>'
        			+  '<a  id='+currData[i].mmid+' onclick="delComment('+currData[i].mmid+')" class="layui-btn layui-btn-danger layui-btn-mini links_del" data-id="'+data[i].linksId+'"><i class="layui-icon">&#xe640;</i> 删除</a>'
        	        +'</td>'
        	    	+'</tr>';
        		}
        	}else{
        		dataHtml = '<tr><td colspan="7">暂无数据</td></tr>';
        	}
            return dataHtml;
        }

        //分页
        var nums = 10; //每页出现的数据量
        if (that) {
            linksData = that;
        }

        laypage({
            cont: "page",
            pages: Math.ceil(linksData.length / nums),
            jump: function (obj) {
                $(".links_content").html(renderDate(linksData, obj.curr));
                $('.links_list thead input[type="checkbox"]').prop("checked", false);
                form.render();
            }
        })
    }
})

function delComment(mmid) {
    // console.log(mmid);
    var _this = $("#"+mmid);
    // console.log(_this);
    layer.confirm('确定删除此评论？', {icon: 3, title: '提示信息'}, function (index) {

        // window.location.href="http://localhost:8888/webstore/commentServlet?method=delComment&mmid="+mmid;
        $.getJSON(
            "http://localhost:8888/webstore/commentServlet?method=delComment",
            {mmid:mmid},
            function (data) {
                // console.log(data);
                if(data=="del-success"){
                    _this.parents("tr").remove();
                    layer.msg("删除成功");
                }else
                    layer.msg("删除失败");
            }
        )

        layer.close(index);
    });
}

//显示详情
function showDetails(desc) {
    // console.log(desc);
    layer.open({
        type: 1
        ,
        title: false //不显示标题栏
        ,
        closeBtn: false
        ,
        area: '300px;'
        ,
        shade: 0.8
        ,
        id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,
        btn: ['确认']
        ,
        btnAlign: 'c'
        ,
        moveType: 1 //拖拽模式，0或者1
        ,
        // content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">评论详情<br><br><br>' +
        // '\"+desc+\"<br><br>' +
        // 'layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
        content:"<div style=\"padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;\">"+desc+"</div>"
    });
}

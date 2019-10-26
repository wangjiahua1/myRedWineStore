$(function () {
    // let p= new Promise(function (resolve, reject){
    //      // 获取导航栏
    //     console.log(12)
    $.getJSON(
        "category?method=findcategory",
        function (data) {
            var list=$("#list");
            $.each(data,function (i,v) {
                var li="";
                li = "<li class='active' id='"+v.cname+"'><a href='javascript:void(0)'>"+v.cname+"</a></li>";
                $("#list").append(li);
            });
            $.getJSON(
                "product?method=findproduct&cid=1",
                function (data) {
                    var dataObj={};
                    dataObj.list=data;
                    var html=template("Mytemplate",dataObj);
                    $("#roes .row").html(html)
                },
            );
            $("#roes").show();
            $("#roes").siblings().hide();
            //商品内容 通过模板实现
            $("#list #organic").click(function () {
                $.getJSON(
                    "product?method=findproduct&cid=2",
                    function (data) {
                        var dataObj={};
                        dataObj.list=data;
                        var html=template("Mytemplate",dataObj);
                        $("#organic .row").html(html)
                    },
                );
                $("#organic").show();
                $("#organic").siblings().hide()
            });
            $("#list #kosher").click(function () {
                $.getJSON(
                    "product?method=findproduct&cid=3",
                    function (data) {
                        var dataObj={};
                        dataObj.list=data;
                        var html=template("Mytemplate",dataObj);
                        $("#Kosher .row").html(html)
                    }
                );
                $("#kosher").show();
                $("#kosher").siblings().hide()
            }),

                $("#list #champagne").click(function () {
                    $.getJSON(
                        "product?method=findproduct&cid=4",
                        function (data) {
                            var dataObj={};
                            dataObj.list=data;
                            var html=template("Mytemplate",dataObj);
                            $("#champagne .row").html(html)
                        }
                    );
                    $("#champagne").show();
                    $("#champagne").siblings().hide()
                }),
                $("#list  #roes").click(function () {
                    $.getJSON(
                        "product?method=findproduct&cid=1",
                        function (data) {
                            var dataObj={};
                            dataObj.list=data;
                            var html=template("Mytemplate",dataObj);
                            $("#roes .row").html(html)
                        },
                    );
                    $("#roes").show();
                    $("#roes").siblings().hide()
                })

            $("#list #other").click(function () {
                $.getJSON(
                    "product?method=findproduct&cid=5",
                    function (data) {
                        var dataObj={};
                        dataObj.list=data;
                        var html=template("Mytemplate",dataObj);
                        $("#other .row").html(html)
                    }
                )
                $("#other").show();
                $("#other").siblings().hide()
            });

        }
    )

});

<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2019/10/21
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据管理</title>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="demo">
            <div id="chart_area" style="height:480px;margin-left: auto;"></div>
        </div>
    </div>
    <script type="text/javascript" src="../../js/echarts.js"></script>
    <script type="text/javascript">
        $.getJSON(
            "${pageContext.request.contextPath}/data?method=findMostDate",
            function (data) {
                console.log(data);
                // 基于准备好的dom，初始化echarts实例
                var chart_area = echarts.init(document.getElementById('chart_area'));
                option = {
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b}: {c} ({d}%)"
                    },
                    series: [
                        {
                            name: '销售占比',
                            type: 'pie',
                            radius: ['40%', '55%'],
                            data:function () {
                                var res=[];
                                var resArray = [];
                                $.each(data,function(i,v){
                                    res.push({
                                        value:v.count,
                                        name:v.pname
                                    });
                                });
                                return res;
                            }()
                        }
                    ]
                };
                console.log(option);
                // 使用刚指定的配置项和数据显示图表。
                chart_area.setOption(option);

            }
        );

    </script>
</body>
</html>

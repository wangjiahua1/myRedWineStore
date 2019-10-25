var navs = [{
	"title" : "后台首页",
	"icon" : "icon-computer",
	"href" : "page/main.html",
	"spread" : false
},{
	"title" : "新闻管理",
	"icon" : "icon-text",
	"href" : "page/news/newsList.jsp",
	"spread" : false
},{
	"title" : "评论管理",
	"icon" : "icon-text",
	"href" : "page/links/linksList.jsp",
	"spread" : false
},{
    "title" : "数据管理",
    "icon" : "icon-text",
    "href" : "page/links/linksList.jsp",
    "spread" : false
},{
    "title" : "订单管理",
    "icon" : "icon-text",
    "href" : "page/links/linksList.jsp",
    "spread" : false
},
	{
	"title" : "404页面",
	"icon" : "&#xe61c;",
	"href" : "page/404.html",
	"spread" : false
},{
	"title" : "系统基本参数",
	"icon" : "&#xe631;",
	"href" : "page/systemParameter/systemParameter.jsp",
	"spread" : false
},{
	"title" : "商品管理",
	"icon" : "&#xe61c;",
	"href" : "",
	"spread" : false,
	"children" : [
		{
			"title" : "类别管理",
			"icon" : "&#xe631;",
			"href" : "categroy.jsp",
			"spread" : false
		},
		{
			"title" : "红酒管理",
			"icon" : "&#xe631;",
			"href" : 'page?method=getCurrentPage&currentPage=1',
			"spread" : false
		}
	]
}]
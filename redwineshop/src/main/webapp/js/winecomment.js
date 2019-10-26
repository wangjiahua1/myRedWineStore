$(function () {
    $.getJSON(
        "comment?method=findcomment",
        function (data) {
            var list=$("#huifu");
            $.each(data, function (i,v) {
                var lili="";
                lili+="<li class=\"comment\">\n" +
                    "\n" +
                    " <div class=\"comment-wrapper\">\n" +
                    "\n" +
                    "<div class=\"comment-avatar\">\n" +
                    " <img class=\"avatar\" alt=\"\" src='images/placeholder/avatar_0"+(v.mmid % 5 + 1)+".jpg'>\n" +
                    " </div><!-- .comment-avatar -->\n" +
                    "\n" +
                    "  <div class=\"comment-body\">\n" +
                    " <header class=\"comment-meta clearfix\">\n" +
                    "\n" +
                    " <cite class=\"comment-author\">\n" +
                    "<span class=\"comment-date\">"+v.time+"</span>\n" +
                    " <span><a class=\"url\" rel=\"external nofollow\" href=\"#\">"+v.name+"</a></span>\n" +
                    " </cite>\n" +
                    "\n" +
                    " </header><!-- .comment-meta -->\n" +
                    "\n" +
                    " <div class=\"comment-content\">\n" +
                    " <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.</p>\n" +
                    " </div> <!-- .comment-content -->\n" +
                    "  </div><!-- comment-body -->\n" +
                    "\n" +
                    " </div><!-- .comment-wrapper -->\n" +
                    "\n" +
                    "  </li>"
                list.append(lili);
            })
        }
    )
})
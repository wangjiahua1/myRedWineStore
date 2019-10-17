// $(function () {
//     $(".choose1").click(function () {
//         $("#home").addClass("current-menu-item")
//     });
//
//     $(".choose2").click(function () {
//         $("#shop").addClass("current-menu-item")
//     });
//
//     $(".choose3").click(function () {
//         $("#blog").addClass("current-menu-item")
//     });
//
//     $(".choose4").click(function () {
//         $("#contact").addClass("current-menu-item")
//     })
// });

$(document).ready(function () {
    $("li a").each(function () {
        $this=$(this);
        if ($this[0].href==String(window.location)) {
            $("li").removeClass("mega-menu-wrap");
            $this.parent().addClass("current-menu-item");
        }
    })
})
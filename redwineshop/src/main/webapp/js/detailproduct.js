$(function () {
    $(".list-color li a").click(function () {
        //console.log($(this).html().split('<span')[0]);
        var color=$(this).html().split('<span')[0];

    });
    $("#list li a").click(function () {
        $(this).css()
        var size=$(this).html();
    });
    $(".quantity input").change(function () {
        var number=$(".quantity input").val();
        $(this).attr({"value":number});

    })
});
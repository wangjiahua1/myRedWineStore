$(function () {
    $(".list-color li a").click(function () {
        //console.log($(this).html().split('<span')[0]);
        var color=$(this).html().split('<span')[0];

    });
    $("#list li a").click(function () {
        console.log($(this).html());
        $(this).css()
        var size=$(this).html();
    });
    $(".quantity input").change(function () {
        console.log($(".quantity input").val())
        var number=$(".quantity input").val();

    })
});
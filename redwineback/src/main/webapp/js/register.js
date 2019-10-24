$(function () {
    $("#register-link").click(function () {
        console.log($("#email").val())
        var email=$("#email").val();
        var activecode=parseInt(Math.random()*900000+100000);
        console.log(activecode);
        $.ajax({
                url:"userb?method=sendmail&email="+email+"&activecode="+activecode
        })
    })
});
$(function () {
    if ($.cookie("username")!=undefined) {
        $("#rememberme").attr("checked",true);
    }else{
        $("#rememberme").attr("checked",false);
    }
    if ($("#rememberme:checked").length>0){
        $("#username").val($.cookie("username"));
    }
   $("#rememberme").click(function () {
      if ($("#rememberme:checked").length>0){
          $.cookie("username",$("username").val());
      }else{
          $.removeCookie("username");
      }

   })
});
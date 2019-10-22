$(function () {
   $("#rememberme").click(function () {
      console.log($("#rememberme").prop("checked"));
      if ($("#rememberme").prop("checked")) {
          console.log($.cookie("username")+11111);
      }
   })
});
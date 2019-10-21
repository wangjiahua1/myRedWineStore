$(function () {
    $("#mycolor #a1").click(function () {
        $.getJSON(
            "product?method=findproductbycolor&color=red",
            function (data) {
                console.log(data);
                $.each(data, function (i,v) {
                    
                })
            }

        )
    })
})
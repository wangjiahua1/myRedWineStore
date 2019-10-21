$(function () {
    function showtime() {
        $("#dtime").each(function () {
            var endtime = $("#dtime").prop("title");
            var start_time = new Date().getTime();
            var end_time = new Date(endtime).getTime();
            var time_distance = endtime - start_time;
            var times;
            if (time_distance >= 0) {
                var int_day = Math.floor(time_distance / 86400000);
                time_distance -= int_day * 86400000;
                var int_hour = Math.floor(time_distance / 3600000);
                time_distance -= int_hour * 3600000;
                var int_minute = Math.floor(time_distance / 60000);
                time_distance -= int_minute * 60000;
                var int_second = Math.floor(time_distance / 1000);
                if (int_day < 10) {
                    int_day = "0" + int_day;
                }
                if (int_hour < 10) {
                    int_hour = "0" + int_hour;
                }
                if (int_minute < 10) {
                    int_minute = "0" + int_minute;
                }
                if (int_second < 10) {
                    int_second = "0" + int_second;
                }
                $("#ulist li").each(function (i, v) {
                    console.log($(v).html(int_day));
                    //$(v[i]).html(int_day);
                });
            } else {
                clearInterval(times);
                $("#ulist li").each(function (i, v) {
                    $(v).html(123);
                });
            }
            times = setTimeout("showtime()", 1000);
        })
        showtime();
    }
})
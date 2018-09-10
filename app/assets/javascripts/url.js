$(document).ready(function() {

var urls = location.href
        $.ajax({
            url: "/urls.json",
            type: "POST",
            data: {content: urls},
            dataType: "json" })
            .done(function(data) {
              console.log(data);
            })
            .fail(function() {
              console.log("失敗");
            })
});




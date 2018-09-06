window.onload = function() {

    var urls = location.href

    const action = '/urls.json';
    const method = 'POST';

    urls.setAttribute(action);
    urls.setAttribute(method); // POSTリクエストもしくはGETリクエストを書く。
    urls.style.display = 'none'; // 画面に表示しないことを指定する


}


    // urls.method = 'POST';
    // urls.action = '/urls.json';


// $(document).ready(function() {

// var urls = location.href
//         $.ajax({
//             url: "/urls.json",
//             type: "POST",
//             data: {content: urls},
//             dataType: "json" })
//             .done(function(data) {
//               console.log(data);
//             })
//             .fail(function() {
//               console.log("失敗");
//             })
// });

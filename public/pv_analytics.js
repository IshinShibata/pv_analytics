var xhr = new XMLHttpRequest();
xhr.open("POST", 'http://localhost:3000/accesslogs/create', true);

xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

xhr.onreadystatechange = function() {
    if(this.readyState == XMLHttpRequest.DONE && this.status == 200) {

    }
}
var el = document.querySelector('#data');
var url = location.href
var token = el.dataset.token
xhr.send(`url=${url}&token=${token}`);

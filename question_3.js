function download(filename, number) {
    var element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(number));
    element.setAttribute('download', filename);

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
}
document.getElementById("submit").addEventListener("click", function(){
    var number = document.getElementById("megabytes").value;
    var filename = `${number}.txt`;
    var hex = parseInt(number, 10).toString(16).toUpperCase();
    download(filename, hex);
}, false);

setTimeout(function() {
  console.log("delayed hello world");
}, 5000);


document.write("Ready...");
setTimeout(function() {
  document.write("Set...");
}, 1000);
setTimeout(function() {
  document.write("GO");
}, 2000);


setTimeout(function() {
  document.write("Ready...");
  setTimeout(function() {
    document.write("Set...");
    setTimeout(function() {
      document.write("Go...");
    }, 1000);
  }, 1000);
}, 1000);

setInterval(function() {
  console.log("Hello World");
}, 1000);

x = 0;
setInterval(function() {
  console.log(x++);
}, 1000);


var y = 0;
setInterval(function() {
    console.log(y);
    y += 2;
}, 1000);

var x = 1;
setInterval(function() {
    console.log(x);
    x += 2;
}, 1000);

var timer = setInterval(function() {
    console.log(".");
}, 1000);

setTimeout(function() {
  clearInterval(timer);
}, 10050);


var countDown = 10
var myInterval = setInterval(function() {
  console.log(countDown--);
  if(countDown <=0 ) {
    console.log("Blast off!!!");
    clearInterval(myInterval);
  }
}, 1000)

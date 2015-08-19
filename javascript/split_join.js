var string = "hello";
var newArray = string.split("");
console.log(newArray);

console.log(string.split(""));

var sentence = prompt("Please enter a sentence");
alert("there are " + (sentence.split(" ").length) + "word in this sentence");


var second = [];

for (var i = 0; i <= 100; i++) {
  second.push(i);
}

var number = second.join("");

console.log(number);

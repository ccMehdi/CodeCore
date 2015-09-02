var age = prompt("Please enter your age?");

if( age >= '50') {
  console.log("Old");
} else {
  console.log("young");
}


var forEach = function(array, func) {
  result = [];
  for( var x = 0; x < array.length; x++ ) {
    result.push(func(array[x]));
  }
  return result;
}

var addOne = function(x) {
  return x + 1;
}


forEach([1,2,3], function(x) {
  return x+1;
});
var x = prompt("Please say somethign?");

var sayLater = function(x) {
  setTimeout(function() {
    console.log(x);
  }, 5000);
}

console.log(sayLater(x));

var count = 0
for( var key in window) {
  console.log(key);
  count ++;
}

console.log(count);

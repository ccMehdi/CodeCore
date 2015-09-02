var callWidthFive = function(func) {
  func(5);
}

var square = function(x) {
  console.log(x * x);
}

var increment = function(x) {
  console.log(x + 1);
}

callWidthFive(square);
callWidthFive(increment);

var call = function(x, func, y) {
  var total = x;
  for ( var i = 0; i < y; i++) {
    total = func(total);
  }
  return total;
}

var doubleIt = function(x) {
  return 2 * x;
}

call(5, doubleIt, 10);


var map = function(array, arrayFucn) {
  result = []
  for( var x = 0; x < array.length; x++ ) {
    var currentItem = array[x];
    for( var y = 0; y < arrayFucn.length; y++) {
      currentItem = arrayFucn[y](currentItem);
    }
    result.push(currentItem);
  }
  return result;
}


var addOne = function(x) {
  return x + 1;
}

var addTwo = function(x) {
  return x + 2;
}


map([1,2,3], [addOne, addTwo]);




var map = function(array, func) {
  result = [];
  for( var x = 0; x < array.length; x++ ) {
    result.push(func(array[x]));
  }
  return result;
}


var addOne = function(x) {
  return x + 1;
}


map([1,2,3], function(x) {
  return x+1;
});

map([1,2,3,4,5,6,7,8,9], function(x) {
  return x*x;
});

map(['hello', 'data', 'eat cheese', 'walking'], function(word) {
  return word.length
});

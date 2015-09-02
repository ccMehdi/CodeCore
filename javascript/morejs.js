var isEven = function (x) { return x % 2 == 0;};

var filter = function(arr, func) {
  result = [];
  for( var i = 0; i < arr.length; i++) {
    if(func(arr[i])) {
      result.push(arr[i]);
    }
  }
return result;
}

console.log(filter([1,2,3,4], isEven));

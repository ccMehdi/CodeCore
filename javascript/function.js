// var sum = function(a, b) {
//   return a + b;
// }
//
// console.log(sum(5,6));

// var hello = function(name) {
//   return "Hello, " + name;
// }
//
// console.log(hello("Mehdi"));

// var reverseArray = function(array) {
//   return array.reverse();
// }
//
// console.log(reverseArray([1,2,3,4,5,6]));

var insult = function(name) {
  return name + ", You retard!";
}
console.log(insult("Mehdi"));

var increment = function(number) {
  return parseInt(number) + 1;
}
console.log(increment(2));

var doubleArray = function(array) {
  for (var n = 0; n < array.length; n++) {
    array[n] *= 2;
  }
  return array;
}
console.log(doubleArray([1,2,3,4,5,6]));

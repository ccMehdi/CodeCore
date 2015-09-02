var number1 = parseInt(prompt("Please enter a number from 0 to 100"))
var number2 = parseInt(prompt("Please enter a number from 0 to 100"))

for (var i=1; i <= 100; i++ ) {
  if(((i % number1) == 0) && ((i % number2) == 0)) {
    console.log("FizzBuzz");
  } else if ((i % number1) == 0) {
      console.log("Fizz");
  } else if ((i % number2) == 0) {
    console.log("Buzz");
  } else {
    console.log(i);
  }
}

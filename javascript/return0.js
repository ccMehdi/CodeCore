var number = prompt("Please enter a number from 0 to 100");

var zero = function(number) {
  if(isNaN(number) === false) {
    return 0;
  } else {
    return "This is not a number";
    }
  }

zero(number);

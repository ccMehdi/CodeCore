// var secertNumber = 47

var secertNumber = Math.floor((Math.random() * 10) + 1);
console.log(secertNumber);


while (answer !== secertNumber)  {
  var answer = parseInt(prompt("Please enter a digit between 0 to 100"))
  if(answer != null) {
    if (answer > secertNumber) {
      alert("You number " + answer + " is too high!")
    } else if (answer < secertNumber) {
      alert("You number " + answer + " is too low!")
    } else {
      alert("You number " + answer + " is the correct answer!!!")
    }
  } else {
    break
  }
}

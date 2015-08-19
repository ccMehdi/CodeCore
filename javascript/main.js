/* This is the main javascript file
    we put our javascript pratice code in here */
// document.write("Hello this is a document write");
// console.log("Hello from Main.js");
// alert("you are getting this alert");
// var name = prompt("What is your Name?");
// alert("Hello," + " " + name);

// var yes = confirm("Do you want to enter the secret key?");
//
// // if (yes === true) {
// if (yes) {
//   var secret = prompt("Enter the secret key");
//   if (secret === "opensesame") {
//     alert("The secret number is 714");
//   } else {
//     alert("Wrong password");
//   }
// } else {
//   alert("OK, Goodbye");
// }

// var password = prompt("Please enter your password");
//
// if (password.length > 12) {
//   alert("Password is too long!");
// } else if (password.length < 8) {
//   alert("Password is too short!");
// } else {
//   alert("Just Right!");
// }

// var counter = 0;
//
// while (counter <= 100) {
//   console.log(counter);
//   counter++;
// }

// var counter = 0;
//
// while (counter <= 100) {
//   // if((counter % 2) != 1) {
//   //   console.log(counter);
//   // }
//   // counter++;
//   console.log(counter);
//   counter += 2;
// }
//
//
// var counter = 100;
//
// // while (counter != 0) {
// while (counter > 0) {
//   console.log(counter + " bottles of beer on the wall");
//   console.log(counter + " bottles of beer");
//   counter -= 1; // counter--
//   console.log("take one down, pass it around, " + counter + " bottles of beer on the wall");
// }

// for (var n = 0; n <= 100; n++) {
//   console.log(n);
// }

// for (var n = 100; n > 0; n--) {
//     console.log(n + " bottles of beer on the wall");
//     console.log(n + " bottles of beer");
//     console.log("take one down, pass it around, " + (n - 1) + " bottles of beer on the wall");
//  }

// for (var n = 100; n >= 0; n--) {
//   console.log(n);
// }

var results = 0

for (var n = 0; n <= 99; n++) {
  results += n
}

console.log(results);

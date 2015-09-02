var stop = function() {
  if (!isNaN(this.speed)) {
    var result = "scr";
    for (var x = 0; x < this.speed; x++) {
      result += "e";
    }
    result += "tch!";
    console.log(result);
  } else {
    if (this.speed === "fast") {
      console.log("Screeeeeetch!!!");
    } else if (this.speed === "medium") {
      console.log("RRCH");
    } else if (this.speed === "slow") {
      console.log("sh");
    } else {
      console.log("Yikes, I don't know how fast I'm going!!!");
    }
  }
}


car = {
  brand: "VW",
  model: "Passat",
  Year: "2012",
  speed: "100",
  stop: stop,
}

console.log(car.stop());

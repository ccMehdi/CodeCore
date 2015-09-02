var area = function() {
  return this.width * this.height;
}

var rectangle = {
  width: 100,
  height: 50,
  area: area,
}

console.log(rectangle.area());

var wordLengths = function(sentence) {
  var array = sentence.split(" ");
  var result = {};
  for(var index = 0; index < array.length; index++) {
    result[array[index]] = array[index].length;
  }
  return results;
}

wordLengths("Hello World");

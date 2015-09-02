// promptAndPlay
//
// Prompts the user to enter a song.
// Plays the entered song.
// Repeats when the song is complete.
//
var promptAndPlay = function() {
  var songString = prompt("Welcome to JukeBox!\nEnter a song to play:");
  var song = parseSong(songString);
  playSong(song, 500);
};

// Get things going.
// promptAndPlay();
$(document).ready(function(){
 $("#button").on("click", function() {
    promptAndPlay();
    $("#button").attr("disabled", true);
    $("#button").attr('value', 'Playing...');

   });
 });

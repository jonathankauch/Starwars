// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  var colors = [
    'blue',
    'red',
    'green'
  ];

  var total = 0;

  var totalId = [];

  var alertMe = function(position) {
    var msg = "Position = " + position;
    var say = function() {
      alert(msg);
    }
    return say;
  }

  $('.clickable').on('click', function() {
    var number = Math.random() * 2;
    number = Math.round(number);
    $('#container').append("<div class='block " + colors[number] + "'></div>");
    $("#container").children().last().click(function() {
      alertMe(total)();
    });
    total = total + 1;
  });

  $(document).on('click', '.block', function() {

  });

});

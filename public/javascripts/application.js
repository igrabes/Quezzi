// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  var faye = new Faye.Client('http://quiet-flower-596.heroku.com/faye');  // Change Url here
  faye.subscribe("/messages", function(data) {
    eval(data);
  });
})



// http://localhost:9292/faye
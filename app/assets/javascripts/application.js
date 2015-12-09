// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function toggleOverlay(b){
  b = b || '';
  var overlay = document.getElementById('overlay');
  var specialBox = document.getElementById('specialBox' + b);
  console.log(b);
  overlay.style.opacity = .8;
  if(overlay.style.display == "block"){
    overlay.style.display = "none";
    specialBox.style.display = "none";
  } else {
    overlay.style.display = "block";
    specialBox.style.display = "block";
  }
}


$(function() {

  $('.toggleOverlay').click(function(ev) {
    ev.preventDefault;
    toggleOverlay($(ev.currentTarget).data('b'));
  });

$('#read_more').click(function() { 
  // console.log('hhhhhh');
  alert('You must sign-in to read full review!');
});


// $('#search_form').
// on('ajax:success', function(evt, data, status, xhr){
//   // console.log('success: ' + data);
//   $('#performances_list').html(data);
// }).
// on('ajax:error', function(xhr, status, error ){
//   console.log('failed: ' + error);
// });

});






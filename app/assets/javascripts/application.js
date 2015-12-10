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
// require gmaps/google
//= require jquery
//= require jquery.turbolinks
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

var myMap = myMap || {};

myMap.initialize = function(i) {
  var lats = [0, 55.8663779, 55.860825, 55.9467264, 55.946832, 55.957104, 55.9476394];
  var lngs = [0, -4.256215, -4.28764, -3.1860155, -3.2044301, -3.184618, -3.2048186 ];

  var lat = parseFloat(lats[i]);
  var lng = parseFloat(lngs[i]);

  var mapOptions = {
    center: {lat, lng},
    zoom: 16,
  };
  var map = new google.maps.Map(myMap.mapCanvas, mapOptions);
    // Marker Option
  var marketOptions = {
    position: new google.maps.LatLng(lat,lng)
  };
  var marker = new google.maps.Marker(marketOptions);
  marker.setMap(map);
};


$(function(){
  $('.toggleOverlay').click(function(ev) {
    ev.preventDefault;
    toggleOverlay($(ev.currentTarget).data('b'));
  });

  myMap.mapCanvas = $('#map-canvas')[0];
  //console.log(myMap.mapCanvas.data("venue-id"));
  var i = $('#map-canvas').data("venue-id");

  $('#read_more').click(function() { 
    alert('You must sign-in to read full review!');
  });

  myMap.initialize(i);
});  

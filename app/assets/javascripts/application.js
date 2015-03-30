// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



$(document).ready(function(){

  $('a[href^="#"]').on('click',function (e) {
    e.preventDefault();

    var target = this.hash;

    $('html, body').stop().animate({
      'scrollTop': $(target).offset().top
    }, 1000, 'swing', function () {
      window.location.hash = target;
    });
  });

});

function show_ingredients(){
  	var ingredients = document.getElementById("recipe-ingredients").style.display = "block";
  	var preparation = document.getElementById("recipe-preparation").style.display = "none";
  };

  function show_preparation(){
  	var ingredients = document.getElementById("recipe-ingredients").style.display = "none";
  	var preparation = document.getElementById("recipe-preparation").style.display = "block";
  };
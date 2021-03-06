
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

//= require_tree .
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks

$(function() {
  $('.login-link').on('click', function() {
    $('.modal').css('display', 'none');
    $('#login_modal').css('display', 'block');
  });

  $('.signup-link').on('click', function() {
    $('.modal').css('display', 'none');
    $('#signup_modal').css('display', 'block');
  });

  $('.close').on('click', function(e) {
    $('.modal').css('display', 'none');
  });

  $(window).on('click', function(e) {
    if ($(e.target).attr('class') === 'modal') {
      $('.modal').css('display', 'none');
    }
  });

  $('.search-icon').on('click', function(e) {
    e.preventDefault();
    $('.search').toggleClass('desktop');
  });

  $('.user-icon').on('click', function(e) {
    e.preventDefault();
    $('.user-login').toggleClass('desktop');
  });
});

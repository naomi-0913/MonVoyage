$(document).on('turbolinks:load', function(){
  
  $('.menu-bar').mouseover(function(){
    $('.hidden-menu').toggle('fast');
  });
});
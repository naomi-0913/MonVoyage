$(document).on('turbolinks:load', function(){
  $('.slick-box').slick({
    // autoplay:true, 
    dots:true,
    slidesToShow: 3,
    slidesToScroll: 3
  });
})
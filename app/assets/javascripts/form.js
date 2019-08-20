$(document).on('turbolinks:load', function(){

  function readURL(input){
    if(input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function(e){
        $('#prev_zone').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $('#memory_image').change(function(){
    readURL(this);
  });

});


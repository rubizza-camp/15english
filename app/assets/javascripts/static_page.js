$(document).ready(function() {
  $('.dropdown-title').next().hide();
    $('.dropdown-title').click(function(){
    $(this).next().slideToggle();
    $('.dropdown-title').not(this).next().stop(true,true).slideUp();
  });
});

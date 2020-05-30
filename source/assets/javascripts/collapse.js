$(document).ready(function() {
  $('.click-me').click(function() {
    var height = $(".collapse").height();
    if( height > 0 ) {
      $('.collapse').css('height','0');
    } else {
      var clone = $('.collapse').clone()
      clone.css({'position':'absolute','visibility':'hidden','height':'auto'});
      clone.addClass('slideClone');
      clone.appendTo('body');
        
      var newHeight = $(".slideClone").height();
      $(".slideClone").remove();
      $('.collapse').css('height',newHeight + 'px');
    }
  });
});

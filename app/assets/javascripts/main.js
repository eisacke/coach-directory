$(function(){

  var TCD = TCD || {};

  TCD.Slider = {
    init: function(){
      $('.homepage-banner').slick({
        // autoplay: true,
        autoplaySpeed: 5000,
        dots: true,
        fade: true
      });
    }
  }

  TCD.Slider.init();

})
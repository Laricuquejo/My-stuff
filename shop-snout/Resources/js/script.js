$(document).ready(function() {
  /* For the sticky navigation */
    $('.js--section-features').waypoint(function(direction) {
      if (direction == "down") {
        $('nav').addClass('sticky');
      } else {
        $('nav').removeClass('sticky');
      }
    }, {
      offset: '60px'
    });

  /* Scroll on buttons */
  $('.js--scroll-to-plans').click(function () {
    $('html, body').animate({scrollTop: $('.js--section-plans').offset().top}, 1000);
  });
  $('.js--scroll-to-juguetes').click(function () {
    $('html, body').animate({scrollTop: $('.section-meals').offset().top}, 1000);
  });
  $('.js--scroll-to-calificaciones').click(function () {
    $('html, body').animate({scrollTop: $('.section-testimonials').offset().top}, 1000);
  });
  
  /* Navigation scroll */


});


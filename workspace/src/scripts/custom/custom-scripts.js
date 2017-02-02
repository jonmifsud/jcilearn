(function($) {
    
  'use strict';




  /**
   * -------------------------------------
   * Function for windows height and width      
   * -------------------------------------
   */
  function windowSize( el ) {
    var result = 0;
    if("height" == el) {
        result = window.innerHeight ? window.innerHeight : $(window).height();
    }
    if("width" == el) {
      result = window.innerWidth ? window.innerWidth : $(window).width();
    }

    return result;  
  };




  /**
   * -------------------------------------
   * Function for email address validation         
   * -------------------------------------
   */
  function isValidEmail(emailAddress) {
    var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
    return pattern.test(emailAddress);
  };





  /**
   * -------------------------------------
   * Function for windows height and width      
   * -------------------------------------
   */
  function deviceControll() {
    if( windowSize( 'width' ) < 768 ) {
      $('body').removeClass('desktop').removeClass('tablet').addClass('mobile');
    }
    else if( windowSize( 'width' ) < 992 ){
      $('body').removeClass('mobile').removeClass('desktop').addClass('tablet');
    }
    else {
      $('body').removeClass('mobile').removeClass('tablet').addClass('desktop');
    }
  };







  $(window).resize(function() {

    deviceControll();

  });



  $(document).ready(function() {

    deviceControll();




    /**
     * ----------------
     * Top Fixed Navbar
     * ----------------
     */
    $(document).on('scroll', function() {
      var activeClass = 'navbar-home',
          ActiveID        = '.main-navbar-top',
          scrollPos       = $(this).scrollTop();

      if( scrollPos > $('.header-section-1, .header-section-2').height() ) {
        $( ActiveID ).addClass( activeClass );
      } else {
        $( ActiveID ).removeClass( activeClass );
      }


    });





    /**
     * -----------------
     * NAVIGATION SCROLL
     * -----------------
     */
    $('.btn-scroll a, a.btn-scroll').on('click', function (e) {
      e.preventDefault();

      var target = this.hash,
          scrollOffset = Math.abs( $( TopOffsetId ).outerHeight() ),
          $target = ( $(target).offset() || { "top": NaN }).top;

      $('html, body').stop().animate({
        'scrollTop': $target - scrollOffset
      }, 900, 'swing', function () {
        window.location.hash = target;
      });

    });





    /**
     * -----------------------------
     * TESTIMONIAL SYNC WITH CLIENTS
     * -----------------------------
     */
   var threeSlider = $(".modules-slider .modules-slider-wrapper.three-slides"); // client's message
   threeSlider.owlCarousel({
      items:                3, //10 items above 1000px browser width
      itemsDesktop:         [1200, 3], //5 items between 1000px and 901px
      itemsDesktopSmall:    [992,3], // 3 items betweem 992px and 769px
      itemsTablet:          [768,2], // 3 items between 768 and 601
      itemsTabletSmall:     [480,2], // 2 items in widen mobile device
      itemsMobile:          [320,1], // 1 items in any small mobile device
      // autoPlay :           3000,
      stopOnHover :         true,
      pagination:           true,
      pagination:           false,
      slideSpeed :          900,
      responsiveRefreshRate:100,
      navigation :          true,
      navigationText:       ['',''],
   });



    /**
     * -----------------------------
     * TESTIMONIAL SYNC WITH CLIENTS
     * -----------------------------
     */
   var storySlider = $(".modules-slider .modules-slider-wrapper.two-slides"); // client's message
   storySlider.owlCarousel({
      items:                2, //10 items above 1000px browser width
      itemsDesktop:         [1200, 2], //5 items between 1000px and 901px
      itemsDesktopSmall:    [992,2], // 3 items betweem 992px and 769px
      itemsTablet:          [768,2], // 3 items between 768 and 601
      itemsTabletSmall:     [480,1], // 2 items in widen mobile device
      itemsMobile:          [320,1], // 1 items in any small mobile device
      // autoPlay :           3000,
      stopOnHover :         true,
      pagination:           true,
      pagination:           false,
      slideSpeed :          900,
      responsiveRefreshRate:100,
      navigation :          true,
      navigationText:       ['',''],
   });

    
    


  });


} (jQuery) );


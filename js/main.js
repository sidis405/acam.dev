$(document).ready(function(){
  if (location.hash) {
    setTimeout(function() {
    window.scrollTo(0, 0);
  }, 1);

    var target = $(location.hash);
      // console.log(target);
      if (target.length) {
        var targetOffset = target.offset().top;
        $('html,body').animate({scrollTop: targetOffset -0}, 800);

      }
    }

    var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,
    speed: 2000,
    effect: 'fade',
    fadeEffect: {
      crossFade: true
    },
    autoplay: {
      delay: 2000,
      disableOnInteraction: false
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    // on: {
    //   slideChange: function () {
    //     console.log('change')
    //   },
    //   slideChangeTransitionStart: function () {
    //     console.log('start change')
    //     setTimeout(function() {
    //       $('a.item').css('opacity', 1);
    //     }, 1000);
    //   },
    //   slideChangeTransitionEnd: function () {
    //     console.log('finish change')
    //     setTimeout(function() {
    //       $('a.item').css('opacity', 1);
    //     }, 1000);
    //   },
    // }
  })
});

// Smooth scroll to section top
$( window ).load(function() {
    $('a.scroller[href*=#]').click(function(event) {
        // event.preventDefault();
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var $target = $(this.hash);
        $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');
            if ($target.length) {
            var targetOffset = $target.offset().top;
            $('html,body').animate({scrollTop: targetOffset -0}, 800);
            return false;
            }
        }
    });
});

// Masonry init lol
$( window ).load(function() {
    // doMasonry();
    if($('#activities-container').length) {
      $('#activities-container').layout();
    }
    $.instagramFeed({
      // 'cors_proxy': "https://cors-anywhere.herokuapp.com/https://www.instagram.com/",
      'username': 'acam_studio',
      'container': "#instagram--feed",
      'display_profile': false,
      'display_biography': false,
      'display_gallery': true,
      'get_raw_json': false,
      'callback': null,
      'styling': false,
      'items': 6,
      'items_per_row': 6,
      'margin': 1
    });
});


// function doMasonry() {
//   var container = document.querySelector('#masonry-container');
//     var msnry = new Masonry( container, {
//       // options
//       itemSelector: '.masonry_item',
      
//     });
// }


$(document).ready(function() {
    $('.you').magnificPopup({
      items: {
             src: 'https://www.youtube.com/watch?v=Soh17nSjNac'
         },
      type: 'iframe',
      iframe: {
                markup: '<div class="mfp-iframe-scaler">'+
                        '<div class="mfp-close"></div>'+
                        '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
                        '</div>', 
            patterns: {
                youtube: {
                      index: 'youtube.com/', 
                      id: 'v=', 
                      src: '//www.youtube.com/embed/%id%?autoplay=1' 
                    }
                 },
                 srcAction: 'iframe_src', 
         }
    });
});

$(document).ready(function(){
  $.cookieBar({
    message: "Il sito utilizza cookie di terze parti profilanti e analitici. Cliccando su OK l'utente accetta l’installazione dei cookie. Per maggiori informazioni, anche in ordine alla disattivazione, è possibile consultare l’<a style='margin:0; padding:0' class='cookie-link-2' href='cookie'>Informativa sui Cookie</a>.",
    // policyButton: true,
    // policyText: 'Maggiori informazioni',
    // policyURL: 'policy',
    acceptText: 'Ok',
    fixed: true,
    bottom: true  
  });
});

$(document).on('click', '.gallery-button', function() {

	var id = $(this).data('id');

	$(document).find('#media_gallery_' + id).find('a').eq(0).trigger('click');

});

$('.item, .scrollContact').click(function(e) {

    e.preventDefault();

	var url = $(this).attr('href');
	var navbar_height = parseInt($('.navbar').css('height').replace('px', ''));

    animate_scroll(url, 0, 25);

});

function animate_scroll (element, variable, offset) {
    $('html, body').stop().animate({
        scrollTop: $(element).offset().top - variable - offset
    }, 1800);
}

// Masonry init
// $( window ).load(function() {
//     // var container = document.querySelector('#masonry-container');
//     // var msnry = new Masonry( container, {
//     //   // options
//     //   itemSelector: '.masonry_item',
      
//     // });
    
//     $('#masonry-container').masonry({
//          itemSelector: '.masonry_item',
//         });

// });


$(document).on('click', '.load-more-activities', function(){

    var url = $(document).find('#load-more-activities-url').text();
    getActivities(url);

});

function getActivities (url) {

    var last_activity = $('.attivita').last();
    var navbar_height = 100;

    // console.log(last_activity);

    $.ajax({
        url: url,
        type: 'GET',
        success: function(data) {

            var $layout = $(data.layout);

            // console.log($layout);

            $('#activities-container').layout('end');
            $('#activities-container').append( $layout );
            $('#activities-container').layout();
            // $(document).find('#activities-container').layout('reload');
            // $('#masonry-container').masonry( 'appended', $layout );
            setTimeout(function(){
              // doMasonry();
            }, 100)


            // $('#masonry-container').masonry('destroy');
            // redoMasonry(data.layout);

            // $('.activities-container').append(layout);


            // var $layout = $(data.layout);
            
            // $grid.append( $layout ).masonry( 'appended', $layout );

            $(document).find('#load-more-activities-url').text(data.url);

            var next_activity = $(last_activity).next();


            // animate_scroll(next_activity, navbar_height, 25);

            if(data.more == false)
            {
                $('.load-more-activities').hide();
            }

            return false;
        },
        error: function(XMLHttpRequest, textstatus, error) {

            return false;

        }
    });

    return false;


}


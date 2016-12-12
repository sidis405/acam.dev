// Smooth scroll to section top
// $( window ).load(function() {
//     $('a.scrollto[href*=#]').click(function() {
//         console.log('foo');
//         if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
//         && location.hostname == this.hostname) {
//         var $target = $(this.hash);
//         $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');
//         if ($target.length) {
//         var targetOffset = $target.offset().top;
//         $('html,body').animate({scrollTop: targetOffset -70}, 1000);
//         return false;}
//         }
//     });
// });

// Masonry init lol
$( window ).load(function() {
    var container = document.querySelector('#masonry-container');
    var msnry = new Masonry( container, {
      // options
      itemSelector: '.masonry_item',
      
    });
});

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
    message: "ACAM utilizza cookies di terze parti. Continuando la navigazione ne accetti l'utilizzo. ",
    policyButton: true,
    policyText: 'Maggiori informazioni',
    policyURL: 'policy',
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
    }, 600);
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
            $('#masonry-container').append( $layout ).masonry( 'appended', $layout );

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


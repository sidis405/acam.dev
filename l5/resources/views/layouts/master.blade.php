<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>ACAM Provides - Art, Creativity, Architecture</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="beni culturali, beni vincolati, vincolo, arte, creatività, architettura, soprintendenza, catasto, pubblica amministrazione, qualità architettonica, consulenza, servizi, coordinamento, consulenza tecnica, consulenza legale, consulenza fiscale, consulenza economica, marketing e comunicazione, management, pianificazione, buona gestione, recupero, conservazione, valorizzazione, cultura, team, lavoro di squadra, consulenza a 360°, assistenza a tutto tondo, servizi integrati, proprietà intellettuale, diritto d’autore, arte creatività architettura">
        <!-- Bootstrap -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <!-- HTML5 Boilerplate -->
        <link rel="stylesheet" href="/css/boilerplate.css">
        <link rel="stylesheet" href="/css/jquery.cookiebar.css">
        <!-- Main Styling -->
        <link rel="stylesheet" href="/css/style.css">
        <!-- Responsive Styling -->
        <link rel="stylesheet" href="/css/responsive.css">
        <!-- Font Awesome -->
        <!-- <link rel="stylesheet" href="/css/font-awesome.css"> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Modernizr -->
        <script src="/js/vendor/modernizr-2.7.1.min.js"></script>
        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">

        <style>
            #instagram--feed img {
                width: 16.66%;
                float: left;
            }
            .single-column .b-by-b-item {
              width: 100%!important;
            }
            @media (min-width: 0px) and (max-width: 480px) {
              #activities-container .b-by-b-item {
                width: 100%;
              }
            }
            @media (min-width: 481px) and (max-width: 1024px) {
              #activities-container .b-by-b-item {
                width: 50%;
              }
            }
            @media (min-width: 1025px) {
              #activities-container .b-by-b-item {
                width: 33.33%;
              }
            }
        </style>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-106080004-16"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'UA-106080004-16', { 'anonymize_ip': true });
      </script>


    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <div id="header">
            @include('layouts.navigation')
        </div>

        <div id="main-wrap">

            @yield('content')

        </div> <!-- end main-wrap -->

        <div id="footer">

            @include('layouts.footer')

        </div> <!-- end footer -->

        <!-- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/js/vendor/jquery-1.11.0.min.js"><\/script>')</script>

        <!-- Scripts -->
        <script src="/js/vendor/bootstrap.min.js"></script>
        <script src="/js/vendor/masonry.min.js"></script>
        <script src="/js/plugins.js"></script>
        <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
        <script src="/js/vendor/jquery.magnific-popup.min.js"></script>
        <script src="/js/jquery.instagramFeed.min.js"></script>
        <script src="/js/jquery.cookiebar.js"></script>
        <script src="/js/main.js"></script>
        <script src="/js/vendor/brick-by-brick.min.js"></script>

        <script>


                            if(jQuery.cookieBar('cookies')){
                              !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
                            }
        </script>
    </body>
</html>

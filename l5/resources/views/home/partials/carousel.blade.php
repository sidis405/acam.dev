<!-- Slider main container -->
<div class="swiper-container">
    <!-- Additional required wrapper -->
    <div class="swiper-wrapper">
        <!-- Slides -->
        <?php $first = true; ?>
        @foreach ($featured as $item) 
        <div class="swiper-slide">
          <a href="#{{$item->slug}}" class="item scrollto <?php if ($first) { echo 'active'; } $first=false; ?>" style="background: url({{$item->present()->slideImageUrl()}}) no-repeat center center;">

          </a>
        </div>

        @endforeach  
    </div>
    <!-- If we need pagination -->
    <!--<div class="swiper-pagination"></div>-->

    <!-- If we need navigation buttons -->
    <!--<div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>-->
</div>
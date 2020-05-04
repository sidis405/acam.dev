<!--<div id="carousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    {!! carouselIndicators($featured) !!}
  </ol>
  <div class="carousel-inner">      

    <?php $first = true; ?>

    @foreach ($featured as $item) 


    <a href="#{{$item->slug}}" class="item scrollto <?php if ($first) { echo 'active'; } $first=false; ?>" style="background: url({{$item->present()->slideImageUrl()}}) no-repeat center center;">

    </a>  


    @endforeach  



  </div>
  <a class="left carousel-control" href="#carousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>-->
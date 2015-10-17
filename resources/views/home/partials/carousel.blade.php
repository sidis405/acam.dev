<div id="carousel" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    {!! carouselIndicators($featured) !!}
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">      
  
                  <?php $first = true; ?>
                       
                       @foreach ($featured as $item) 


                    <div class="item <?php if ($first) { echo 'active'; } $first=false; ?>">
                      <a class="scrollto" href="#{{$item->slug}}"><img src="{{$item->present()->slideImageUrl()}}" alt=""></a>
                    </div>  

                  @endforeach  



                  </div>

                  <!-- Controls -->
                  <a class="left carousel-control" href="#carousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                  </a>
                  <a class="right carousel-control" href="#carousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                  </a>
                </div>
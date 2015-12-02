                    @foreach($activities as $activity)
                        <div id="{{$activity->slug}}" class="col-md-4 col-sm-6 masonry_item attivita">
                            <a href="/attivita/{{$activity->slug}}" class="thumbnail {{$activity->type->class}}">
                                <img src="{{$activity->present()->featuredImageUrl()}}" alt="">

                                <h3>{{$activity->title}}</h3>
                                <p>{{$activity->subtitle}}</p>
                            </a>
                        </div>
                    @endforeach
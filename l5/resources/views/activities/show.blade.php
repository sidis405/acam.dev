@extends('layouts.master')

@section('content')

            <div class="container">


            <br>    
            <br>    

                
                <div id="carousel" class="carousel slide" data-ride="carousel">
        

                   @if($activity->featured_image_id > 0)
                  <div class="carousel-inner">
                    <div class="item active" style="background: url({{$activity->present()->slideImageUrl()}}) no-repeat center center;">

                    </div>                    
                  </div>
                  @endif

                </div>

                <div class="project-info">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="project-desc">
                            <h1>{{$activity->title}}</h1>
                            <br>
                                <p>
                                    {{$activity->subtitle}}
                                    <br><br>
                                    {!!  $activity->description !!}

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @if(count($activity->attachments))

                        <div class="col-md-12">
                            <div class="pdf-links">
                            <h3>Download</h3>
                            <ul>
                                @foreach($activity->attachments as $attachment)                               
                                <li><i class="fa fa-download"></i> <a href="{{$attachment->path}}" target="_blank">{{$attachment->name}}</a></li>                             
                                @endforeach
                            </ul>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>

@stop
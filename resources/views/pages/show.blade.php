	@extends('layouts.master')

@section('content')

<div class="container">


{!!presentBreadcrumbs(['home'])!!}

<div class="clearfix"></div>
                
                <h1><span class="{{$page->class}}">{{$page->title}}</span></h1>

                @if($page->featured_image_id > 0)
                <img class="img-responsive" src="{{$page->present()->featuredImageUrl()}}" alt="">   
                @endif

                {!! $page->content !!}

            </div>

@stop
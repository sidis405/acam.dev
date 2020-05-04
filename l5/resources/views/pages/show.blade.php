@extends('layouts.master')

@section('content')

<div class="container page">

{!!presentBreadcrumbs(['home'])!!}

<div class="clearfix"></div>

                <h1><span class="{{$page->class}}">{{$page->title}}</span></h1>

                @if($page->slug === 'heritage')
                    <div class="row">
                        <div class="col-md-6">
                            {!! $page->content !!}
                        </div>
                        <div class="col-md-6">
                            @if($page->featured_image_id > 0)
                                <div id="sidebar" class="sidebar">
                                    <div class="sidebar__inner">
                                        <img class="img-responsive" src="{{$page->present()->featuredImageUrl()}}" alt="">
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                @else
                    @if($page->featured_image_id > 0)
                        <img class="img-responsive" src="{{$page->present()->featuredImageUrl()}}" alt="">
                    @endif
                    {!! $page->content !!}
                @endif

            </div>

@stop

@section('footer_scripts')

@if($page->slug === 'heritage')
    <script type="text/javascript" src="/js/jquery.sticky-sidebar.min.js"></script>
    <script type="text/javascript">
        new StickySidebar('#sidebar', {
               containerSelector: '.row',
               innerWrapperSelector: '.sidebar__inner',
               topSpacing: 20,
               bottomSpacing: 20
           });
    </script>
@endif

@stop

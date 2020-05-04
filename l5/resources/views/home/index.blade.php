@extends('layouts.master')

@section('content')

@include('home.partials.carousel')
<div class="container">

<br>
<br>
                
                
                <div class="shoutouts" id="portfolio">
                    {!! $texts['testo_1']['value'] !!}
                    <!-- <h1>Management dell' Arte, della Creatività e dell' Architettura</h1>
                    <p>Servizi a 360° per non farti perdere la bussola.</p> -->
                </div>

                <div class="home-portfolio" id="brick-container">
                    
                    @include('home.partials.activities')
                </div>

                    <div id="load-more-activities-url" style="display:none">{{formatLoadMoreUrl($activities->nextPageUrl())}}</div>

                    @if($activities->hasMorePages())
                    <span style="font-size: 18px" class="load-more-activities load-more-section">...</span>
                    @endif

            </div>

@stop
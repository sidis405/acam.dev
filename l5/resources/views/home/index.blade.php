@extends('layouts.master')

@section('content')

<div class="container">

<br>
<br>
                
                @include('home.partials.carousel')
                
                <div class="shoutouts" id="ancora">
                    {!! $texts['testo_1']['value'] !!}
                    <!-- <h1>Management dell' Arte, della Creatività e dell' Architettura</h1>
                    <p>Servizi a 360° per non farti perdere la bussola.</p> -->
                </div>

                <div class="home-portfolio" id="masonry-container">
                    
                    @include('home.partials.activities')
                </div>

                    <div id="load-more-activities-url" style="display:none">{{formatLoadMoreUrl($activities->nextPageUrl())}}</div>

                    @if($activities->hasMorePages())
                    <span class="load-more-activities load-more-section">Visualizza di più</span>
                    @endif

            </div>

@stop
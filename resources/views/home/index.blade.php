@extends('layouts.master')

@section('content')

<div class="container">
                
                @include('home.partials.carousel')
                
                <div class="shoutouts">
                    {!! $texts['testo_1']['value'] !!}
                    <!-- <h1>Management dell' Arte, della Creatività e dell' Architettura</h1>
                    <p>Servizi a 360° per non farti perdere la bussola.</p> -->
                </div>

                <div class="home-portfolio" id="masonry-container">
                    
                    @include('home.partials.activities')
                </div> <!-- end home-portfolio -->

            </div>

@stop
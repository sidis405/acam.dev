@extends('layouts.master')

@section('content')

            <div class="container">

            <br>

            <h1>{{$activity->title}}</h1>

            <br>
                
                <div id="carousel" class="carousel slide" data-ride="carousel">
        

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">
                    <div class="item active">
                      <img src="{{$activity->present()->slideImageUrl()}}" alt="">
                    </div>                    
                  </div>

                </div>

                <div class="project-info">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="project-desc">
                            <h3></h3>
                                <p>
                                    {{$activity->subtitle}}
                                    <br><br>
                                    {!!  $activity->description !!}

                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="pdf-links">
                            <h3>Download Documenti</h3>
                            <ul>                                
                                <li><i class="fa fa-download"></i> <a href="download/project-10/gazzetta-amministrativa-n2-2014.pdf" target="_blank">Gazzetta Amministrativa n°2 del 2014</a></li>
                                <li><i class="fa fa-download"></i> <a href="download/project-10/mibact-capolavori-itineranti.pdf" target="_blank">MIBACT, Capolavori Itineranti</a></li>
                                <li><i class="fa fa-download"></i> <a href="http://www.bollettinodiarcheologiaonline.beniculturali.it/documenti/10/BANDINI.pdf" target="_blank">MIBACT, Capolavori Itineranti - Link 2</a></li>
                                <li><i class="fa fa-download"></i> <a href="download/project-10/direzione-generale-musei.pdf" target="_blank">MIBACT, Direzione Generale Musei</a></li>
                                <li><i class="fa fa-download"></i> <a href="download/project-10/intervento-presidente-adsi.pdf" target="_blank">Intervento presidente ADSI</a></li>                                
                            </ul>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="pdf-links">
                            <h3>Video</h3>
                            <ul>                                
                                <li>
                                    <a class="you" href="https://www.youtube.com/watch?v=Soh17nSjNac">Pietro Ruffo per GNAM</a>
                                </li>                                
                            </ul>
                            </div>
                        </div>
                    </div>
                </div>

@stop
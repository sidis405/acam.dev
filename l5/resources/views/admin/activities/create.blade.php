@extends('admin.layouts.master')

@section('header_scripts')

<link rel="stylesheet" type="text/css" href="/css/summernote.css">

@stop

@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Inserisci Attività'))

<p>In questa sezione puoi creare una nuova 'Attività'</p>
@include('admin.layouts.errors')
@include('flash::message')

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Per favore compilare il form sottostante</h3>
    </div>
    <div class="panel-body">
        
       <form action="/admin/attivita" method="POST">
            {{csrf_field()}}
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label>Titolo</label>
                    <input class="form-control" name="title" placeholder="Titolo attività" >
                </div>
                <div class="form-group">
                    <label>Intro</label>
                    <input class="form-control" name="subtitle" placeholder="Sottotitolo attività" >
                </div>
                
            </div>
            
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label>Descrizione</label>
                    <textarea class="form-control" name="description" id="activity_description" rows="5" placeholder="Descrivi attività"></textarea>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            
            <div class="col-lg-8 col-lg-offset-4">
                
                <button type="submit" class="btn btn-success">Salva</button>
                <button type="reset" class="btn btn-warning">Abbandona</button>
            </div>
        </div>
        </form>
    </div>
</div>
@stop


@section('footer_scripts')

<script type="text/javascript" src="/js/summernote.js"></script>
<script type="text/javascript" src="/js/summernote-bindings.js"></script>

@stop
@extends('admin.layouts.master')

@section('header_scripts')

<meta name="_token" content="{{ csrf_token() }}" />

<link rel="stylesheet" type="text/css" href="/css/summernote.css">

@stop


@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Modifica Titoli'))

<p>In questa sezione puoi modificare titoli</p>
@include('admin.layouts.errors')
@include('flash::message')

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Per favore compilare il form sottostante</h3>
    </div>
    <div class="panel-body">
        
        <form action="/admin/titoli" method="POST">
            {{csrf_field()}}
        <div class="row">
            @foreach($types as $type)
                <div class="col-lg-12">
                    <div class="form-group">
                        <input type="text" class="form-control" name="types[{{$type->id}}]" value="{{$type->name}}">
                    </div>
                </div>
            @endforeach
        </div>
        
        
        <div class="row">
            
            <div class="col-lg-7 col-lg-offset-5">
                
                <button type="submit" class="btn btn-success">Salva</button>
                <button type="reset" class="btn btn-warning">Abbandona</button>
            </div>
        </form>
    </div>
</div>
@stop

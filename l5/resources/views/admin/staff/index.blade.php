@extends('admin.layouts.master')

@section('header_scripts')

<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">
<meta name="_token" content="{{ csrf_token() }}" />

@stop

@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Lista Profili Network'))

<p>In questa sezione si possono vedere i 'Profili Network' presenti sul sito ed inserirne nuovi</p>
@include('admin.layouts.errors')
@include('flash::message')
<div class="panel panel-default">
    <div class="panel-body">
        <a href="/admin/staff/crea"><i class="fa fa-plus-square-o"></i>&nbsp; Inserisci nuovo profilo</a>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-body">
        
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                
                <thead>

                    <td>&nbsp;</td>
                    <td>Nome</td>
                    <td>Intro</td>
                    <td>Pagina</td>
                </thead>
                <tbody class="sortable" data-entityname="staff">
                    @foreach($staff as $item)
                    <tr data-itemId="{{{ $item->id }}}">
                        

                        
                        <td><a href="/admin/staff/{{$item['id']}}/modifica"><img class="img-responsive" style="width:40px" src="{{$item->present()->featuredImageUrl()}}" alt=""></a></td>
                        <td><a href="/admin/staff/{{$item['id']}}/modifica">{{$item['name']}}</a></td>
                        <td>{{$item['intro']}}</td>
                        <td>{{$item['pageType']['name']}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop

@section('footer_scripts')

<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/sortable-bindings.js"></script>

@stop

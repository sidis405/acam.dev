@extends('admin.layouts.master')
@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Lista Pagine'))

<p>In questa sezione si possono vedere le pagina editabili del sito</p>
@include('admin.layouts.errors')
@include('flash::message')

<div class="panel panel-default">
    <div class="panel-body">
        
        <div class="table-responsive">
            <table class="table table-striped">
                
                <thead>

                    <td>Pagine</td>
                </thead>
                <tbody>
                    @foreach($pages as $item)
                    <tr>
                        
                        <td><a href="/admin/pagine/{{$item['id']}}/modifica">{{$item['name']}}</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop
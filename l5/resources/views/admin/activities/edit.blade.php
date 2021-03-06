@extends('admin.layouts.master')

@section('header_scripts')

<meta name="_token" content="{{ csrf_token() }}" />

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.css">
<link rel="stylesheet" type="text/css" href="/css/image-picker.css">
<link rel="stylesheet" type="text/css" href="/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="/css/summernote.css">


@stop


@section('content')
@include('admin.layouts.title-and-toggle', array('title' => 'Modifica Attività'))
<p>In questa sezione puoi modificare una 'Attività'</p>
@include('admin.layouts.errors')
@include('flash::message')
<div class="panel panel-default">
    <div class="panel-body">
        <a href="/admin/attivita/crea"><i class="fa fa-plus-square-o"></i>&nbsp; Inserisci nuova attività</a>
    </div>
</div>

    @include('admin.activities.partials.edit-section')
    
    @include('admin.gallery.gallery-section', array('model' => $activity, 'model_name' => 'activities', 'model_route' => 'attivita'))
    
    @include('admin.activities.partials.attachments-partial')

    @include('admin.activities.partials.delete-partial')
    
@stop

@section('footer_scripts')

<script type="text/javascript" src="/js/summernote.js"></script>
<script type="text/javascript" src="/js/summernote-bindings.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.js"></script>
<script type="text/javascript" src="/js/dropzone-bindings.js"></script>
<script type="text/javascript" src="/js/image-picker.min.js"></script>
<script type="text/javascript" src="/js/jquery.magnific-popup.min.js"></script>

<script type="text/javascript">
    
    $("#featured_image_id_field").imagepicker({limit: 1});
    $("#cover_image_id_field").imagepicker({limit: 1});

    function doMagnificPopup () {
    $('.gallery-item').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      }
    });
}

doMagnificPopup();



</script>




@stop
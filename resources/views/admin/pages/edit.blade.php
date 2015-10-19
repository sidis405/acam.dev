@extends('admin.layouts.master')

@section('header_scripts')

<meta name="_token" content="{{ csrf_token() }}" />

<link rel="stylesheet" type="text/css" href="/css/summernote.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.css">
<link rel="stylesheet" type="text/css" href="/css/image-picker.css">
<link rel="stylesheet" type="text/css" href="/css/magnific-popup.css">

@stop

@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Modifica Pagina'))

<p>In questa sezione puoi modificare testi sito</p>
@include('admin.layouts.errors')
@include('flash::message')

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Per favore compilare il form sottostante</h3>
    </div>
    <div class="panel-body">
        
        <form action="/admin/pagine/{{$page->id}}" method="POST">
            <input type="hidden" name="page_id" value="{{$page->id}}">
            <input type="hidden" id="featured_image_persisted" value="{{ $page->featured_image_id }}">
            <input type="hidden" name="featured_image_id" id="featured_image_id" value="{{ $page->featured_image_id }}">
            {{csrf_field()}}


        <div class="row">
            <div class="col-lg-9">
                <div class="form-group">
                        <label>Titolo</label>
                        <input class="form-control" name="title" value="{{ old('title', $page->title) }}" placeholder="Titolo pagina" >
                </div>
            </div>
            <div class="col-lg-3">
                 <div class="form-group">
                        <div id="selected_image_preview">
                            <label for="">Foto (1140 x 350px)</label>
                                @if($page->featured_image_id > 0)
                                 <img style="width:50px" src="/uploads/{{$page->featuredImage->id}}/{{$page->featuredImage->file_name}}?w=50&h=50&fit=crop">   
                                    
                                @else 
                                    <a class="btn btn-xs btn-primary">Scegli copertina</a>
                                

                                @endif
                        </div>
                    </div>
            </div>
            </div><div class="col-lg-12">
                <div class="form-group">
                    <label>{{$page->name}}</label>
                    <textarea class="form-control" name="content" rows="5" id="text_body" placeholder="Testo">{{old('value', $page->content)}}</textarea>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            
            <div class="col-lg-7 col-lg-offset-5">
                
                <button type="submit" class="btn btn-success">Salva</button>
                <button type="reset" class="btn btn-warning">Abbandona</button>
            </div>
        </form>
    </div>
</div>

@include('admin.gallery.gallery-section', array('model' => $page, 'model_name' => 'pages', 'model_route' => 'pagine'))

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
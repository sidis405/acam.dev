@extends('admin.layouts.master')

@section('header_scripts')

<meta name="_token" content="{{ csrf_token() }}" />

<link rel="stylesheet" type="text/css" href="/css/summernote.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.css">
<link rel="stylesheet" type="text/css" href="/css/image-picker.css">
<link rel="stylesheet" type="text/css" href="/css/magnific-popup.css">

@stop



@section('content')

@include('admin.layouts.title-and-toggle', array('title' => 'Modifica Profilo Staff'))

<p>In questa sezione puoi creare una nuova 'Profilo Network'</p>
@include('admin.layouts.errors')
@include('flash::message')
<div class="panel panel-default">
    <div class="panel-body">
        <a href="/admin/staff/crea"><i class="fa fa-plus-square-o"></i>&nbsp; Inserisci nuovo profilo</a>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Per favore compilare il form sottostante</h3>
    </div>
    <div class="panel-body">
        
        <form action="/admin/staff/{{$staff->id}}" method="POST">
            <input type="hidden" name="staff_id" value="{{$staff->id}}">
            <input type="hidden" id="featured_image_persisted" value="{{ $staff->featured_image_id }}">
            <input type="hidden" name="featured_image_id" id="featured_image_id" value="{{ $staff->featured_image_id }}">
            {{csrf_field()}}
        <div class="row">
            <div class="col-lg-9">
                <div class="form-group">
                    <label>Nome Completo</label>
                    <input class="form-control" name="name" placeholder="Nome Completo" value="{{old('name', $staff->name)}}">
                </div>
            </div>
            <div class="col-lg-3">
                 <div class="form-group">
                        <div id="selected_image_preview">
                            <label for="">Foto (260 x 212px)</label>
                                @if($staff->featured_image_id > 0)
                                 <img style="width:50px" src="/uploads/{{$staff->featuredImage->id}}/{{$staff->featuredImage->file_name}}?w=50&h=50&fit=crop">   
                                    
                                @else 
                                    <a class="btn btn-xs btn-primary">Scegli copertina</a>
                                

                                @endif
                        </div>
                    </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                    <label>Website</label>
                    <input class="form-control" name="website" placeholder="Sito internet (es. http://sito.com)" value="{{old('website', $staff->website)}}" >
                </div>
                <div class="form-group">
                 
                        <label>Pagina Network</label>
                        <select name="page_id">
                            @foreach($pageTypes as $pageType)
                            <option value="{{$pageType['id']}}" @if($pageType->id == $staff->page_id) selected @endif>{{$pageType['name']}}</option>
                            @endforeach
                        </select>
                    </div>
                <div class="form-group">
                 
                        <label>Tipo</label>
                        <select name="type_id">
                            @foreach($types as $type)
                            <option value="{{$type['id']}}" @if($type->id == $staff->type_id) selected @endif>{{$type['name']}}</option>
                            @endforeach
                        </select>
                    </div>

                <div class="form-group">
                    <label>Intro</label>
                    <textarea class="form-control" name="intro" rows="5" placeholder="Intro" required>{{old('intro', $staff->intro)}}</textarea>
                </div>
                
            </div>
            
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <label>Descrizione</label>
                    <textarea class="form-control" name="description" id="staff_description" rows="5" placeholder="Descrivi attività" required>{{old('description', $staff->description)}}</textarea>
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


</div>

@include('admin.gallery.gallery-section', array('model' => $staff, 'model_name' => 'staff', 'model_route' => 'staff'))


@include('admin.staff.partials.delete-partial')


@stop

@section('footer_scripts')

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.js"></script>
<script type="text/javascript" src="/js/dropzone-bindings.js"></script>
<script type="text/javascript" src="/js/summernote.js"></script>
<script type="text/javascript" src="/js/summernote-bindings.js"></script>
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
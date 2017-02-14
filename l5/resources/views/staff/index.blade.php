@extends('layouts.master')
@section('content')
    

    <div class="container network">

            {!!presentBreadcrumbs(['home'])!!}



                <?php $total_types = count($all_staff); $i=1; ?>

                @foreach($all_staff as $name => $data)

                <h1>{{$name}}</h1>

                    <div class="row fivecolumns">
                    

                    @foreach($data as $staff)
                          

                    <div class="col-md-2 col-sm-2 col-lg-2">
                        <img class="img-responsive" src="{{$staff->present()->featuredImageUrl()}}" alt="">   
                        <h4>{{$staff->name}}</h4>
                        <p>{{$staff->intro}}<br>
                        <p style="text-align: justify;">
                            {!! $staff->description !!}
                        </p>
                        @if(strlen($staff->website) > 0)
                            <a href="{{$staff->website}}" target="_blank">{{str_replace(['http://', 'https://'], '', $staff->website)}}</a></p>
                        @endif
                    </div>

                    @endforeach
                    </div>
        
                    <?php if($total_types !== $i) { ?>

                    <div class="separator hidden-xs"></div>

                    <?php $i++; } ?>

                @endforeach

</div>
@stop

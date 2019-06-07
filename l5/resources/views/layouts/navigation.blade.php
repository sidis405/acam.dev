<div class="container navbar">
    <!-- <a href="http://areatecnica.acamprovides.com"><h1 id="logo-areea">Areea</h1></a> -->
    <a href="/"><h1 id="logo">ACAM</h1></a>
    <ul class="navigation">
        <li @if(\Session::get('current_page') =='home') class="current" @endif><a href="/">Home</a></li>
        <li @if(\Session::get('current_page') =='mission') class="current" @endif><a href="/mission"><span style="text-transform: lowercase;">Chi</span> Siamo</a></li>

        <li @if(\Session::get('current_page') =='rete') class="current" @endif><a href="/rete"><span style="text-transform: lowercase;">la</span> Rete</a></li>
      {{--   <li class="dropdown
            @if(\Session::get('current_page') == 'network') current @endif ">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="text-transform: lowercase;">la</span> Rete <span class="caret"></span></a>
            <ul class="dropdown-menu">
                @foreach($pageTypes ?? [] as $pageType)
                <li><a href="{{$pageType->slug}}"><span>{{$pageType->name}}</span></a></li>
                @endforeach
            </ul>
        </li> --}}
        <li class="dropdown
            @if(in_array(\Session::get('current_page') , array_pluck($types ?? [], 'slug'))) current @endif ">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span style="text-transform: lowercase;">i</span> Servizi <span class="caret"></span></a>
            <ul class="dropdown-menu">
                @foreach($types ?? [] as $type)
                <li><a href="/{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
                @endforeach
            </ul>
        </li>

        <li @if(\Session::get('current_page') =='beni') class="current" @endif><a href="/beni"><span style="text-transform: lowercase;">i</span> Beni</a></li>

        <!-- <li><a href="/#portfolio" class="scroller">Portfolio</a></li> -->
        {{-- <li>
            <a href="https://www.instagram.com/acam_studio/" target="_blank" style="font-style: italic; position: relative;">
                <span style="font-size: 2.8rem; position: absolute; top:8px; left: 0;">#</span>
                acamstudio
            </a>
        </li> --}}
        <li><a class="scrollto scrollContact" href="#footer-contact">Contatti</a></li>
        <li>
            <a href="https://www.instagram.com/acam_studio/" target="_blank" style="font-style: italic; position: relative;">
                <i class="fa fa-instagram"></i>
            </a>
        </li>
    </ul>
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>


    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="navigation-mobile">
            <!-- <li class="current"><a href="/">Acam</a></li> -->
            <li><a href="/">Home</a></li>
            <li><a href="/mission"><span style="text-transform: lowercase;">Chi</span> Siamo</a></li>
            <li><a href="/rete"><span style="text-transform: lowercase;">la</span> Rete</a></li>
            <li><a href="#" style="border: 0;"><b><span style="text-transform: lowercase;">i</span> Servizi</b></a></li>
            @foreach($types ?? [] as $type)
            <li><a style="border: 0;" href="/{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
            @endforeach
            <li><a href="/beni" style="border-top: 1px solid #ebebeb" ><span style="text-transform: lowercase;">i</span> Beni</a></li>
            <!-- <li><a style="border-top: 1px solid #ebebeb" href="/#portfolio" class="scroller">Portfolio</a></li> -->
            <li><a style="border-top: 1px solid #ebebeb" href="https://www.instagram.com/acam_studio/" target="_blank">#acamstudio</a></li>


            <li><a class="scrollto" href="#footer-contact">Contatti</a></li>
        </ul>
    </div>
</div>

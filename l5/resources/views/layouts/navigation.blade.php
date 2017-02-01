<div class="container navbar">
    <!-- <a href="http://areatecnica.acamprovides.com"><h1 id="logo-areea">Areea</h1></a> -->
    <a href="/"><h1 id="logo">ACAM</h1></a>
    <ul class="navigation">
        <li @if(\Session::get('current_page') =='home') class="current" @endif><a href="/">Acam</a></li>
        <li @if(\Session::get('current_page') =='mission') class="current" @endif><a href="/mission">Chi Siamo</a></li>
        <li class="dropdown
            @if(in_array(\Session::get('current_page') , array_pluck($types, 'slug'))) current @endif ">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Servizi <span class="caret"></span></a>
            <ul class="dropdown-menu">
                @foreach($types as $type)
                <li><a href="{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
                @endforeach
            </ul>
        </li>
        <li><a href="/#portfolio" class="scroller">Portfolio</a></li>
        <li @if(\Session::get('current_page') =='network') class="current" @endif><a href="/network">Network</a></li>
        
        <li><a class="scrollto scrollContact" href="#footer-contact">Contatti</a></li>
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
            <li class="current"><a href="/">Acam</a></li>
            <li><a href="/mission">Chi siamo</a></li>
            <li><a href="#">Servizi</a></li>
            @foreach($types as $type)
            <li><a href="{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
            @endforeach
            <li><a href="/#portfolio" class="scroller">Portfolio</a></li>
            <li><a href="/network">Network</a></li>
            
            
            <li><a class="scrollto" href="#footer-contact">Contatti</a></li>
        </ul>
    </div>
</div>
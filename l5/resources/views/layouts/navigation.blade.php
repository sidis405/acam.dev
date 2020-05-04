<div class="container navbar">
    <!-- <a href="http://areatecnica.acamprovides.com"><h1 id="logo-areea">Areea</h1></a> -->
    <a href="/"><h1 id="logo">ACAM</h1></a>
    <ul class="navigation">
        <li class="dropdown
            @if(in_array(\Session::get('current_page') , array_pluck($types ?? [], 'slug'))) current @endif ">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">PROJECTS <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="/#portfolio" class="scroller">Main works</a>
                </li>
                <li>
                    <a href="/heritage">Heritage</a>
                </li>
            </ul>
        </li>
        <li @if(\Session::get('current_page') =='practice') class="current" @endif><a href="/practice">PRACTICE</a></li>
        <li class="dropdown
            @if(in_array(\Session::get('current_page') , array_pluck($types ?? [], 'slug'))) current @endif ">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">EXPERTISE <span class="caret"></span></a>
            <ul class="dropdown-menu">
                @foreach($types ?? [] as $type)
                    <li><a href="/{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
                @endforeach
            </ul>
        </li>
        <li @if(\Session::get('current_page') =='people') class="current" @endif><a href="/people">PEOPLE</a></li>
        <li><a class="scrollto scrollContact" href="#footer-contact">CONTACT US</a></li>
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
            <li><a href="#" style="border: 0;"><b>PROJECTS</b></a></li>
            <li><a style="border: 0;" href="/#portfolio" class="scroller">Main works</a></li>
            <li><a style="border: 0;" href="/heritage">Heritage</a></li>
            <li><a style="border-top: 1px solid #ebebeb" href="/practice"><b>PRACTICE</b></a></li>
            <li><a href="#" style="border: 0;"><b>EXPERTISE</b></a></li>
            @foreach($types ?? [] as $type)
                <li><a style="border: 0;" href="/{{$type->slug}}"><span class="{{$type->class}}-label">{{$type->type}}</span></a></li>
            @endforeach
            <li><a style="border-top: 1px solid #ebebeb" href="/people"><b>PEOPLE</b></a></li>
            <li><a class="scrollto" href="#footer-contact"><b>CONTACT US</b></a></li>
            <li><a href="https://www.instagram.com/acam_studio/" target="_blank"><b>#acamstudio</b></a></li>
        </ul>
    </div>
</div>

@extends('frontend.layouts.app-lasindo')
@section('title', appName())

@section('content')
    <main id="content">

        <div id="indicators"  class="carousel slide" data-ride="carousel" style=" ">
            <ol class="carousel-indicators right-indicators">
                @foreach ($slides as $key=>$indi)
                <li data-target="#indicators" data-slide-to="{{$key}}" class="{{$key == 0 ? 'active' : '' }}"></li>
                @endforeach
            </ol>
            <div class="carousel-inner">
                @foreach ($slides as $key=>$slide)
                <div class="carousel-item header {{$key == 0 ? 'active' : '' }}" style="background-image: url({{ $slide->image }});background-position: top;">
                    <div class="d-flex">
                        <div class="container">
                            <div class="d-block position-absolute small-device-wrapper" style="top:43%">
                                <div class="heading">
                                    <span>{!! $slide->headline !!}</span>
                                </div>
                                <a href="{{route('frontend.product.index','')}}" class="cta-link">Browse Our Products</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>

        <div class="section showcase">
            <div class="container">
                <div class="row">
                    @foreach ($show as $sp)
                        @if ($sp->layout=='sidebyside')
                            <div class="col-md-6 wow fadeIn">
                                <a href="{{$sp->link}}">
                                    <div class="showcase-model-one">
                                        <div class="text">
                                            <h2>{{$sp->name}}</h2>
                                            <span class="cta-link">Learn More</span>
                                        </div>
                                        <div class="d-flex showcase-product">
                                            <img id="pr" class="m-auto" src="{{$sp->image}}" alt="{{$sp->name}}">
                                            <div class="lil-brands d-flex">
                                                <div class="wrapper d-flex align-items-center">
                                                    @foreach ($brands as $br)
                                                        @if ($sp->brand==$br->name)
                                                        <img src="{{$br->image}}" class="w-100" alt="{{$br->name}}">
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @else
                            <div class="col mt-4 wow fadeIn" data-wow-delay=".3s">
                                <a href="{{$sp->link}}">
                                    <div class="showcase-model-two" style="background-image: linear-gradient(black 5%, transparent, transparent), url({{$sp->image}})">
                                        <div class="overlay">
                                            <div class="text">
                                                <h2>{{$sp->name}}</h2>
                                                <span class="cta-link">Learn More</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif                
                    @endforeach
                </div>
            </div>
        </div>

        <div class="section partners">
            <div class="container">
                <div class="text-center">
                    <h2>Product Brands</h2>                       
                </div>             
                <div id="partner" class="border-grey ml-0 mr-0">
                    @foreach ($brands as $br)
                        <div class="p-2 d-flex border-grey">
                            <div class="align-self-center m-auto">
                                <img src="{{$br->image}}" alt="{{$br->name}}">
                            </div>
                        </div>
                    @endforeach                  
                </div>

            </div>
        </div>

        @foreach ($banner as $bn)
            <div class="section header case-studies" style="background-image: linear-gradient(rgba(0,0,0,.8), rgba(0,0,0,.8)), url({{$bn->image}})">
                <div class="overlay d-flex align-items-center justify-content-center">
                    <div class="container small-device-wrapper ">
                        <div class="d-block text-center wow fadeIn" data-wow-delay=".3s">
                            <div class="heading">
                                <span>{!!$bn->name!!}</span>
                            </div>
                            <a href="{{$bn->link}}" class="cta-link">Case Studies</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

    </main>
@endsection
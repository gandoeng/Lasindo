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

        <div class="section about-us">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h2>News & Events</h2>
                    </div>
                </div>
                <div class="row">
                    @foreach ($page as $p)
                    <div class="col-lg-12">
                        <div class="form-group row">
                            <img src="{{asset('storage/photos/newsPhotos/'.$p->newsImage)}}" style="width: 1200px;">
                        </div>
                    </div>

                    <div class="col-lg-12" style="margin-top: 4%;">
                        <div class="form-group row">
                            <h3 style="font: bold;">{{$p->title}}</h3>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="form-group row lighter-text no-margin-top no-mergin-bottom">
                                <p class="limit-text news-content">
                                    <?= str_replace('"', ' ',$p -> newsContent)?>
                                </p>
                            </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </main>
@endsection
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
                <div class="carousel-item header {{$key == 0 ? 'active' : '' }}" style="background-image: url({{ $slide->image }}); background-position: top;">
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
                    @foreach($news as $n)
                    @if( $n->newsPublice == 'set')
        			<div class="row border border-dark news-margin">
                        <div class="col-lg-6" style="padding-left: 0%;">
                                <img class="news-image-size" src="{{ asset('storage/photos/newsPhotos/'.$n->newsImage)}}">
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row news-title">
                                <h5><strong>{{$n->title}}</strong></h5>
                            </div>
                            <div class="form-group row no-margin-bottom no-margin-top news-content-position">
                                <p class="limit-text news-limit-content"> 
                                    <?= str_replace('"', ' ',substr(strip_tags($n->newsContent),0,250))?>
                                </p>
                            </div>
                            <div class="form-group row no-margin-bottom news-button-position">
                                <form action="{{route('frontend.news.page',array($n->id))}}" method="get" enctype="multipart/form-data">
                                    <button class="btn btn-pill btn-warning news-button-style" type="submit">Read More!</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
        		</div>
                <div class="row">
                    <div class="d-flex justify-content-center">
                        <div class="col news-pagenation-position">
                            {!! $news->links() !!}
                        </div>
                    </div>
                </div>
        	</div>
        </div>
	</main>
@endsection
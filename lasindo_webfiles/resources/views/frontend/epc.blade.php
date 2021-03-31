@extends('frontend.layouts.app-lasindo')
@section('title', $epcname[0]->name.' | '.appName())

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
        
        <div class="section products">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h2>Engineering Procurement Construction/ Installation</h2>                        
                    </div>
                </div>
                
                <div class="row detail-category">
                    <div class="col-12 category-item">
                        <div class="cat-name special">
                            <div class="catname">
                                <h4>{{$epcname[0]->name}}</h4>
                            </div> 
                        </div>
                        
                        <div class="d-flex flex-column">
                            @foreach ($epc as $e)
                                <div class="row epc">
                                    @if ($e->imagepos=='right')
                                        <div class="col-md-7 align-self-center">
                                            {!!$e->desc!!}
                                        </div>
                                        <div class="col-md-5">
                                            <div class="special-image">
                                                <img src="{{$e->image}}" class="w-100" alt="{{$epcname[0]->name.$loop->index}}">
                                            </div>
                                        </div>
                                    @else
                                        <div class="col-md-4">
                                            <div class="special-image">
                                                <img src="{{$e->image}}" class="w-100" alt="{{$epcname[0]->name.$loop->index}}">
                                            </div>
                                        </div>
                                        <div class="col-md-8 align-self-center mt-4">
                                            {!!$e->desc!!}
                                        </div>
                                    @endif
                                </div>                                
                            @endforeach
                        </div>

                    </div>                    
                </div>

            </div>
        </div>
    </main>
@endsection
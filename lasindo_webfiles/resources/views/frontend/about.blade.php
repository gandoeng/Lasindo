@extends('frontend.layouts.app-lasindo')
@section('title', 'About Us | '.appName())

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
                        <h2>About Us</h2>
                        <span>About PT Lasindo Jayabersama</span>
                    </div>
                </div>
                <div class="about-content">
                    <div class="row">
                        <div class="col-md-7">
                            @foreach($desc as $d)
                            <div class="desc"><?= str_replace('"', ' ',$d -> about_main)?></div>
                            @endforeach
                        </div>
                        <div class="col-md-5">
                            <div id="about-photos" class="border-grey ml-0 mr-0">
                                @foreach ($img as $i)
                                    <div class="p-2 d-flex border-grey">
                                        <div class="align-self-center m-auto">
                                            <img src="{{$i->about_image}}" class="w-100" alt="Lasindo Documentation {{$i->id}}">
                                        </div>
                                    </div>      
                                @endforeach
                            </div>        

                        </div>
                    </div>
                    <div class="row" style="margin-top: 3rem">
                        <div class="col">
                            <div class="text-center tagline ">
                                <p>Experience <span>The Difference</span></p>
                            </div>
                        </div>
                    </div>                
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <span>About HSE</span>
                    </div>
                </div>
                <div class="about-content">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="desc">{!!$desc[0]->about_hse!!}</div>
                        </div>
                        <div class="col-md-3">
                            <div class="about-image">
                                <div class="overlay">
                                    <img src="{{url('maintheme/assets/img/icons/iso.jpg')}}" class="w-100" alt="Lasindo Jayabersama ISO">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
@endsection
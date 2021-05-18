@extends('frontend.layouts.app-lasindo')
@section('title', 'Products - '.getSectionFullName().' | '.appName())

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
                <div class="row" id="products-sect">
                    <div class="col">
                        <h2>Products</h2>                        
                    </div>
                </div>
                <div class="product-category">
                    <div id="category-lg" class="row">
                        <div class="col-md-2 col-sm-6">
                            <div class="category">
                                <ul class="cat-filter">
                                    <li class="cat"><a href="{{route('frontend.product.index', 'flow')}}#products-sect" class="{{ activeClass(getProductSection()=='flow' ? 'active' : '') }}"><span class="icon-ic_flow"></span> Flow</a></li>
                                    <li class="cat"><a href="{{route('frontend.product.index', 'pressure')}}#products-sect" class="{{ activeClass(getProductSection()=='pressure' ? 'active' : '') }}"><span class="icon-ic_pressure"></span> Pressure</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-6">
                            <div class="category">
                                <ul class="cat-filter">
                                    <li class="cat"><a href="{{route('frontend.product.index', 'level')}}#products-sect" class="{{ activeClass(getProductSection()=='level' ? 'active' : '') }}"><span class="icon-ic_level"></span> Level</a></li>
                                    <li class="cat"><a href="{{route('frontend.product.index', 'valves')}}#products-sect" class="{{ activeClass(getProductSection()=='valves' ? 'active' : '') }}"><span class="icon-ic_valves"></span> Valves</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-6 mr-3">
                            <div class="category">
                                <ul class="cat-filter">
                                    <li class="cat"><a href="{{route('frontend.product.index', 'analytical')}}#products-sect" class="{{ activeClass(getProductSection()=='analytical' ? 'active' : '') }}"><span class="icon-ic_analyze"></span> Analytical</a></li>
                                    <li class="cat"><a href="{{route('frontend.product.index', 'temperature')}}#products-sect" class="{{ activeClass(getProductSection()=='temperature' ? 'active' : '') }}"><span class="icon-ic_temp"></span> Temperature</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md col-sm-6 ml-4">
                            <div class="category">
                                <ul class="cat-filter">
                                    <li class="cat"><a href="{{route('frontend.product.index', 'heat-tracing')}}#products-sect" class="{{ activeClass(getProductSection()=='heat-tracing' ? 'active' : '') }}"><span class="icon-ic_heat"></span> Heat Tracing</a></li>
                                    <li class="cat"><a href="{{route('frontend.product.index', 'fall-protection')}}#products-sect" class="{{ activeClass(getProductSection()=='fall-protection' ? 'active' : '') }}"><span class="icon-ic_protect"></span> Fall Protection</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md col-sm-6">
                            <div class="category">
                                <ul class="cat-filter">
                                    <li class="cat"><a href="{{route('frontend.product.index', 'leak-detection')}}#products-sect" class="{{ activeClass(getProductSection()=='leak-detection' ? 'active' : '') }}"><span class="icon-ic_leak"></span> Leak Detection</a></li>
                                    <li class="cat"><a href="{{route('frontend.product.index', 'fire-gas-detection')}}#products-sect" class="{{ activeClass(getProductSection()=='fire-gas-detection' ? 'active' : '') }}"><span class="icon-ic_fire"></span> Fire & Gas Detection</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div id="category-sm">
                        <div class="row">
                            <div class="col-sm-6 cat-sm">
                                <a href="{{route('frontend.product.index', 'flow')}}" class="{{ activeClass(getProductSection()=='flow' ? 'active' : '') }}"><span class="icon-ic_flow"></span> Flow</a></li>
                                <a href="{{route('frontend.product.index', 'pressure')}}" class="{{ activeClass(getProductSection()=='pressure' ? 'active' : '') }}"><span class="icon-ic_pressure"></span> Pressure</a>
                                <a href="{{route('frontend.product.index', 'level')}}" class="{{ activeClass(getProductSection()=='level' ? 'active' : '') }}"><span class="icon-ic_level"></span> Level</a>
                                <a href="{{route('frontend.product.index', 'valves')}}" class="{{ activeClass(getProductSection()=='valves' ? 'active' : '') }}"><span class="icon-ic_valves"></span> Valves</a>
                                <a href="{{route('frontend.product.index', 'analytical')}}" class="{{ activeClass(getProductSection()=='analytical' ? 'active' : '') }}"><span class="icon-ic_analyze"></span> Analytical</a>
                                <a href="{{route('frontend.product.index', 'temperature')}}" class="{{ activeClass(getProductSection()=='temperature' ? 'active' : '') }}"><span class="icon-ic_temp"></span> Temperature</a>
                                <a href="{{route('frontend.product.index', 'heat-tracing')}}" class="{{ activeClass(getProductSection()=='heat-tracing' ? 'active' : '') }}"><span class="icon-ic_heat"></span> Heat Tracing</a>
                                <a href="{{route('frontend.product.index', 'fall-protection')}}" class="{{ activeClass(getProductSection()=='fall-protection' ? 'active' : '') }}"><span class="icon-ic_protect"></span> Fall Protection</a>
                                <a href="{{route('frontend.product.index', 'leak-detection')}}" class="{{ activeClass(getProductSection()=='leak-detection' ? 'active' : '') }}"><span class="icon-ic_leak"></span> Leak Detection</a>
                                <a href="{{route('frontend.product.index', 'fire-gas-detection')}}" class="{{ activeClass(getProductSection()=='fire-gas-detection' ? 'active' : '') }}"><span class="icon-ic_fire"></span> Fire & Gas Detection</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row detail-category">
                    <div class="col-12 category-item">
                        <div class="cat-name">
                            <div class="catname">
                                <h4>{{getSectionFullName()}}</h4>
                            </div>   
                            <div class="ml-0 mr-0">
                                <div class="row brands">
                                    @php
                                        $count = 0;
                                        foreach ($brandsec as $brs) {
                                            if (Str::slug($brs->section,'-')==getProductSection()) {
                                                $count = $count+1;
                                                foreach ($brands->where('name',$brs->brandsec) as $br) {
                                    @endphp
                                            <div class="col p-2 d-flex cat-brand {{$count==1 ? 'active' : '' }}" data-filter=".filter-{{Str::slug($brs->brandsec,'-')}}">
                                                <div class="align-self-center m-auto">
                                                    <img src="{{$br->image}}" alt="{{$count.$brs->section}}-{{$brs->brandsec}}">
                                                </div>
                                            </div>
                                    @php
                                                }
                                            }
                                        }
                                    @endphp
                                </div>
                            </div>
                        </div>
                        
                        <div id="brand-products">
                            @foreach ($brandsec as $bs)
                                @if (Str::slug($bs->section,'-')==getProductSection())
                                    @foreach ($brands->where('name',$bs->brandsec) as $brn)
                                        <div class="brand-name filter-{{Str::slug($brn->name,'-')}}">
                                            <h2>{{$brn->name}}</h2>
                                        </div>
                                        <div class="brand-desc filter-{{Str::slug($brn->name,'-')}}">
                                            {!!$brn->desc!!}
                                        </div>
                                    @endforeach

                                    <div class="row to-be-filtered filter-{{Str::slug($bs->brandsec,'-')}}"> 
                                        @foreach ($products->where('section',$bs->section)->where('brand',$bs->brandsec) as $p)
                                            @if ($p->layout=='full')
                                            <div class="col-md-4">
                                            @else
                                            <div class="col-md-4">                                                
                                            @endif
                                                <div class="the-products">


                                                    @if($p->abbreviation == null)
                                                    <div class="d-flex {{$p->layout=='sidebyside' ? 'image' : ''}} flow-img-size" >
                                                        <img src="{{$p->image}}" class="m-auto img-follow" alt="{{$p->name}}">
                                                    </div>
                                                    @endif
                                                    <!--<h4>{{$p->name}}</h4>-->
                                                    @if($p->fullName == null)

                                                    <p class="flow-name"><strong> {{$p->name}}</strong></p>

                                                    @else

                                            
                                                    @if($p->abbreviation == 'RTC')
                                                    <div class="d-flex flex-row {{$p->layout=='sidebyside' ? 'image' : ''}} justify-content-center">
                                                        <a href="{{route('frontend.RTC.RTC','temperature')}}">
                                                        <div class="temp-img" >
                                                            <img src="{{$p->image}}" class="m-auto img-follow" alt="{{$p->name}}"></a>
                                                        </div>
                                                    </div>
                                                    <a href="{{route('frontend.RTC.RTC','temperature')}}" class=" flow-title">{{$p->abbreviation}}</a>
                                                    <p class="index-title-a" style=""> {{$p->fullName}}</p>

                                                    @elseif($p->abbreviation == 'PTC')
                                                    <div class="d-flex flex-row {{$p->layout=='sidebyside' ? 'image' : ''}} justify-content-center" >
                                                        <a href="{{route('frontend.PTC.PTC','temperature')}}">
                                                        <div class="temp-img" >
                                                            <img src="{{$p->image}}" class="m-auto img-follow" alt="{{$p->name}}"></a>
                                                        </div>
                                                    </div>
                                                    <a href="{{route('frontend.PTC.PTC','temperature')}}" class=" flow-title">{{$p->abbreviation}}</a>
                                                    <p  class="index-title-a"> {{$p->fullName}}</p>

                                                    @elseif($p->abbreviation == 'CTC')
                                                    <div class="d-flex flex-row{{$p->layout=='sidebyside' ? 'image' : ''}} justify-content-center" >
                                                        <a href="{{route('frontend.CTC.CTC','temperature')}}">
                                                        <div class="temp-img" >
                                                            <img src="{{$p->image}}" class=" m-auto img-follow" alt="{{$p->name}}"></a>
                                                        </div>
                                                    </div>
                                                    <a href="{{route('frontend.CTC.CTC','temperature')}}" class=" flow-title">{{$p->abbreviation}}</a>
                                                    <p class="index-title-a"> {{$p->fullName}}</p>

                                                    @elseif($p->abbreviation == 'MTC')
                                                    <div class="d-flex flex-row {{$p->layout=='sidebyside' ? 'image' : ''}} justify-content-center"  >
                                                        <a href="{{route('frontend.MTC.MTC','temperature')}}">
                                                        <div class="temp-img" >
                                                            <img src="{{$p->image}}" class=" m-auto img-follow" alt="{{$p->name}}" style="max-height: 200px;">
                                                        </div>
                                                    </div>
                                                    <a href="{{route('frontend.MTC.MTC','temperature')}}" class=" flow-title">{{$p->abbreviation}}</a>
                                                    <p class="index-title-a"> {{$p->fullName}}</p>

                                                    @elseif($p->abbreviation == 'ETC')
                                                    <div class="d-flex flex-row {{$p->layout=='sidebyside' ? 'image' : ''}} justify-content-center" >
                                                        <a href="{{route('frontend.ETC.ETC','temperature')}}">
                                                        <div class="temp-img" style="margin-bottom: 2.7rem;">
                                                            <img src="{{$p->image}}" class="m-auto img-follow" alt="{{$p->name}}" >
                                                        </div>
                                                    </div>
                                                    <a href="{{route('frontend.ETC.ETC','temperature')}}"class=" flow-title">{{$p->abbreviation}}</a>
                                                    <p class="index-title-a"> {{$p->fullName}}</p>
                                                    @else
                                                    <a href="#" class="index-title-a"> {{$p->fullName}}</a>
                                                    @endif

                                                    @endif
                                                </div>
                                                    <form class="item">
                                                        <button class="btn btn-pill btn-warning button-flow-lasindo" type="button" data-toggle="modal" data-target="#edit-modal"><span class="label-name-position-flow">Request Quote</span> </button>
                                                    </form>
                                                    <div class="modal fade" id="edit-modal">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h1 class="modal-title" align="center" style="color: #d3d3d3; font-size: 12pt;">REQUEST QUOTE</h1>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="" style="width: 470px; margin-top: 10px;">
                                                                            <form action="{{ route('frontend.request-quote') }}" method="post" enctype="multipart/form-data">
                                                                                @csrf
                                                                            <div class="row">
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="firstName" style="font-family: sans-serif;">First Name &#42;</label>
                                                                                    <input class="form-control" id="firstName" name="firstName" type="text" required>
                                                                                </div>
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="lastName" style="font-family: sans-serif;">Last Name &#42;</label>
                                                                                    <input class="form-control" id="lastName" name="lastName" type="text">
                                                                                </div>
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="company" style="font-family: sans-serif;">Company/Organization &#42;</label>
                                                                                    <input class="form-control" id="company" name="company" type="text" required>
                                                                                </div>
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="country" style="font-family: sans-serif;">Country &#42;</label>
                                                                                    <input class="form-control" id="country" name="country" type="text" required>
                                                                                </div>
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="email" style="font-family: sans-serif;">Email &#42;</label>
                                                                                    <input class="form-control" id="email" name="email" type="email">
                                                                                </div>
                                                                                <div class="form-group col-sm-6">
                                                                                    <label for="postal-code" style="font-family: sans-serif;">Phone &#42;</label>
                                                                                    <input class="form-control" id="phone" name="phone" type="text" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="country" style="font-family: sans-serif;">Message/Inquiry &#42;</label>
                                                                                <textarea class="form-control" id="message" name="message" cols="40" rows="5" type="text" style=" height: 100px;" required> </textarea>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <button class="btn btn-sm btn-warning modal-button" type="submit">Submit</button>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="mandatory" class="text-mandatory"> &#42; <strong>mandatory</strong></label>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                    </div>
                                                                <div class="modal-body">
                                                            </div>
                                                        </div>
                                                        </div>
                                                        </div>
                                                    <!--
                                                    <div class="desc">
                                                        {!!$p->desc!!}
                                                    </div>
                                                -->
                                                </div>
                                        @endforeach
                                    </div>
                                @endif
                            @endforeach

                        </div>
                    </div>
                    
                </div>

            </div>
        </div>
    </main>
@endsection
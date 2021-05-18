@extends('frontend.layouts.app-lasindo')
@section('title', 'Eng. & Solutions - '.getSectionFullName().' | '.appName())

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
                        <h2>Engineering & Solution</h2>                        
                    </div>
                </div>
                <div class="product-category">
                    <div class="d-flex justify-content-between">
                        <div>
                            <div class="category">
                                <ul class="cat-filter engineer">
                                    <li class="cat py-1"><a href="{{route('frontend.ens.index', 'fuel-gas-system') }}#products-sect" class="{{ activeClass(getProductSection()=='fuel-gas-system' ? 'active' : '') }}">Fuel Gas System</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="category">
                                <ul class="cat-filter engineer">
                                    <li class="cat py-1"><a href="{{route('frontend.ens.index', 'high-pressure-pump-system') }}#products-sect" class="{{ activeClass(getProductSection()=='high-pressure-pump-system' ? 'active' : '') }}">High Pressure Pump System</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="category">
                                <ul class="cat-filter engineer">
                                    <li class="cat py-1"><a href="{{route('frontend.ens.index', 'engineered-fall-protection-system') }}#products-sect" class="{{ activeClass(getProductSection()=='engineered-fall-protection-system' ? 'active' : '') }}">Engineered Fall Protection Systems</a></li>
                                </ul>
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
                                    <div class=" to-be-filtered filter-{{Str::slug($bs->brandsec,'-')}}"> 
                                        @foreach ($products->where('section',$bs->section)->where('brand',$bs->brandsec) as $p)
                                            @if ($p->layout=='full')
                                            <div class="col-12">
                                            @else
                                            <div class="col-md-6">                                                
                                            @endif
                                                <div class="the-products">
                                                    <h4>{{$p->name}}</h4>
                                                    <div class="d-flex {{$p->layout=='sidebyside' ? 'image' : ''}}" style="height: 400px; width: 400px;">
                                                        <img src="{{$p->image}}" class="m-auto" alt="{{$p->name}}" style="height: 100%; width: 100%;">
                                                    </div>
                                                    <div class="desc">
                                                        {!!$p->desc!!}
                                                    </div>
                                                    <button class="btn btn-block btn-info" type="button">Info</button>
                                                </div>
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
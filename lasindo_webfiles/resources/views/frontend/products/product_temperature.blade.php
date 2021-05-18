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
                        <div class="cat-name-label">
                            <div class="catname-label">
                                <h4>{{getSectionFullName()}} Measurement</h4>
                            </div>
                            <div class="ml-0 mr-0">
                                <div class="d-flex brands-label">
                                    @php 
                                        $count = 0;
                                        foreach ($brandsec as $brs) {
                                            if (Str::slug($brs->section,'-')==getProductSection()) {
                                                $count = $count+1;
                                                foreach ($brands->where('name',$brs->brandsec) as $br) {
                                    @endphp
                                            @if($count == 1)
                                            <div class="p-2 d-flex cat-brand-label active">
                                                <div class="align-self-center m-auto">
                                                    <a href="{{url('/products/temperature#products-sect')}}">
                                                    <img src="{{$br->image}}" alt="{{$count.$brs->section}}-{{$brs->brandsec}}"></a>
                                                </div>
                                            </div>
                                            @else
                                            <div class="p-2 d-flex">
                                                <div class="align-self-center m-auto">
                                                    <img src="{{$br->image}}" alt="{{$count.$brs->section}}-{{$brs->brandsec}}">
                                                </div>
                                            </div>
                                            @endif

                                    @php
                                                }
                                            }
                                        }
                                    @endphp
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                                <div class="brand-name">
                                    <h4 class="brand-black">Ametek | Jofra</h4>
                                </div>
                            </div>
                        <div class="cat-name cat-name-auto">
                            <div class="col-6 category-item margin-left-25">
                                <div class="ml-0 mr-0">
                                <div class="row brands no-margin">
                                    <div class="col p-2 d-flex cat-brand active nav hover-menu"  data-filter=".filter-overview" >
                                        <div class="align-self-center m-auto hover-overlay">
                                            <h5 class="font-12">Overview</h5>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav hover-menu" data-filter=".filter-spesification" >
                                        <div class="align-self-center m-auto hover-overlay">
                                            <h5 class="font-12">Spesification</h5>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav hover-menu"  data-filter=".filter-download" >
                                        <div class="align-self-center m-auto hover-overlay ">
                                            <h5 class="font-12">Download</h5>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav hover-menu" data-filter=".filter-video">
                                        <div class="align-self-center m-auto hover-overlay">
                                            <h5 class="font-12">Video</h5>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>  
                        </div>
                        <div id="brand-products">
                            <div class="content-space to-be-filtered filter-overview ">
                                <div class="col-lg-6">
                                    @foreach($pImage as $p)
                                    <div class="card image-overview" >
                                        <img  src="{{ asset($p->value)}}">
                                    </div>
                                    @endforeach
                                </div>
                                <div class="col-lg-6">
                                    @foreach($products as $p)
                                    <div class="form-group row no-margin-bottom">
                                        <h4 class="black" >{{$p->abbreviation}}</h4>
                                    </div>
                                    <div class="form-group row no-margin-top" >
                                        <h4 class="title-overview">{{$p->fullName}}</h4>
                                    </div>
                                    @endforeach
                                    <div class="form-group row">
                                        <ul class="text-style">
                                            @foreach($overview as $o)
                                            <li><p>{{$o->value}}</p></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    <div class="form-group row">
                                        <form style="padding-top: 10px;">
                                            <button class="btn btn-pill btn-warning button-lg-lasindo" type="button"  data-toggle="modal" data-target="#edit-modal">Request Quote</button>
                                        </form>
                                        <div class="modal fade" id="edit-modal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h1 class="modal-title modal-title-style" align="center">REQUEST QUOTE</h1>
                                                        <button type="button" class="btn btn-sm close no-border" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="modal-space-fit" >
                                                            <form action="{{ route('frontend.request-quote') }}" method="post" enctype="multipart/form-data">
                                                                @csrf
                                                                <div class="row">
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="firstName" class="font-sans">First Name &#42;</label>
                                                                        <input class="form-control" id="firstName" name="firstName" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="lastName" class="font-sans">Last Name &#42;</label>
                                                                        <input class="form-control" id="lastName" name="lastName" type="text">
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="company" class="font-sans">Company/Organization &#42;</label>
                                                                        <input class="form-control" id="company" name="company" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="country" class="font-sans">Country &#42;</label>
                                                                        <input class="form-control" id="country" name="country" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="email" class="font-sans">Email &#42;</label>
                                                                        <input class="form-control" id="email" name="email" type="email">
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="postal-code" class="font-sans">Phone &#42;</label>
                                                                        <input class="form-control" id="phone" name="phone" type="text" required>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="country" class="font-sans">Message/Inquiry &#42;</label>
                                                                    <textarea class="form-control" id="message" name="message" cols="40" rows="5" type="text" style=" height: 100px;" required> </textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <button class="btn btn-sm btn-warning modal-button" type="submit" style="">Submit</button>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="mandatory" class="text-mandatory"> &#42;mandatory</label>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>            
                                </div>
                            </div>
                            <div class="brand-name filter-spesification">
                                
                                <div class="col-lg-12 margin-left-20">
                                    @foreach($products as $p)
                                    <div class="row no-margin-bottom black">
                                        <h4>{{$p->abbreviation}}</h4>
                                    </div>
                                    <div class="form-group row no-margin-top">
                                        <h4 class="tab-download-a">{{$p->fullName}}</h4>
                                    </div>
                                    @endforeach
                                    @foreach($spec as $d)
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" valign="middle" rowspan="18" style="width: 100px;">{{$d->product_name}} {{$d->product_code}}</th>
                                                    <th class="table-spec-size">Temperature range</th>
                                                    <td class="coloumn-table-spec">{{$d ->temperature}}</td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Accuracy</th>
                                                    <td class="coloumn-table-spec"><?= str_replace('"', ' ',$d->accuracy)?></td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Stability</th>
                                                    <td class="coloumn-table-spec">{{$d ->stability}}</td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Resolution (user-selectable)</th>
                                                    <td class="coloumn-table-spec">{{$d ->resolution}}</td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Heating time</th>
                                                    <td class="coloumn-table-spec"><?= str_replace('"', ' ',$d->heating)?></td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Cooling time</th>
                                                    <td class="coloumn-table-spec"><?= str_replace('"', ' ',$d->cooling)?></td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Time to stability</th>
                                                    <td class="coloumn-table-spec">{{$d ->timeStability}}</td>   
                                                </tr>
                                                <tr>
                                                    <th class="table-spec-size">Immersion Depth</th>
                                                    <td class="coloumn-table-spec"><?= str_replace('"', ' ',$d->immersion)?></td>   
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="brand-name filter-download">
                                <div class="col-lg-12 content-lg-space">
                                    
                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"> <i class="fas fa-caret-down font-25 margin-left-12 i-download-label" style=""></i> <label class="label-name-position">Brochure</label> </div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            @foreach($brochure as $b)
                                            <li><a href="{{ asset($b->value)}}" class="tab-download-a" download><i class="far fa-file-alt"></i> {{$b->file_desc}}</li>
                                            @endforeach
                                        </ul> 
                                    </div>
                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"><i class="fas fa-caret-down font-25 margin-left-12 i-download-label"></i><label class="label-name-position"> Datasheet</label></div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            @foreach($datasheet as $d)
                                            <li><a href="{{ asset($d->value)}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  {{$d->file_desc}}</a></li>
                                            @endforeach                
                                        </ul> 
                                    </div>

                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"><i class="fas fa-caret-down font-25 margin-left-12 i-download-label"></i><label class="label-name-position">Manual</label>  </div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            @foreach($manualProduct as $m)
                                            <li><a href="{{ asset($m->value)}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  {{$m->file_desc}}</a></li>
                                            @endforeach
                                            @foreach($manual as $m)
                                            <li><a href="{{ asset($m->value)}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  {{$m->file_desc}}</a></li>
                                            @endforeach
                                        </ul> 
                                    </div>

                                </div>
                            </div>
                            <div class="content-space2 to-be-filtered filter-video tab-video-center" >

                                @foreach($video as $v)
                                <div class="col-sm-6">
                                    <div class="form-group content-space2"  >
                                        <iframe width="360" height="197" src="{{$v->value}}"></iframe>
                                    </div>
                                </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
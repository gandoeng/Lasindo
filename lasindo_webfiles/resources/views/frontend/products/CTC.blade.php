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
                                    <div class="card image-overview">
                                        <img  src="{{ asset('storage/product/ctc.jpg')}}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group row no-margin-bottom">
                                        <h4 class="black">CTC</h4>
                                    </div>
                                    <div class="form-group row no-margin-top">
                                        <h4 class="title-overview">Compact Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="text-style">
                                            <li><p>Temperature range from -25 to 1205°C (-13 to 2201°F) with 5 models</p></li>
                                            <li><p>Accuracy to ± 0.2°C and Stability to ± 0.04°C</p></li>
                                            <li><p>Calibrate Long Sensors with the CTC-652s 190 mm immersion depth</p></li>
                                            <li><p>Lightweight and easy to carry</p></li>
                                            <li><p>Multi-hole and/or insert kits</p></li>
                                            <li><p>Input for external reference sensor on all C models</p></li>
                                            <li><p>MVI circuitry ensures stability despite mains supply variations</p></li>
                                            <li><p>Rugged, portable temperature calibrator</p></li>
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
                                                                    <label for="mandatory" class="text-manadatory"> &#42; <strong>mandatory</strong></label>
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
                                    <div class="form-group row no-margin-bottom">
                                        <h4 class="black">CTC</h4>
                                    </div>
                                    <div class="form-group row no-margin-top">
                                        <h4 class="tab-download-a">Compact Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border"  valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="10" valign="middle">CTC 155</th>
                                                    <th>Temperature range</th>
                                                    <td>-25 to 155°C / -13 to 311°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model C): ± 0.2°C / ± 0.36°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.3°C / ± 0.54°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.04°C / ± 0.07°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Heating time</th>
                                                    <td>23 to 155°C / 73 to 311°F. . . . . . . . . . . . . 13 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>155 to 23°C / 311 to 73°F. . . . . . . . . . . . . 12 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to -25°C / 73 to -13°F. . . . . . . . . . . . . . 16 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>120 mm / 4.53 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="11" valign="middle">CTC 350</th>
                                                    <th>Temperature range</th>
                                                    <td>28 to 350°C / 82 to 662°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Accuracy</th>
                                                    <td>with external STS ref. sensor (model C): ± 0.25°C / ± 0.45°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor @ 350°C / 662°F : ± 0.45°C / ± 0.81°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor @ 200°C / 392°F : ± 0.40°C / ± 0.72°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.05°C / ± 0.09°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Heating time</th>
                                                    <td>23 to 350°C / 73 to 662°F. . . . . . . . . . . . . 6 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>350 to 100°C / 662 to 212°F. . . . . . . . . . . 20 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 50°C / 212 to 122°F. . . . . . . . . . . . 14 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>115 mm / 4.53 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="11" valign="middle">CTC 652</th>
                                                    <th>Temperature range</th>
                                                    <td>28 to 650°C / 82 to 1202°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model C): ± 0.40°C / ± 0.72°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor : ± 0.60°C / ± 1.08°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.05°C / ± 0.09°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Heating time</th>
                                                    <td>23 to 650°C / 73 to 1202°F. . . . . . . . . . . . 33 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>650 to 100°C / 1202 to 212°F. . . . . . . . . . 48 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 50°C / 212 to 122°F. . . . . . . . . . . . 25 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>5 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Immersion depth</th>
                                                    <td>190 mm / 7.48 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="11" valign="middle">CTC 660</th>
                                                    <th>Temperature range</th>
                                                    <td>28 to 660°C / 82 to 1220°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model C): ± 0.45°C / ± 0.81°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor : ± 0.75°C / ± 1.35°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.08°C / ± 0.14°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Heating time</th>
                                                    <td>23 to 660°C / 73 to 1220°F. . . . . . . . . . . . 18 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>660 to 100°C / 1220 to 212°F. . . . . . . . . . 39 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 50°C / 212 to 122°F. . . . . . . . . . . . 18 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>5 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>115 mm / 4.53 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="9" valign="middle">CTC 1205</th>
                                                    <th>Temperature range</th>
                                                    <td>100 to 1205°C / 212 to 2201°F</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Accuracy</th>
                                                    <td>± 2°C / ± 3.6°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>±0.1°C / ±0.18°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Heating time</th>
                                                    <td>23 to 1205°C / 73 to 2201°F. . . . . . . . . . . 50 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>1205 to 300°C / 2201 to 672°F. . . . . . . . . 45 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>300 to 50°C / 672 to 122°F. . . . . . . . . . . . 45 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Immersion depth</th>
                                                    <td>110 mm / 3.00 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="brand-name filter-download">
                                <div class="col-lg-12 content-lg-space">
                                    
                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"> <i class="fas fa-caret-down font-25 margin-left-12 i-download-label" style=""></i> <label class="label-name-position">Brochure</label> </div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            <li><a href="{{ asset('storage/files/Ametek_Calibration_Overview_Brochure.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i> Temperatur Calibrator Overview</li>
                                            <li><a href="{{ asset('storage/files/Temperature_Calibrator_Overview.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i> Ametek Calibrator Overview Brochure</a></li>
                                        </ul> 
                                    </div>

                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"><i class="fas fa-caret-down font-25 margin-left-12 i-download-label"></i><label class="label-name-position"> Datasheet</label></div>
                                        </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            <li><a href="{{ asset('storage/files/CTC/CTC_155-350-652-660_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  CTC 155/350/652/660 Datasheet</li>
                                            <li><a href="{{ asset('storage/files/CTC/CTC_1205_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  CTC 1205 Datasheet</li>
                                        </ul>
                                    </div>

                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"><i class="fas fa-caret-down font-25 margin-left-12 i-download-label"></i><label class="label-name-position">Manual</label>  </div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            <li><a href="{{ asset('storage/files/CTC/CTC_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  CTC User Manual</li>
                                            <li><a href="{{ asset('storage/files/CTC/CTC_Reference_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  CTC Reference Manualt</li>
                                            <li><a href="{{ asset('storage/files/JOFRACAL_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  JofraCal User Manual Temperature</li>
                                            <li><a href="{{ asset('storage/files/Ametrim_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  Ametrim User Manual</li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                            <div class="content-space2 to-be-filtered filter-video tab-video-center" >
                                <div class="col-lg-6">
                                    <div class="form-group content-space2">
                                        <iframe width="360" height="197" src="https://www.youtube.com/embed/kKH2ozqpEys"></iframe>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group content-space2">
                                        <iframe width="360" height="197" src="https://www.youtube.com/embed/tWnchkfKIwM" frameborder="0" allowfullscreen>
                                        </iframe>                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
@endsection
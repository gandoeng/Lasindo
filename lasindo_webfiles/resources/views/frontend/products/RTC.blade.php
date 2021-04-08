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
                                    <div class="card image-overview" >
                                        <img  src="{{ asset('storage/product/rtc.jpg')}}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group row no-margin-bottom">
                                        <h4 class="black" >RTC</h4>
                                    </div>
                                    <div class="form-group row no-margin-top" >
                                        <h4 class="title-overview">Reference Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="text-style">
                                            <li><p>Temperature range from -100 to 700°C (-148 to 1292°F) with 7 models</p></li>
                                            <li><p>Accuracy to ± 0.04°C and Stability to ± 0.005°C</p></li>
                                            <li><p>Dry block and liquid bath / dry block combined</p></li>
                                            <li><p>Time saving fast cooling and heating times</p></li>
                                            <li><p>Contamination free calibration of clamp sensors</p></li>
                                            <li><p>“Plug and Play” intelligent reference sensor</p></li>
                                            <li><p>Easy-to-read color display with User-friendly navigation</p></li>
                                            <li><p>Lightweight and easy to carry</p></li>
                                            <li><p>Multi-hole insert kits</p></li>
                                            <li><p>JofraCal Calibration Software</p></li>
                                            <li><p>Inputs for Thermocouple Calibration</p></li>
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
                                                                    <label for="mandatory" class="text-manadatory"> &#42;mandatory</label>
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
                                    <div class="row no-margin-bottom black">
                                        <h4>RTC</h4>
                                    </div>
                                    <div class="form-group row no-margin-top">
                                        <h4 class="tab-download-a">Reference Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="13" valign="middle">RTC 156</th>
                                                    <th>Temperature range</th>
                                                    <td>-30 to 155°C / -22 to 311°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C): ± 0.04°C / ± 0.07°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.10°C / ± 0.18°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.005°C / ± 0.009°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Heating time</th>
                                                    <td>30 to 23°C / -22 to 73°F. . . . . . . . . . . . . 4 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 155°C / 73 to 311°F . . . . . . . . . . . 15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4" class="align-middle">Cooling time</th>
                                                    <td>155 to 100°C / 311 to 212°F . . . . . . . . . . 4 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 23°C / 212 to 73°F . . . . . . . . . . . . 8 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to -24°C / 73 to -11°F . . . . . . . . . . . . 15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>-24 to -30°C / -11 to -22°F . . . . . . . . . . . 10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>160 mm / 6.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="13" valign="middle">RTC 157</th>
                                                    <th>Temperature range</th>
                                                    <td>-45 to 155°C / -49 to 311°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C): ± 0.04°C / ± 0.07°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.10°C / ± 0.18°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.005°C / ± 0.009°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Heating time</th>
                                                    <td>-45 to 23°C /-49 to 73°F . . . . . . . . . . . . . 7 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 155°C / 73 to 311°F. . . . . . . . . . . . 17 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4" class="align-middle">Cooling time</th>
                                                    <td>155 to 100°C / 311 to 212°F. . . . . . . . . . . 5 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 23°C / 212 to 73°F. . . . . . . . . . . . 10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to -30°C / 73 to -22°F. . . . . . . . . . . . . 17 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>-30 to -45°C / -22 to -49°F. . . . . . . . . . . . 25 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>160 mm / 6.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="16" valign="middle">RTC 158</th>
                                                    <th>Temperature range</th>
                                                    <td>-22 to 155°C/-8 to 311°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C): ± 0.04°C / ± 0.07°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.18°C / ± 0.32°F (in insert)</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.3°C / ± 0.54°F (in bath)</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>±0.01°C / ±0.018°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Heating time</th>
                                                    <td>-22 to 23°C /-8 to 73°F. . . . . . . . . . . . . . . 9 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 100°C / 73 to 212°F. . . . . . . . . . . . 23 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 155°C / 212 to 311°F. . . . . . . . . . 28 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4" class="align-middle">Cooling time</th>
                                                    <td>155 to 100°C / 311 to 212°F. . . . . . . . . . . 9 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 23°C / 212 to 73°F. . . . . . . . . . . . 24 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 0°C / 73 to 32°F. . . . . . . . . . . . . . . 15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>0 to -15°C / 32 to 5°F. . . . . . . . . . . . . . . 21 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Immersion depth</th>
                                                    <td>Insert Hole version : 180 mm / 7.1 in</td>
                                                </tr>
                                                <tr>
                                                    <td>Insert Hole version : 180 mm / 7.1 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="14" valign="middle">RTC 159</th>
                                                    <th>Temperature range</th>
                                                    <td>-100 to 155°C / -148 to 311°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C) :  ± 0.06°C / ± 0.11°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.30°C / ± 0.54°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.03°C / ± 0.054°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Heating time</th>
                                                    <td>-100 to 23°C / -148 to 73°F. . . . . . . . . . . . . . 12 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 155°C / 73 to 311°F. . . . . . . . . . . . . . . 14 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4" class="align-middle">Cooling time</th>
                                                    <td>155 to 23°C / 311 to 73°F. . . . . . . . . . . . . . . 40 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to -80°C / 73 to -112°F. . . . . . . . . . . . . . . 65 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>-80 to -90°C / -176 to -130°F. . . . . . . . . . . . . 20 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>-90 to -100°C / -194 to -148°F. . . . . . . . . . . . 50 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>190 mm/6.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="15" valign="middle">RTC 250</th>
                                                    <th>Temperature range</th>
                                                    <td>28 to 250°C/82 to 482°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C) : ± 0.07°C / ± 0.13°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.28°C / ± 0.50°F (in insert)</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.5°C / ± 0.90°F (in bath)</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.02°C / ± 0.036°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Heating time</th>
                                                    <td>28 to 100°C / 82 to 212°F. . . . . . . . . . . . 3 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>50 to 100°C / 122 to 212°F. . . . . . . . . . . 2 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 250°C / 212 to 482°F. . . . . . . . . . 9 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Cooling time</th>
                                                    <td>250 to 100°C / 482 to 212°F. . . . . . . . . . 27 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 50°C / 212 to 122°F. . . . . . . . . . . 27 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>50 to 28°C / 122 to 82°F. . . . . . . . . . . .  28 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Immersion depth</th>
                                                    <td>Insert Hole version : 180 mm / 7.1 in</td>
                                                </tr>
                                                <tr>
                                                    <td>Bath version : 150 mm / 5.9 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color" rowspan="15" valign="middle">RTC 187</th>
                                                    <th>Temperature range</th>
                                                    <td>-45 to 180° C/-49 to 356° F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C) :  ± 0.04° C / ± 0.07° F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.12° C / ± 0.18° F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.005° C / ± 0.009° F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Heating time</th>
                                                    <td>-45 to 23° C /-49 to 73 °F . . . . . . . . . . . . . . . 7 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 100° C / 73 to 212° F. . . . . . . . . . . . . . 8 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 180° C / 212 to 356° F. . . . . . . . . . . . 9 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4" class="align-middle">Cooling time</th>
                                                    <td>180 to 100 °C / 311 to 212° F  . . . . . . . . . . . 8 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 23° C / 212 to 73° F . . . . . . . . . . . . . 11 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to -30° C / 73 to -22° F. . . . . . . . . . . . . . 17 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>-30 to -45° C / -22 to -49° F .. . . . . . . . . . . . 25 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>160mm / 6.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer no-border" valign="middle">
                                                    <th class="align-middle lasindo-color " rowspan="15" valign="middle">RTC 700</th>
                                                    <th>Temperature range</th>
                                                    <td>33 to 700°C/91 to 1292°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle" >Accuracy</th>
                                                    <td>with external STS ref. sensor (model B & C): ± 0.11°C / ± 0.2°F</td>
                                                </tr>
                                                <tr>
                                                    <td>with internal reference sensor: ± 0.29°C / ± 0.52°F</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Stability</th>
                                                    <td>@ 33 to 125ºC/91 to 257ºF : ±0.008°C/±0.015°F</td>
                                                </tr>
                                                <tr>
                                                    <td>@ 125 to 425ºC/257 to 797ºF : ±0.015ºC/±0.027ºF</td>
                                                </tr>
                                                <tr>
                                                    <td>@ 425 to 700ºC/797 to 1292ºF : ±0.02ºC/±0.036ºF</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1° or 0.01° or 0.001˚</td>
                                                </tr>
                                                <tr>
                                                    <th>Heating time</th>
                                                    <td>33 to 700°C / 91 to 1292°F . . . . . . . . . . . . . 45 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Cooling time</th>
                                                    <td>700 to 100°C / 1292 to 212°F . . . . . . . . . . . 43 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 50°C / 212 to 122°F . . . . . . . . . . . . . 17 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>50 to 33°C / 122 to 91°F . . . . . . . . . . . . . . . 20 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>10 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>200 mm / 7.9 in</td>
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
                                            <li><a href="{{ asset('storage/files/RTC/RTC_700_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC 700 Datasheet</a></li>
                                            <li><a href="{{ asset('storage/files/RTC/RTC_156-157_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC 156/157 Datasheet</a></li>
                                            <li><a href="{{ asset('storage/files/RTC/RTC_158-250_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC 158/250 Datasheet</a></li>
                                            <li><a href="{{ asset('storage/files/RTC/RTC_159_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC 159 Datasheet</a></li>
                                            <li><a href="{{ asset('storage/files/RTC/RTC_187_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC 187 Datasheet</a></li>
                                            <li><a href="{{ asset('storage/files/DLC_Datasheet.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  DLC Datasheet</a></li>                  
                                        </ul> 
                                    </div>

                                    <div class="form-group row no-margin-bottom lasindo-color">
                                        <div class="tab-download-label"><i class="fas fa-caret-down font-25 margin-left-12 i-download-label"></i><label class="label-name-position">Manual</label>  </div>
                                    </div>
                                    <div class="form-group row">
                                        <ul class="tab-download-ul">
                                            <li><a href="{{ asset('storage/files/RTC/RTC_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC User Manual</a></li>
                                            <li><a href="{{ asset('storage/files/RTC/RTC_Reference_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  RTC Reference Manual</a></li>
                                            <li><a href="{{ asset('storage/files/JOFRACAL_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  JofraCal User Manual Temperature</a></li>
                                            <li><a href="{{ asset('storage/files/DLC_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  DLC User Manual </a></li>
                                            <li><a href="{{ asset('storage/files/Ametrim_User_Manual.pdf')}}" class="tab-download-a" download><i class="far fa-file-alt"></i>  Ametrim User Manual</a></li>
                                        </ul> 
                                    </div>

                                </div>
                            </div>
                            <div class="content-space2 to-be-filtered filter-video tab-video-center" >
                                <div class="col-sm-6">
                                    <div class="form-group content-space2"  >
                                        <iframe width="360" height="197" src="https://www.youtube.com/embed/1m_hnKLoNs8"></iframe>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group content-space2" > 
                                        <iframe width="360" height="197"
                                                src="https://www.youtube.com/embed/GG4iDoRqiRU" frameborder="0" allowfullscreen>
                                        </iframe>                                    
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group content-space2" >
                                        <iframe width="360" height="197"
                                                src="https://www.youtube.com/embed/0pTlN-10ULE" frameborder="0" allowfullscreen>
                                        </iframe>                                    
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group content-space2" >
                                        <iframe width="360" height="197"
                                                src="https://www.youtube.com/embed/x7gyu4l9GUo" frameborder="0" allowfullscreen>
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
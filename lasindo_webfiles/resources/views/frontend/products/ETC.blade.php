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
                                <h4>{{getSectionFullName()}} Measurement</h4>
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
                                            <div class="col p-2 d-flex {{$count==1 ? 'active' : '' }} ">
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
                            <div class="form-group">
                                <div class="brand-name">
                                    <h4 style="color: black; font-size: 20pt; text-align: center;">Ametek | Jofra</h4>
                                </div>
                            </div>   
                            <div class="ml-0 mr-0">
                                <div class="row brands">
                                    <div class="col p-2 d-flex cat-brand active nav"  data-filter=".filter-overview">
                                        <div class="align-self-center m-auto"  >
                                            <h2>Overview</h2>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav" data-filter=".filter-spesification" >
                                        <div class="align-self-center m-auto">
                                            <h2>Spesification</h2>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav" data-filter=".filter-download" >
                                        <div class="align-self-center m-auto">
                                            <h2>Download</h2>
                                        </div>
                                    </div>
                                    <div class="col p-2 d-flex cat-brand nav" data-filter=".filter-video">
                                        <div class="align-self-center m-auto">
                                            <h2>Video</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="brand-products">
                            <div class="row to-be-filtered filter-overview" style="margin-top: 5%; margin-left: 9%">
                                <div class="col-lg-6">
                                    <div class="card" style="max-height: 500px; max-width: 300px; margin-left: 30%;">
                                        <img  src="{{ asset('storage/product/etc.jpg')}}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group row" style="margin-bottom: 0%; ">
                                        <h4 style="color: black;">PTC</h4>
                                    </div>
                                    <div class="form-group row" style="margin-top: 0%;">
                                        <h4 style="color: black; font-size: 12pt;">Easy Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <ul>
                                            <li><h5>Temperature range from -10 to 400°C (14 to 752°F) with 3 models</h5></li>
                                            <li><h5>Accuracy to ± 0.5°C and Stability to ± 0.05°C</h5></li>
                                            <li><h5>Time saving fast cooling and heating times</h5></li>
                                            <li><h5>Easy-to-read multi-information display </h5></li>
                                            <li><h5>Customizable stability checkmark with countdown timer</h5></li>
                                            <li><h5>Set exact temperature desired to a resolution of 0.1°C</h5></li>
                                            <li><h5>ETC 400R, small lightweight IR calibrator</h5></li>
                                            <li><h5>Lightweight and easy to carry</h5></li>
                                        </ul>
                                    </div>
                                    <div class="form-group row">
                                        <form style="padding-top: 10px;">
                                            <button class="btn btn-pill btn-warning" type="button" style="float: left; margin-left: 37%;50%; width: 200px; height: 50px; background-color: #fbb03b; color: white;" data-toggle="modal" data-target="#edit-modal">Request Quote</button>
                                        </form>
                                        <div class="modal fade" id="edit-modal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h1 class="modal-title" align="center" style="color: #d3d3d3; font-size: 12pt;">REQUEST QUOTE</h1>
                                                        <button type="button" class="btn btn-sm close" data-dismiss="modal" aria-label="Close" style="border: none;">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="" style="width: 470px; margin-top: 10px;" >
                                                            <form action="{{ route('frontend.request-quote') }}" method="post" enctype="multipart/form-data">
                                                                @csrf
                                                                <div class="row">
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="firstName">First Name &#42;</label>
                                                                        <input class="form-control" id="firstName" name="firstName" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="lastName">Last Name &#42;</label>
                                                                        <input class="form-control" id="lastName" name="lastName" type="text">
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="company">Company/Organization &#42;</label>
                                                                        <input class="form-control" id="company" name="company" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="country">Country &#42;</label>
                                                                        <input class="form-control" id="country" name="country" type="text" required>
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="email">Email &#42;</label>
                                                                        <input class="form-control" id="email" name="email" type="email">
                                                                    </div>
                                                                    <div class="form-group col-sm-6">
                                                                        <label for="postal-code">Phone &#42;</label>
                                                                        <input class="form-control" id="phone" name="phone" type="text" required>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="country">Message/Inquiry &#42;</label>
                                                                    <textarea class="form-control" id="message" name="message" cols="40" rows="5" type="text" style=" height: 100px;" required> </textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <button class="btn btn-sm btn-warning" type="submit" style="float: left;margin-left: 70%; width: 120px; height: 30px; background-color: #FFA500; color: white;">Submit</button>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="mandatory" style="font-size: 7pt; color: blue;"> &#42; <strong>mandatory</strong></label>
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
                                <div class="col-lg-12" style="margin-left: 25%;">
                                    <div class="form-group row" style="margin-bottom: 0%; ">
                                        <h4 style="color: black;">ETC</h4>
                                    </div>
                                    <div class="form-group row" style="margin-top: 0%;">
                                        <h4 style="color: black; font-size: 12pt;">Easy Temperature Calibrator</h4>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer " style="border: none;" valign="middle">
                                                    <th class="align-middle" style="background-color:  #fbb03b; " rowspan="13" valign="middle">ETC 125</th>
                                                    <th>Temperature range</th>
                                                    <td -10 to 125°C / 14 to 1257°F</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle" >Accuracy</th>
                                                    <td>± 0.5°C / ± 0.9°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.05°C / ± 0.09°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1°</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Heating time</th>
                                                    <td>-10 to 23°C / 14 to 73°F . . . . . . . . . . . . . . 3 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>23 to 100°C / 73 to 212°F . . . . . . . . . . . . 11 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 125°C / 212 to 257°F . . . . . . . . . . 7 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3" class="align-middle">Cooling time</th>
                                                    <td>125 to 100°C / 257 to 212°F. . . . . . . . . . . 1 minute</td>
                                                </tr>
                                                <tr>
                                                    <td>100 to 0°C / 212 to 32°F . . . . . . . . . . . . . 17 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>0 to -10°C / 32 to 14°F . . . . . . . . . . . . . . 14 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>3 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>110 mm / 4.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group row">
                                        <table class="table table-responsive-sm table-bordered">
                                            <tbody>
                                                <tr class="spacer" style="border: none;" valign="middle">
                                                    <th class="align-middle" style="background-color:  #fbb03b; " rowspan="13" valign="middle">ETC 400</th>
                                                    <th>Temperature range</th>
                                                    <td>28 to 400°C / 82 to 752°F@ 23°C</td>
                                                </tr>
                                                <tr>
                                                    <th class="align-middle">Accuracy</th>
                                                    <td>± 0.5°C / +0.9°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Stability</th>
                                                    <td>± 0.15°C / ± 0.27°F</td>
                                                </tr>
                                                <tr>
                                                    <th>Resolution (user-selectable)</th>
                                                    <td>1° or 0.1°</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Heating time</th>
                                                    <td>28 to 200°C / 82 to 392°F . . . . . . . . . . . . 2 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>200 to 400°C / 392 to 752°F . . . . . . . . . . 3 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2" class="align-middle">Cooling time</th>
                                                    <td>400 to 200°C / 752 to 392°F . . . . . . . . . . 6 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>200 to 50°C / 392 to 122°F . . . . . . . . . . . 15 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Time to Stability</th>
                                                    <td>3 minutes</td>
                                                </tr>
                                                <tr>
                                                    <th>Immersion depth</th>
                                                    <td>110 mm / 4.3 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="brand-name filter-download">
                                <div class="col-lg-12" style="margin-left: 15%; margin-bottom: 10%;">
                                    
                                    <div class="form-group row" style="margin-bottom: 0%;">
                                        <button class="btn btn-lg btn-warning" style="background-color: #fbb03b; color: white; padding-right: 700px;"  type="button"><i class="fas fa-caret-down" style="font-size: 25px;"></i>  Brochur</button>
                                    </div>
                                    <div class="form-group row">
                                        <ul style="list-style-type:none; margin-top: 2%;">
                                            <li><a href="{{ asset('storage/files/Ametek_Calibration_Overview_Brochure.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i> Temperature Calibrator Overview</li>
                                            <li><a href="{{ asset('storage/files/Temperature_Calibrator_Overview.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i> Ametek Calibrator Overview Brochure</a></li>
                                        </ul> 
                                    </div>

                                    <div class="form-group row" style="margin-bottom: 0%">
                                        <button class="btn btn-lg btn-warning" style="background-color: #fbb03b; color: white; padding-right: 700px;"  type="button"><i class="fas fa-caret-down" style="font-size: 25px;"></i>  Datasheet</button>
                                    </div>
                                    <div class="form-group row">
                                        <ul style="list-style-type:none; margin-top: 2%;">
                                            <li><a href="{{ asset('storage/files/ETC/ETC_Datasheet.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i>  ETC 125/400 Datasheet</li>
                                            </ul> 
                                    </div>

                                    <div class="form-group row" style="margin-bottom: 0%">
                                        <button class="btn btn-lg btn-warning" style="background-color: #fbb03b; color: white; padding-right: 700px;"  type="button"><i class="fas fa-caret-down" style="font-size: 25px;"></i>  Manual</button>
                                    </div>
                                    <div class="form-group row">
                                        <ul style="list-style-type:none; margin-top: 2%;">
                                            <li><a href="{{ asset('storage/files/ETC/ETC_User_Manual.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i>  ETC User Manual</li></a>
                                            <!--<li><a href="{{ asset('storage/files/ETC/PTC_Reference_Manual.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i>  ETC Reference Manual</li>-->
                                            <li><a href="{{ asset('storage/files/JOFRACAL_User_Manual.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i>  JofraCal User Manual Temperature</li>
                                            <li><a href="{{ asset('storage/files/Ametrim_User_Manual.pdf')}}" style="font-size: 15pt; color: black;" download><i class="far fa-file-alt"></i>  Ametrim User Manual</li>
                                        </ul> 
                                    </div>

                                </div>
                            </div>
                            <div class="row to-be-filtered filter-video" style="margin-top: 5%; margin-left: 9%">
                                <h2>Empty ...</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
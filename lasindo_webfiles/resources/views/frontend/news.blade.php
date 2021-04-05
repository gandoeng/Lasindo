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
        			<div class="row border border-dark" style="margin-top: 5%; margin-left: 9%">
                        <div class="col-lg-6" style="padding-left: 0%;">
                            
                                <img style="height: 100%; width: 100%; margin: auto; display: block;" src="{{ asset('storage/photos/foto1.jpeg')}}">
                        
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row" style="margin-bottom: 0%;">
                                <p class="limit-text" style="height: 170px; display: block; overflow: hidden; font-size: 16pt; text-align: justify;" maxlength="50">
                                	Mesin adalah alat mekanik atau elektrik yang mengirim atau mengubah energi untuk melakukan atau alat membantu mempermudah pekerjaan manusia. Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel

                                	Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel
                                	Mesin adalah alat mekanik atau elektrik yang mengirim atau mengubah energi untuk melakukan atau alat membantu mempermudah pekerjaan manusia. Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel

                                </p>
                            </div>
                            <div class="form-group row">
                                <button class="btn btn-pill btn-warning" type="button" style="float: left; margin-left: 60%;50%; width: 200px; height: 50px; background-color: #fbb03b; color: white;" data-toggle="modal" data-target="#edit-modal">Read More!</button>
                            </div>
                        </div>
                    </div>

        			<div class="row border border-dark" style="margin-top: 5%; margin-left: 9%">
                        <div class="col-lg-6" style="padding-left: 0%;">
                            
                                <img style="height: 100%; width: 100%; margin: auto; display: block;" src="{{ asset('storage/photos/foto1.jpeg')}}">
                        
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row" style="margin-bottom: 0%;">
                                <p class="limit-text" style="height: 170px; display: block; overflow: hidden; font-size: 16pt; text-align: justify;" maxlength="50">
                                	Mesin adalah alat mekanik atau elektrik yang mengirim atau mengubah energi untuk melakukan atau alat membantu mempermudah pekerjaan manusia. Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel

                                	Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel
                                	Mesin adalah alat mekanik atau elektrik yang mengirim atau mengubah energi untuk melakukan atau alat membantu mempermudah pekerjaan manusia. Biasanya membutuhkan sebuah masukan sebagai pemicu, mengirim energi yang telah diubah menjadi sebuah keluaran, yang melakukan tugas yang telah disetel

                                </p>
                            </div>
                            <div class="form-group row">
                                <button class="btn btn-pill btn-warning" type="button" style="float: left; margin-left: 60%;50%; width: 200px; height: 50px; background-color: #fbb03b; color: white;" data-toggle="modal" data-target="#edit-modal">Read More!</button>
                            </div>
                        </div>
                    </div>
        		</div>
        	</div>
        </div>
	</main>
@endsection
@extends('backend.layouts.app')

@section('title', __('Create News'))

@section('content')
<div class="col-lg-12">
<div class="card">
	<div class="card-header"><strong>Create News</strong></div>
	@foreach($news as $n)
<form class="form-horizontal" action="{{route('admin.news.updateNewsButton',array($n->id))}}" method="post" enctype="multipart/form-data">
		@csrf			
		<div class="card-body">
			<div class="form-group row">
				<label class="col-lg-12 col-form-label" for="input-normal">Title</label>
				<div class="col-lg-12">
					<input class="form-control" id="title" type="text" name="title" placeholder="News Title" value="{{$n->title}}" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-12 col-form-label" for="input-normal">Image</label>
				<div class="col-lg-12">
					<input class="form-control" id="newsImage" type="file" name="newsImage" placeholder="News Image" accept="image/*" value="{{$n->newsImage}}" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-12 col-form-label" for="input-normal">Author</label>
				<div class="col-lg-12">
					<input class="form-control" id="author" type="text" name="author" placeholder="News Author" value="{{ $n->author}}" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-12 col-form-label" for="input-normal">Date</label>
				<div class="col-lg-12">
					<input class="form-control" id="newsDate" type="date" name="newsDate" placeholder="Date" value="{{$n->newsDate}}" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-lg-12 col-form-label" for="input-normal">Content</label>
				<div class="col-lg-12">
    				<textarea id="mytextarea" name="mytextarea" required><?= str_replace('"', ' ',$n->newsContent)?></textarea>
  				</div>
			</div>
		</div>
		@endforeach
	<div class="card-footer">
		<div class="col-lg-12">
			<button class="btn btn-primary spasiTombolKiri tombolKanan" type="submit" style="margin-left:7px; margin-bottom: 7px; float: right; "> Update</button>
		</div>
</form>
		<div class="col-lg-12">
			<form class="form-horizontal tombolKanan" method="get" action="{{ route('admin.news')}}">
				<button class="btn btn-danger" type="submit" style="color: white; margin-bottom: 7px; float: right;"> Cancel</button>
			</form>
		</div>
	</div>
</div>
</div>
@endsection
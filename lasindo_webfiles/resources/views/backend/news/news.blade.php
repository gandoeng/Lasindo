@extends('backend.layouts.app')

@section('title', 'Update | Lasindo Administrator' )

@section('content')
	<div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">
					News List
					<a class="btn btn-dark" type="button" href="{{ route('admin.createNews')}}">Create News</a>
				</div>
				<div class="card-body">
					<table class="table table-responsive-sm">
						<thead>
							<tr>
								<th>Title</th>
								<th>Author</th>
								<th>Date</th>
								<th>Publice</th>
								<th>Image</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
						@foreach($news as $n)
							<tr>
								<td>{{ $n->title }}</td>
								<td>{{ $n->author }}</td>
								<td>{{ $n->newsDate }}</td>
								@if( $n->newsPublice == "set")
								<td><span class="badge badge-success">Published</span></td>
								@else
								<td><span class="badge badge-danger">Unpublished</span></td>
								@endif
								<td><img src="{{asset('storage/photos/newsPhotos/'.$n->newsImage)}}" style="max-width: 30px; max-height: 30px;"></td>
								<td style="">
									<form style="float: left;" action="{{route('admin.news.deleteNews',array($n->id))}}" method="post">
										@csrf
										<button class="btn btn-danger btn-sm spasiTombolKiri" type="submit"><i class="fas fa-trash"></i></button>
									</form>
									@if($n->newsPublice == 'unset')
									<form style="float: left;" action="{{route('admin.news.newsPublice',array($n->id))}}" method="get">
										<button class="btn btn-info btn-sm spasiTombolKiri" type="submit" ><i class="fas fa-check-circle"></i></button>
									</form>
									@else
									<form style="float: left;" action="{{route('admin.news.newsUnpublice',array($n->id))}}" method="get">
										<button class="btn btn-info btn-sm spasiTombolKiri" type="submit" ><i class="fas fa-minus-circle"></i></button>
									</form>
									@endif
									<button type="button" style="float: left;" class="btn btn-warning btn-sm spasiTombolKiri" data-toggle="modal" data-target="#edit-modal">
              							<i class="far fa-file-alt"></i>
              						</button>
              						<form style="float: left;" action="{{route('admin.updateNews',array($n->id))}}" method="get">
              							<button type="submit" class="btn btn-danger btn-sm spasiTombolKiri">
              							<i class="fas fa-edit"></i>
                        				</button>
                        			</form>
								</td>
							</tr>
							<div class="modal fade" id="edit-modal">
  								<div class="modal-dialog">
    								<div class="modal-content">
      									<div class="modal-header">
        									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
         										<span aria-hidden="true">&times;</span>
        									</button>
        									<h4 class="modal-title" align="center"></h4>
    									</div>
      									<div class="modal-body">
        									<?= str_replace('"', ' ',$n->newsContent)?>
      									</div>
    								</div>
  								</div>
							</div>
						@endforeach
						</tbody>
 					</table>
				</div>
			</div>
		</div>
	</div>
@endsection
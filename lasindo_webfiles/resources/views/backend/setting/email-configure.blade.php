@extends('backend.layouts.app')

@section('title', 'Setting | Lasindo Administrator' )

@section('content')
<div class="row">
	<div class="col-lg-6">
		<div class="card">
			<div class="card-header">Email Receiver</div>
			<div class="card-body">
				<table class="table table-responsive-sm">
					<thead>
						<tr>
							<th>Email</th>
							<th>Status</th>
							<th>Set</th>
						</tr>
					</thead>
					<tbody>
						@foreach($email as $e)
						<tr>
							<td>{{ $e->email }}</td>
							@if($e->statusEmail == "set")
							<td><span class="badge badge-success">{{ $e -> statusEmail}}</span></td>
							@else
							<td><span class="badge badge-danger">{{ $e -> statusEmail}}</span></td>
							@endif
							<td>
								@if($e->statusEmail == "set")
								<form action="{{route('admin.unsetEmail',array($e->id))}}" method="post" enctype="multipart/form-data">
									@csrf
									<button class="btn btn-sm btn-danger" type="submit">Unset</button>
								</form>
								@else
								<form action="{{route('admin.setEmail',array($e->id))}}" method="post" enctype="multipart/form-data">
									@csrf
									<button class="btn btn-sm btn-primary" type="submit">Set</button>
								</form>
								@endif
							</td>
						</tr>
						@endforeach
					</tbody>
 				</table>
			</div>
		</div>
	</div>
</div>

@endsection
@extends('backend.layouts.app')

@section('title', 'Setting | Lasindo Administrator' )

@section('content')
<div class="row">
	<div class="col-lg-6">
		<div class="card">
			<div class="card-header">Email Receiver <a class="btn btn-dark" type="button" href="{{ route('admin.setting.updateEmail')}}" style="float: right;">Edit Data</a></div>
			<div class="card-body">
				<table class="table table-responsive-sm">
					<thead>
						<tr>
							<th>Information</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						@foreach($email as $e)
						<tr>
							<td>{{ $e->ListEmail }}</td>
							<td>{{ $e->email }}</span></td>
						</tr>
						@endforeach
					</tbody>
 				</table>
			</div>
		</div>
	</div>
</div>

@endsection
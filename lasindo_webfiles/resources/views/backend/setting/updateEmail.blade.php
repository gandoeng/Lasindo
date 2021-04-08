@extends('backend.layouts.app')

@section('title', 'Update Email | Lasindo Administrator' )

@section('content')
<div class="row">
	<div class="col-md-6">
		<div class="card">
			<form method="post" action="{{route('admin.setting.updateEmailBut')}} " enctype="multipart/form-data">
			@csrf
			<div class="card-header"><strong>Update Email</strong></div>
				<div class="card-body">
					@foreach($data1 as $d1)
						<div class="form-group row">
							<label class="col-md-3 col-form-label" for="hf-email">Email Admin</label>
							<div class="col-md-9">
								<input class="form-control" id="adminEmail" type="email" name="adminEmail" value="{{$d1->value}}">	
							</div>
						</div>
					@endforeach
					@foreach($data2 as $d2)
						<div class="form-group row">
							<label class="col-md-3 col-form-label" for="hf-email">Email Product</label>
							<div class="col-md-9">
								<input class="form-control" id="productEmail" type="email" name="productEmail" value="{{$d2->value}}">	
							</div>
						</div>
					@endforeach
				</div>
			<div class="card-footer">
					<button class="btn btn-sm btn-primary" type="submit" style="float: right;"> Update</button>
				</form>
				<form method="get" action="{{route('admin.setting')}}" style="float: right;">
					<button class="btn btn-sm btn-danger" type="submit"> Cancel</button>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection
@extends('backend.layouts.app')

@section('title', 'File Manager' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0">File Manager</h4>
            </div>
        </div>

        <div class="row mt-4 mb-4">
            <div class="col">
              <iframe src="/filemanager" style="width: 100%; height: 500px; overflow: hidden; border: none;"></iframe>
            </div>
        </div>

    </div><!--card-body-->
</div><!--card-->
@endsection

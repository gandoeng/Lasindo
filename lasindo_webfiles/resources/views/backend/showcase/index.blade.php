@extends('backend.layouts.app')

@section('title', 'Showcase Products | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-th-large"></i> Showcase Products</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addNew"><i class="fas fa-plus"></i>&nbsp; Add New Showcase</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add New Showcase</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{ route('admin.showcase.add') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="name">Showcase's Name</label>
                                                    <input type="text" name="name" class="form-control" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="link">Link to category/section <i style="color:green">(e.g: https://lasindo.com/products/fire-gas-detection/)</i></label>
                                                    <input type="text" name="link" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="brand">Brand</label>
                                                    <select name="brand" class="form-control" required>
                                                        <option value="none">Choose Brand..</option>
                                                        @foreach ($brands as $brand)
                                                            <option value="{{$brand->name}}">{{$brand->name}}</option>
                                                        @endforeach
                                                    </select>                                           
                                                </div>
                                                <div class="form-group">
                                                    <label for="layout">Layout</label>
                                                    <select name="layout" id="layout" class="form-control" required>
                                                        <option value="full">Full <i class="fas fa-stop"></i> </option>
                                                        <option value="sidebyside"><i class="fas fa-th-large"></i> Side by side</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="imgSlide">Image (product/background) <br><i style="color:green">(recommended high quality with size max. 1MB)</i></label>
                                                    <div class="input-group">
                                                        <span class="input-group-btn">
                                                          <a style="color: white" id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                                            <i class="fas fa-image"></i>&nbsp; Choose
                                                          </a>
                                                        </span>
                                                        <input id="thumbnail" class="form-control" type="text" name="image" required>
                                                    </div>
                    
                                                    <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-upload"></i>&nbsp; Add</button>
                                                </div>
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

        <div class="row mt-4 mb-4">
            <div class="col-md-8">
                <div class="table-responsive">
                    <table id="dataTables" class="table">
                        <thead class="text-center">
                        <tr>
                            <th width="15px">#</th>
                            <th width="200px">Image</th>
                            <th>Name</th>
                            <th width="150px">Layout</th>
                            <th width="150px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($show as $s){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <img src="{{ $s->image }}" height="100px" alt="{{ $s->name }}">
                                </td>
                                <td style="vertical-align: middle">
                                    <a href="{{ route('admin.showcase.edit', $s->id) }}" data-toggle="tooltip" data-placement="top" title="Click to see details/edit"><b>{{ $s->name }}</b></a>
                                </td>
                                <td style="vertical-align: middle"><b>{{ $s->layout }}</b></td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="{{ route('admin.showcase.edit', $s->id) }}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 show-remove" href="#" data-name="{{ $s->name }}" data-id="{{ $s->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>

                            @php
                            }
                            @endphp
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div><!--card-body-->
</div><!--card-->

{{-- Showcase Banner --}}
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-image"></i> Showcase Banner</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addBanner"><i class="fas fa-plus"></i>&nbsp; Add New Banner</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="addBanner" tabindex="-1" role="dialog" aria-labelledby="addBanner" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add New Showcase Banner</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{ route('admin.showcase.banner.add') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="name">Showcase's Name</label>
                                                    <input type="text" name="name" class="form-control" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="link">Link to category/section <i style="color:green">(e.g: https://lasindo.com/products/fire-gas-detection/)</i></label>
                                                    <input type="text" name="link" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="imgSlide">Image (product/background) <br><i style="color:green">(recommended high quality with size max. 1MB)</i></label>
                                                    <div class="input-group">
                                                        <span class="input-group-btn">
                                                          <a style="color: white" id="lfm1" data-input="thumbnail2" data-preview="holder" class="btn btn-primary">
                                                            <i class="fas fa-image"></i>&nbsp; Choose
                                                          </a>
                                                        </span>
                                                        <input id="thumbnail2" class="form-control" type="text" name="image" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="brand">Brand <br><i style="color:green">(if no need brand, choose No Brand)</i></label>
                                                    <select name="brand" class="form-control" required>
                                                        <option value="none">No Brand</option>
                                                        @foreach ($brands as $brand)
                                                            <option value="{{$brand->name}}">{{$brand->name}}</option>
                                                        @endforeach
                                                    </select>  
                                                    <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-upload"></i>&nbsp; Add</button>                                         
                                                </div>
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

        <div class="row mt-4 mb-4">
            <div class="col-md-8">
                <div class="table-responsive">
                    <table id="dataTable" class="table">
                        <thead class="text-center">
                        <tr>
                            <th width="15px">#</th>
                            <th width="200px">Image</th>
                            <th>Name</th>
                            <th width="150px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($showb as $sb){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <img src="{{ $sb->image }}" height="100px" alt="{{ $sb->name }}">
                                </td>
                                <td style="vertical-align: middle">
                                    <a href="{{ route('admin.showcase.banner.edit', $sb->id) }}" data-toggle="tooltip" data-placement="top" title="Click to see details/edit"><b>{{ $sb->name }}</b></a>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="{{ route('admin.showcase.banner.edit', $sb->id) }}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 showb-remove" href="#" data-name="{{ $sb->name }}" data-id="{{ $sb->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>

                            @php
                            }
                            @endphp
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div><!--card-body-->
</div><!--card-->
@endsection

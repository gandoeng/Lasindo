@extends('backend.layouts.app')

@section('title', 'Brands | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-certificate"></i> Brands</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addNew"><i class="fas fa-plus"></i>&nbsp; Add New Brand</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add New Brand</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{ route('admin.probrands.brand.add') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="name">Brand's Name</label>
                                                    <input id="autof" type="text" name="name" class="form-control" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="desc">Brand's Description</label>
                                                    <textarea id="withCE" name="desc" class="form-control" required></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="imgSlide">Brand's Logo <br><i style="color:green">(recommended high quality with size max. 2MB)</i></label>
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
                            <th width="150px">Logo</th>
                            <th>Name</th>
                            <th width="200px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($brands as $br){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <img src="{{ $br->image }}" width="100px" alt="{{ $br->name }}">
                                </td>
                                <td style="vertical-align: middle">
                                    <a href="{{ route('admin.probrands.brand.edit', $br->id) }}" data-toggle="tooltip" data-placement="right" title="Click to see products related"><b>{{ $br->name }}</b></a>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="{{ route('admin.probrands.brand.edit', $br->id) }}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 brand-remove" href="#" data-name="{{ $br->name }}" data-id="{{ $br->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
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

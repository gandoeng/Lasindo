@extends('backend.layouts.app')

@section('title', 'Slide Banners | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-images"></i> Slide Banners</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addNew"><i class="fas fa-plus"></i>&nbsp; Add New Slide</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add New Slide Banner</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{ route('admin.slides.add') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group">
                                                    <label for="headline">Headline</label>
                                                    <input id="autof" type="text" name="headline" class="form-control" required autofocus>
                                                </div>
                                                <div class="form-group">
                                                    <label for="imgSlide">Upload Image <br><i style="color:green">(recommended landscape size max. 2MB with min. resolution: <b>1200 x 800px</b>)</i></label>
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
                            <th width="250px">Image</th>
                            <th>Headline</th>
                            <th width="200px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($slides as $sl){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <a href="{{ $sl->image }}" data-lightbox="slideshows" data-title="{{ $sl->headline }}">
                                        <img src="{{ $sl->image }}" width="150px" alt="{{ $sl->headline }}">
                                    </a>
                                </td>
                                <td style="vertical-align: middle">
                                    <a href="#" data-toggle="modal" data-target="#edit{{$count}}" data-toggle="tooltip" data-placement="right" title="Click for details/edit"><b>{{ $sl->headline }}</b></a>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="#" data-toggle="modal" data-target="#edit{{$count}}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 slide-remove" href="#" data-name="{{ $sl->headline }}" data-id="{{ $sl->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>

                            <!-- Modal Edit -->
                            <div class="modal fade" id="edit{{$count}}" tabindex="-1" role="dialog" aria-labelledby="edit{{$count}}" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Edit Slide '{{ $sl->headline }}'</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">             
                                            <form action="{{ route('admin.slides.update', ['id' => $sl->id]) }}" method="POST" enctype="multipart/form-data">
                                                @csrf
                                                @method('put')
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <label for="headline">Headline</label>
                                                            <input type="text" name="headline" class="form-control" required autofocus value="{{ $sl->headline }}">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="imgSlide">Upload Image <br><i style="color:green">(recommended landscape size max. 2MB with min. resolution: <b>1200 x 800px</b>, file names cannot have spaces e.g: <b>blue_sky.jpg/bluesky.jpg</b> )</i></label>
                                                            <div class="input-group">
                                                                <span class="input-group-btn">
                                                                <a style="color: white" id="lfm1" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                                                    <i class="fas fa-image"></i>&nbsp; Choose
                                                                </a>
                                                                </span>
                                                                <input id="thumbnail" class="form-control" type="text" name="image" required value="{{ $sl->image }}">
                                                            </div>
                            
                                                            <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-sync"></i>&nbsp; Update</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

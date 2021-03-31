@extends('backend.layouts.app')

@section('title', 'About | Lasindo Administrator' )

@section('content')
<div class="row">
    <div class="col-8">
        <div class="card">
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-5">
                        <h4 class="card-title font-weight-bold mb-0">About</h4>
                    </div>
                </div>
        
                <div class="row">
                  <div class="col">
                      <form action="{{ route('admin.about.update',$desc[0]->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="about_main">About Lasindo's Description</label>
                                    <textarea id="withCE" name="about_main" class="form-control" required autofocus>{!!$desc[0]->about_main!!}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="about_hse">About HSE's Description</label>
                                    <textarea id="withCE1" name="about_hse" class="form-control" required>{!!$desc[0]->about_hse!!}</textarea>
                                    
                                    <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-sync"></i>&nbsp; Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
                  </div>
                </div>
        
            </div><!--card-body-->
        </div><!--card-->
        
    </div>
    <div class="col-4">
        <div class="card">
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-5">
                        <h4 class="card-title font-weight-bold mb-0">About Images</h4>
                    </div>
                </div>
        
                <div class="row">
                    <div class="col">
                        <form action="{{ route('admin.about.image.add') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="imgSlide">Image <br><i style="color:green">(recommended high quality/not blur with size max. 1MB)</i></label>
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <a style="color: white" id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                                <i class="fas fa-image"></i>&nbsp; Choose</a>
                                            </span>
                                            <input id="thumbnail" class="form-control" type="text" name="about_image" required>
                                        </div>
          
                                        <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-plus"></i>&nbsp; Add</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row mt-4 mb-4">
                    <div class="col">
                        <div class="table-responsive">
                            <table id="dataTables" class="table">
                                <thead class="text-center">
                                <tr>
                                    <th width="15px">#</th>
                                    <th width="200px">Image</th>
                                    <th width="80px">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $count = 0;
        
                                        foreach($images as $img){
                                            $count = $count + 1;
                                    @endphp
                                    <tr>
                                        <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                        <td class="text-center" style="vertical-align: middle">
                                            <a href="{{ $img->about_image }}" data-lightbox="products">
                                                <img src="{{ $img->about_image }}" height="100px">
                                            </a>
                                        </td>
                                        <td style="vertical-align: middle;" class="text-center">
                                            <a class="btn btn-sm btn-danger py-2 abimg-remove" href="#" data-id="{{ $img->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
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
    </div>
</div>

@endsection

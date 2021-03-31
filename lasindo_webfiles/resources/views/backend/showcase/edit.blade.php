@extends('backend.layouts.app')

@section('title', 'Showcase Products | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row mb-4">
            <div class="col-sm-5">
                <h4 class="card-title font-weight-bold mb-0">Edit Showcase Products</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="{{route('admin.showcase.index')}}" class="btn btn-sm btn-secondary"><i class="fas fa-angle-left"></i>&nbsp; Back</a>
                </div>                
            </div>
        </div>

        <div class="row">
          <div class="col-md-8">
            @if (Route::currentRouteName()=='admin.showcase.edit')
                <form action="{{ route('admin.showcase.update',$sc->id) }}" method="POST" enctype="multipart/form-data">
            @elseif (Route::currentRouteName()=='admin.showcase.banner.edit')
                <form action="{{ route('admin.showcase.banner.update',$sc->id) }}" method="POST" enctype="multipart/form-data">
            @endif
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="name">Showcase's Name</label>
                            <input type="text" name="name" class="form-control" required autofocus value="{{$sc->name}}">
                        </div>
                        <div class="form-group">
                            <label for="link">Link to category/section <i style="color:green">(e.g: https://lasindo.com/products/fire-gas-detection/)</i></label>
                            <input type="text" name="link" class="form-control" required value="{{$sc->link}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="brand">Brand 
                                @if (Route::currentRouteName()=='admin.showcase.banner.edit')
                                    <br><i style="color:green">(if no need brand, choose No Brand)</i>
                                @endif
                            </label>
                            <select name="brand" class="form-control" required>
                                @if ($sc->brand=='none')
                                    <option value="none" selected>No brand</option>
                                @endif
                                @foreach ($brands as $brand)
                                    @if ($sc->brand==$brand->name)
                                        <option value="{{$brand->name}}" selected>{{$brand->name}}</option>
                                    @else
                                        <option value="{{$brand->name}}">{{$brand->name}}</option>
                                    @endif
                                @endforeach
                            </select>                                           
                        </div>
                        @if (Route::currentRouteName()=='admin.showcase.edit')
                        <div class="form-group">
                            <label for="layout">Layout</label>
                            <select name="layout" id="layout" class="form-control" required>
                                @if ($sc->layout=='full')
                                <option value="full" selected>Full</option>                                    
                                <option value="sidebyside">Side by side</option>
                                @else                                    
                                <option value="full">Full</option>                                    
                                <option value="sidebyside" selected>Side by side</option>
                                @endif
                            </select>
                        </div>
                        @endif
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
                                <input id="thumbnail" class="form-control" type="text" name="image" required value="{{$sc->image}}">
                            </div>

                            <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-sync"></i>&nbsp; Update</button>
                        </div>
                    </div>
                </div>
            </form>
          </div>
        </div>

    </div><!--card-body-->
</div><!--card-->
@endsection

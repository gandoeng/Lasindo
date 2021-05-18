@extends('backend.layouts.app')

@section('title', 'Products | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row mb-4">
            <div class="col-sm-5">
                <h4 class="card-title font-weight-bold mb-0">Edit {{ $pr->name }}</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="{{route('admin.probrands.product.index')}}" class="btn btn-sm btn-secondary"><i class="fas fa-angle-left"></i>&nbsp; Back</a>
                </div>                
            </div>
        </div>

        <div class="row">
          <div class="col-md-8">            
            <form action="{{ route('admin.probrands.product.update',$pr->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="category">Category</label>
                            <select name="category" id="cate" class="form-control" required autofocus>
                                <option value="none">Choose Category..</option>
                                @foreach ($category as $cat)
                                    @if ($pr->category==$cat->category_name)
                                        <option value="{{$cat->category_name}}" selected>{{$cat->category_name}}</option>
                                    @else
                                        <option value="{{$cat->category_name}}">{{$cat->category_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="section">Section</label>
                            <select name="section" id="section" class="form-control" required>
                                @foreach ($sections as $s)
                                    @if ($pr->section==$s->section)
                                        <option value="{{$s->section}}" selected>{{$s->section}}</option>
                                    @else
                                        <option value="{{$s->section}}">{{$s->section}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="brand">Brand</label>
                            <select name="brand" class="form-control" required>
                                <option value="none">Choose Brand..</option>
                                @foreach ($brands as $brand)
                                    @if ($pr->brand==$brand->name)
                                        <option value="{{$brand->name}}" selected>{{$brand->name}}</option>
                                    @else
                                        <option value="{{$brand->name}}">{{$brand->name}}</option>
                                    @endif
                                @endforeach
                            </select>                                           
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="layout">Layout</label>
                            <select name="layout" id="layout" class="form-control" required>
                                @if ($pr->layout=='full')
                                    <option value="full" selected>Full</option>                                    
                                    <option value="sidebyside">Side by side</option>
                                @else                                    
                                    <option value="full">Full</option>                                    
                                    <option value="sidebyside" selected>Side by side</option>
                                @endif
                            </select>
                        </div>
                    </div>

                    <div class="col">
                        <div class="form-group">
                            <label for="name">Product's Name</label>
                            <input type="text" name="name" class="form-control" value="{{$pr->name}}" required>
                        </div>
                        <div class="form-group">
                            <label for="desc">Product's Description</label>
                            <textarea id="withCE1" name="desc" class="form-control" required>{!!$pr->desc!!}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="imgSlide">Product's Image <br><i style="color:green">(recommended high quality with size max. 2MB)</i></label>
                            <div class="input-group">
                                <span class="input-group-btn">
                                <a style="color: white" id="lfm1" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                    <i class="fas fa-image"></i>&nbsp; Choose
                                </a>
                                </span>
                                <input id="thumbnail" class="form-control" type="text" name="image" value="{{$pr->image}}" required>
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

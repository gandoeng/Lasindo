@extends('backend.layouts.app')

@section('title', 'Products | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-box"></i> Products</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addNew"><i class="fas fa-plus"></i>&nbsp; Add New Product</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add New Product</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{ route('admin.probrands.product.add') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="category">Category</label>
                                                    <select name="category" id="cate" class="form-control" required>
                                                        <option value="none">Choose Category..</option>
                                                        @foreach ($category as $cat)
                                                            <option value="{{$cat->category_name}}">{{$cat->category_name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="section">Section</label>
                                                    <select name="section" id="section" class="form-control" required></select>
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
                                            </div>
                                            <div class="col-md-6">
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
                                                    <label for="name">Product's Name</label>
                                                    <input type="text" name="name" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="desc">Product's Description</label>
                                                    <textarea id="withCE1" name="desc" class="form-control" required></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="imgSlide">Product's Image <br><i style="color:green">(recommended high quality with size max. 2MB)</i></label>
                                                    <div class="input-group">
                                                        <span class="input-group-btn">
                                                        <a style="color: white" id="lfm1" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
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
            <div class="col">
                <div class="table-responsive">
                    <table id="dataTables" class="table">
                        <thead class="text-center">
                        <tr>
                            <th width="15px">#</th>
                            <th width="200px">Image</th>
                            <th>Name</th>
                            <th>Brand</th>
                            <th>Category/Section</th>
                            <th width="200px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($products->where('category','Products') as $pr){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <a href="{{ $pr->image }}" data-lightbox="products" data-title="{{ $pr->brand.' | '.$pr->name }}">
                                        <img src="{{ $pr->image }}" height="100px" alt="{{ $pr->name }}">
                                    </a>
                                </td>
                                <td style="vertical-align: middle">
                                    <b>{{ $pr->name }}</b>
                                </td>
                                <td class="text-center" style="vertical-align: middle">
                                    @php
                                        $id = '';
                                        foreach ($brands as $br) {
                                            if ($pr->brand==$br->name) {
                                                $id = $br->id;
                                            }
                                        }
                                    @endphp
                                    <a href="{{route('admin.probrands.brand.edit',$id)}}" data-toggle="tooltip" data-placement="top" title="Click for details"><b>{{ $pr->brand }}</b></a>
                                </td>
                                <td class="text-center" style="vertical-align: middle">
                                    <b>{{ $pr->category.'/'.$pr->section }}</b>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="{{ route('admin.probrands.product.edit', $pr->id) }}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 prod-remove" href="#" data-name="{{ $pr->name }}" data-id="{{ $pr->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
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

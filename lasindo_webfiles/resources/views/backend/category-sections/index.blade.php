@extends('backend.layouts.app')

@section('title', 'Category & Sections | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-cube"></i> Category</h4>
            </div>
        </div>

        <div class="row mt-4 mb-4">
            <div class="col-md-6">
                <div class="table-responsive">
                    <table id="dataTables" class="table">
                        <thead class="text-center">
                            <tr>
                                <th width="15px">#</th>
                                <th width="200px">Category Name</th>
                                <th width="50px">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($category as $c){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td style="vertical-align: middle"><b>{{ $c->category_name }}</b></td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-danger py-2 cat-remove" href="#" data-name="{{ $c->category_name }}" data-id="{{ $c->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>
                            @php
                            }
                            @endphp
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-3">           
                <form action="{{ route('admin.cat.add') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="catname">Category Name</label>
                                <input id="autof" type="text" name="category_name" class="form-control" required>
                                
                                <button type="submit" class="btn btn-success mt-2 float-right"><i class="fas fa-upload"></i>&nbsp; Add</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div><!--card-body-->
</div><!--card-->
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-cubes"></i> Sections</h4>
            </div>
        </div>

        <div class="row mt-4 mb-4">
            <div class="col-md-6">
                <div class="table-responsive">
                    <table id="dataTable" class="table">
                        <thead class="text-center">
                            <tr>
                                <th width="15px">#</th>
                                <th width="100px">Category</th>
                                <th width="200px">Section Name</th>
                                <th width="50px">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($sections as $sc){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td style="vertical-align: middle"><b>{{ $sc->category_name }}</b></td>
                                <td style="vertical-align: middle"><b>{{ $sc->section }}</b></td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-danger py-2 sec-remove" href="#" data-name="{{ $sc->section }}" data-id="{{ $sc->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>
                            @php
                            }
                            @endphp
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-3">           
                <form action="{{ route('admin.sec.add') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="catname">Choose Category</label>
                                <select name="category_name" id="catname" class="form-control" required>
                                    @foreach ($category as $cat)
                                        <option value="{{$cat->category_name}}">{{$cat->category_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="section">Section Name</label>
                                <input id="section" type="text" name="section" class="form-control" required autofocus>
                                
                                <button type="submit" class="btn btn-success mt-2 float-right"><i class="fas fa-upload"></i>&nbsp; Add</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div><!--card-body-->
</div>
@endsection

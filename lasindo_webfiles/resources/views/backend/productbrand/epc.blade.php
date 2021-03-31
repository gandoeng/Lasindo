@extends('backend.layouts.app')

@section('title', 'EPC | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-hand-holding-water"></i> EPC</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#addNew"><i class="fas fa-plus"></i>&nbsp; Add New EPC Item</a>

                        <!-- Modal Add New -->
                        <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNew" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Add New Item</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">             
                                        <form action="{{ route('admin.probrands.epc.add') }}" method="POST" enctype="multipart/form-data">
                                            @csrf
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="desc">Description</label>
                                                        <textarea id="withCE" name="desc" class="form-control" required></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-group">
                                                        <label for="imgSlide">Item's Image <br><i style="color:green">(recommended high quality with size max. 1MB)</i></label>
                                                        <div class="input-group">
                                                            <span class="input-group-btn">
                                                            <a style="color: white" id="lfm1" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                                                <i class="fas fa-image"></i>&nbsp; Choose
                                                            </a>
                                                            </span>
                                                            <input id="thumbnail" class="form-control" type="text" name="image" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="imagepos">Image position <br><i style="color:green">(image position on the page)</i></label>
                                                        <select name="imagepos" id="imagepos" class="form-control" required>
                                                            <option value="right">Right</option>
                                                            <option value="left">Left</option>
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

        <div class="row my-4">
            <div class="col-md-4">
                <form action="{{route('admin.probrands.epcname.update',$epcname[0]->id)}}" method="post">
                    @csrf
                    @method('PUT')
                    <label for="epcname">EPC Name</label>
                    <input type="text" name="name" id="epcname" class="form-control" value="{{$epcname[0]->name}}" autofocus>
                    <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-sync"></i>&nbsp; Update</button>
                </form>
            </div>
        </div>
        <div class="row my-4">
            <div class="col-md-8">
                <div class="table-responsive">
                    <table id="dataTables" class="table">
                        <thead class="text-center">
                        <tr>
                            <th width="15px">#</th>
                            <th width="200px">Image</th>
                            <th>Description</th>
                            <th width="200px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($epc as $e){
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td class="text-center" style="vertical-align: middle">
                                    <a href="{{ $e->image }}" data-lightbox="products" data-title="{{ $e->brand.' | '.$e->name }}">
                                        <img src="{{ $e->image }}" height="100px" alt="{{ $e->name }}">
                                    </a>
                                </td>
                                <td style="vertical-align: middle">
                                    <a href="{{route('admin.probrands.epc.edit',$e->id)}}" data-toggle="tooltip" data-placement="top" title="Click for details"><b>{!! substr($e->desc,0,100) !!}</b></a>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="{{ route('admin.probrands.epc.edit', $e->id) }}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                    <a class="btn btn-sm btn-danger py-2 epc-remove" href="#" data-id="{{ $e->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
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

@extends('backend.layouts.app')

@section('title', 'EPC | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row mb-4">
            <div class="col-sm-5">
                <h4 class="card-title font-weight-bold mb-0">Edit EPC Item</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="{{route('admin.probrands.epc.index')}}" class="btn btn-sm btn-secondary"><i class="fas fa-angle-left"></i>&nbsp; Back</a>
                </div>                
            </div>
        </div>

        <div class="row">
          <div class="col-md-8">            
            <form action="{{ route('admin.probrands.epc.update',$epc->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="desc">Description</label>
                            <textarea id="withCE" name="desc" class="form-control" required>{!!$epc->desc!!}</textarea>
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
                                <input id="thumbnail" class="form-control" type="text" name="image" required value="{{$epc->image}}">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="imagepos">Image position <br><i style="color:green">(image position on the page)</i></label>
                            <select name="imagepos" id="imagepos" class="form-control" required>
                                @if ($epc->imagepos == 'right')
                                <option value="right" selected>Right</option>                                    
                                <option value="left">Left</option>                                    
                                @else
                                <option value="right">Right</option>                                    
                                <option value="left" selected>Left</option>                                    
                                @endif
                            </select>

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

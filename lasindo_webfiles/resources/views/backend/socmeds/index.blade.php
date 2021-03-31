@extends('backend.layouts.app')

@section('title', 'Address & Social Medias | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-images"></i> Address & Social Medias</h4>
            </div>
        </div>

        <div class="row mt-4 mb-4">
            <div class="col-md-8">            
                <form action="{{ route('admin.addsoc.update', $socmed[0]->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="address">Address</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
                                    </div>
                                    <input type="text" name="address" id="address" class="form-control" value="{{$socmed[0]->address}}" autofocus>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone">Phone <i style="color:green">(input just number, e.g: 123456789)</i></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-phone-alt"></i></span>
                                    </div>
                                    <input type="text" name="phone" id="phone" class="form-control" value="{{$socmed[0]->phone}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fax">Fax <i style="color:green">(input just number, e.g: 123456789)</i></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-fax"></i></span>
                                    </div>
                                    <input type="text" name="fax" id="fax" class="form-control" value="{{$socmed[0]->fax}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    </div>
                                    <input type="text" name="email" id="email" class="form-control" value="{{$socmed[0]->email}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="wa">WhatsApp <i style="color:green">(input just number, e.g: 08123456789)</i></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fab fa-whatsapp"></i></span>
                                    </div>
                                    <input type="text" name="wa" id="wa" class="form-control" value="{{$socmed[0]->wa}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fb">Facebook</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fab fa-facebook-f"></i></span>
                                    </div>
                                    <input type="text" name="fb" id="fb" class="form-control" value="{{$socmed[0]->fb}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="in">LinkedIn</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fab fa-linkedin"></i></span>
                                    </div>
                                    <input type="text" name="in" id="in" class="form-control" value="{{$socmed[0]->in}}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="tw">Twitter</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fab fa-twitter"></i></span>
                                    </div>
                                    <input type="text" name="tw" id="tw" class="form-control" value="{{$socmed[0]->tw}}">
                                </div>
                            </div>

                            <button type="submit" class="btn btn-success float-right"><i class="fas fa-sync"></i>&nbsp; Update</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>

    </div><!--card-body-->
</div><!--card-->
@endsection

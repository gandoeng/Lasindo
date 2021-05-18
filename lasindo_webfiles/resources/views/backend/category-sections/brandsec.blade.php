@extends('backend.layouts.app')

@section('title', 'Brands for Sections | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-feather-alt"></i> Setup Brands on Section</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#brandSection"><i class="fas fa-wrench"></i>&nbsp; Setup New Brands of Section</a>

                    <!-- Modal Add New -->
                    <div class="modal fade" id="brandSection" tabindex="-1" role="dialog" aria-labelledby="brandSection" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Setup New Section</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">             
                                    <form action="{{route('admin.bs.add')}}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="section">Section</label>
                                                    <select name="section" id="section" class="form-control" required>
                                                        <option value="none">Choose Section..</option>
                                                        @foreach ($sections->sortByDesc('category_name') as $sec)
                                                            <option value="{{$sec->section}}">{{$sec->section}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            @foreach ($brands->sortBy('name') as $brn)                                                  
                                                <div class="col-md-6">
                                                    <div class="form-group form-check pretty p-default">
                                                        <input type="checkbox" id="brandsec" name="brandsec[]" value="{{$brn->name}}"/>
                                                        <div class="state p-primary">
                                                            <label>{{$brn->name}}</label>
                                                        </div>
                                                        
                                                    </div>
                                                </div>                                              
                                            @endforeach
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-sign-in-alt"></i>&nbsp; Create</button>
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
                                <th width="250px">Section Name</th>
                                <th class="text-center">Brands</th>
                                <th width="100px">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;
                                
                                foreach ($sections as $sec) {
                                    $count = $count + 1;
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">{{$count}}</td>
                                <td style="vertical-align: middle"><b>{{ $sec->section }}</b></td>
                                <td style="vertical-align: middle"><b>
                                    @foreach ($brandsec->where('section',$sec->section) as $brs)
                                        {{ $brs->brandsec }},
                                    @endforeach
                                    </b>
                                </td>
                                <td style="vertical-align: middle;" class="text-center">
                                    <a class="btn btn-sm btn-primary py-2" href="#" data-toggle="modal" data-target="#edit{{$count}}"><i class="fas fa-pen"></i>&nbsp; Edit</a>
                                </td>
                            </tr>

                            <!-- Modal Edit -->
                            <div class="modal fade" id="edit{{$count}}" tabindex="-1" role="dialog" aria-labelledby="edit{{$count}}" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Edit {{ $sec->section }}&apos;s brands</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">             
                                            <form action="{{ route('admin.bs.update', ['section' => $sec->section]) }}" method="POST" enctype="multipart/form-data">
                                                @csrf
                                                @method('put')
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="section">Section</label>
                                                            <select name="section" id="section" class="form-control" required>
                                                                <option value="none">Choose Section..</option>
                                                                @foreach ($sections as $sct)
                                                                    @if ($sec->section==$sct->section)
                                                                    <option value="{{$sct->section}}" selected>{{$sct->section}}</option>
                                                                    @else
                                                                    <option value="{{$sct->section}}">{{$sct->section}}</option>
                                                                    @endif
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                @foreach ($brands->sortBy('name') as $brn)                                                  
                                                    <div class="col-md-6">
                                                        <div class="form-group form-check pretty p-default">
                                                            @php
                                                                $checked = '';
                                                                foreach ($brandsec->where('brandsec',$brn->name) as $bs) {
                                                                    if ($sec->section==$bs->section) {
                                                                        $checked = 'checked';
                                                                    } else {
                                                                        $checked = '';
                                                                    }
                                                                }
                                                                echo '<input type="checkbox" name="brandsec[]" '.$checked.' value="'.$brn->name.'"/>';
                                                            @endphp
                                                            <div class="state p-primary">
                                                                <label>{{$brn->name}}</label>
                                                            </div>                                                            
                                                        </div>
                                                    </div>                                              
                                                @endforeach
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-group">
                                                            <button type="submit" class="btn btn-success mt-4 float-right"><i class="fas fa-paper-plane"></i>&nbsp; Update</button>
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
</div><

@endsection

@extends('backend.layouts.app')

@section('title', 'Contacts Messages | Lasindo Administrator' )

@section('content')
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-sm-5">
                <h4 class="card-title mb-0"><i class="fas fa-envelope"></i> Contacts Messages</h4>
            </div>
            <div class="col-sm-7">
                <div class="btn-toolbar float-right" role="toolbar">
                    <a href="{{ route('admin.contact.index') }}" class="btn btn-sm btn-success"><i class="fas fa-sync"></i>&nbsp; Check New Messages</a>
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
                            <th width="200px">Name</th>
                            <th width="200px">Email</th>
                            <th>Message</th>
                            <th width="80px">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $count = 0;

                                foreach($contacts as $c){
                                    $count = $count + 1;
                                    $negara = '';
                            @endphp
                            <tr>
                                <td class="text-center" style="vertical-align: middle">@php echo $count; @endphp</td>
                                <td style="vertical-align:middle"><b>{{ $c->fname.' '.$c->lname }}</b></td>
                                <td style="vertical-align:middle"><a href="mailto:{{ $c->email }}" data-toggle="tooltip" data-placement="top" title="Click to directly reply to this email"><b>{{ $c->email }}</b></a></td>
                                <td style="vertical-align:middle">
                                    <span data-toggle="modal" data-target="#msg{{$count}}">
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Click to view message">{!! Str::limit($c->message, 150) !!}</a></td>
                                    </span>
                                <td style="vertical-align: middle; text-align:center" class="text-center">
                                    <a class="btn btn-sm btn-danger contact-remove" href="#" data-name="{{ $c->email }}" data-id="{{ $c->id }}"><i class="fas fa-trash"></i>&nbsp; Delete</a>
                                </td>
                            </tr>

                            <!-- Modal View -->
                            <div class="modal fade" id="msg{{$count}}" tabindex="-1" role="dialog" aria-labelledby="msg{{$count}}" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">{{ $c->fname }}&apos;s message</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body"> 
                                            <div class="row mb-2">
                                                <div class="col-3 font-weight-bold">
                                                    <span>Email/Phone:</span>
                                                </div>
                                                <div class="col">
                                                    {{ $c->email }} / {{ $c->phone }}
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-3 font-weight-bold">
                                                    <span>Company/Country:</span>
                                                </div>
                                                <div class="col">
                                                    @foreach ($countries as $ct)
                                                        @if ($ct->code == $c->country)
                                                            @php $negara = $ct->country; @endphp
                                                            {{ $c->company }} / {{ $ct->country}}
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-3 font-weight-bold">
                                                    <span>Message:</span>
                                                </div>
                                                <div class="col">
                                                    {!! $c->message !!}
                                                </div>
                                            </div>
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

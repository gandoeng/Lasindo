

<!DOCTYPE html>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    @include('frontend.includes.las-metastyles')
    <title>Invoice</title>
</head>
<body>
<div class="page-content container">
    <div class="container px-0">
        <div class="row mt-4">
            <div class="col-12 col-lg-10 offset-lg-1">
                <div class="row">
                    <div class="col-12">
                        <div class="text-center text-150">
                            <span class="text-default-d3">Request Quote</span>
                        </div>
                    </div>
                </div>
                <!-- .row -->

                    <hr class="row brc-default-l1 mx-n1 mb-4" />
                        <table class="table table-responsive-sm table-bordered" >
                            <tbody>
                                <tr>
                                    <th>Name</th>
                                    <th>Company/Organization</th>
                                    <th>Country</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Message</th>
                                </tr>
                                <tr>
                                    <td>{{ $data['firstName']}} {{ $data['lastName']}}</td>
                                    <td>{{ $data['company'] }}</td>
                                    <td>{{ $data['country'] }}</td>
                                    <td>{{ $data['email']}}</td>
                                    <td>{{ $data['phone']}}</td>
                                    <td>{{ $data['messages']}}</td>
                                </tr>
                            </tbody>
                        </table>
                    <hr />
                </div>
            </div>
        </div>
    </div>
</div>
@include('frontend.includes.las-script')
    @toastr_render
</body>
</html>
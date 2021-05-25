

<!DOCTYPE html>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    @include('frontend.includes.las-metastyles')
    <title>Invoice</title>
    <style type="text/css">
        element.style {
            background-color: #fbb03b;
        }
        .table-bordered th, .table-bordered td {
            border: 1px solid #dee2e6;
        }
        .table th, .table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
        .table td, .table th {
            padding: .75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        th {
            text-align: inherit;
            text-align: -webkit-match-parent;
        }
        th {
            text-align: inherit;
        }
        *, *::before, *::after {
            box-sizing: border-box;
        }
        *, ::after, ::before {
            box-sizing: border-box;
        }
        th[Attributes Style] {
            vertical-align: middle;
        }

        user agent stylesheet
        th {
            display: table-cell;
            vertical-align: inherit;
            font-weight: bold;
            text-align: -internal-center;
        }
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }
        table {
            border-collapse: collapse;
        }
        table {
            border-collapse: collapse;
        }
        user agent stylesheet
        table {
            border-collapse: separate;
            text-indent: initial;
            border-spacing: 2px;
        }
        body {
            margin: 0;
            font-family: "Nunito", sans-serif;
            font-size: 0.9rem;
            font-weight: 400;
            line-height: 1.6;
            color: #212529;
            text-align: left;
            background-color: #f8fafc;
        }
    </style>
</head>
<body>
<div class="page-content container">
    <div class="title" style="text-align: center;">
        <h1><strong>REQUEST QUOTE</strong></h1>
    </div>
    <div class="ms-content">
        <p>You got request quote from {{ $data['email']}}</p>
    </div>
</div>
@include('frontend.includes.las-script')
    @toastr_render
</body>
</html>
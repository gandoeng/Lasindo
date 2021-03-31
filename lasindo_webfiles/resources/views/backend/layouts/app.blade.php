<!doctype html>
<html lang="{{ htmlLang() }}" @langrtl dir="rtl" @endlangrtl>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title')</title>
    <meta name="description" content="@yield('meta_description', appName())">
    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon" />
    <link rel="icon" type="image/png" href="{{ asset('maintheme/assets/iconified/favicon.ico') }}"/>
    @yield('meta')

    @stack('before-styles')
    <link href="{{ mix('css/backend.css') }}" rel="stylesheet">
    <livewire:styles />

    <link rel="stylesheet" href="{{ url('maintheme/assets/css/pretty-checkbox.min.css') }}">
    <link rel="stylesheet" href="{{ url('maintheme/assets/libs/dataTables-1.10.20/media/css/jquery.dataTables.min.css') }}">
    <link rel="stylesheet" href="{{ url('maintheme/assets/libs/lightbox2/css/lightbox.min.css') }}">
    <link rel="stylesheet" href="{{ url('maintheme/assets/libs/toastr/toastr.min.css') }}"/>
    <style>
        label {
            font-weight: bold;
        }
        label i{
            font-weight: normal;
        }
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
        }

        /* Firefox */
        input[type=number] {
        -moz-appearance:textfield;
        }
    </style>
    @stack('after-styles')
</head>
<body class="c-app">
    @include('backend.includes.sidebar')

    <div class="c-wrapper c-fixed-components">
        @include('backend.includes.header')
        @include('includes.partials.read-only')
        @include('includes.partials.logged-in-as')
        @include('includes.partials.announcements')

        <div class="c-body">
            <main class="c-main">
                <div class="container-fluid">
                    <div class="fade-in">
                        @include('includes.partials.messages')
                        @yield('content')
                    </div><!--fade-in-->
                </div><!--container-fluid-->
            </main>
        </div><!--c-body-->

        @include('backend.includes.footer')
    </div><!--c-wrapper-->

    @stack('before-scripts')
    <script src="{{ mix('js/manifest.js') }}"></script>
    <script src="{{ mix('js/vendor.js') }}"></script>
    <script src="{{ mix('js/backend.js') }}"></script>
    <livewire:scripts />
    
    <script src="{{ url('maintheme/assets/libs/dataTables-1.10.20/media/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{ url('maintheme/assets/libs/toastr/toastr.min.js') }}"></script>
    <script src="{{ url('maintheme/assets/libs/lightbox2/js/lightbox.min.js') }}"></script>
    <script src="{{ url('maintheme/assets/js/backoffice.js') }}"> </script>
    <script src="{{ url('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#dataTables').DataTable();
            $('#dataTable').DataTable();
            
            lightbox.option({
                'resizeDuration': 100,
                'wrapAround': true,
                'maxWidth': 800,
                'positionFromTop': 150
            })
        });
    </script>
    <script>
        var route_prefix = "/backoffice/filemanager";
        $('#lfm').filemanager('file', {prefix: route_prefix});
        $('#lfm1').filemanager('file', {prefix: route_prefix});
        $('#lfm2').filemanager('file', {prefix: route_prefix});
    </script>

    <!-- CKEditor init -->
    <script src="{{ url('maintheme/assets/libs/ckeditor/ckeditor.js') }}"></script>
    {{-- <script src="https://cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script> --}}
    {{-- <script src="//cdnjs.cloudflare.com/ajax/libs/ckeditor/4.5.11/ckeditor.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/ckeditor/4.5.11/adapters/jquery.js"></script> --}}
    <script>
        var configShared = {
            height: 200,
            filebrowserImageBrowseUrl: route_prefix + '?type=Files',
            filebrowserImageUploadUrl: route_prefix + '/upload?type=Images&_token={{csrf_token()}}',
            filebrowserBrowseUrl: route_prefix + '?type=Files',
            filebrowserUploadUrl: route_prefix + '/upload?type=Files&_token={{csrf_token()}}'
        };
        config = CKEDITOR.tools.prototypedCopy(configShared),
        CKEDITOR.replace('withCE',config);
        CKEDITOR.replace('withCE1',config);
        CKEDITOR.replace('withCE2',config);
        CKEDITOR.replace('withCE3',config);
        CKEDITOR.replace('withCE4',config);
    </script>
    @stack('after-scripts')
    @toastr_render
</body>
</html>

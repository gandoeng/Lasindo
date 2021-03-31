<!DOCTYPE html>
    <head>
        @include('frontend.includes.las-metastyles')
    </head>
    <body>
        @include('frontend.includes.las-nav')
        @yield('content')
    
        @include('frontend.includes.las-footer')
    </body>
    @include('frontend.includes.las-script')
    @toastr_render
</html>

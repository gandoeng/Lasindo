
<header>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="{{route('frontend.index')}}">
                <img class="img-brand" src="{{ url('maintheme/assets/img/logo/lasindo-logo.png') }}" alt="Lasindo Jayabersama logo">
            </a>
            <div class="mobile-menu">
                <button class="m-toggle"></button>

                <div class="menu">
                    <div class="menu-wrapper d-flex">
                        <div class="accordion align-self-center m-auto text-center" id="menu-item">
                            
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.index')}}">Home</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.about')}}">About Us</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{url('/products')}}">Products</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.index')}}">Engineering & Solution</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.index')}}">EPC</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.news')}}">News & Events</a></h2>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="mb-0"><a class="btn-link btn" href="{{route('frontend.index')}}">Contact Us</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item {{ activeClass(Route::is('frontend.about')) }}">
                        <a class="nav-link" href="{{route('frontend.about')}}">About Us</a>
                    </li>
                    <li class="nav-item {{ activeClass(Route::is('frontend.product.*')) }}">
                        <a class="nav-link" href="{{route('frontend.product.index','')}}">Products</a>
                    </li>
                    <li class="nav-item {{ activeClass(Route::is('frontend.ens.*')) }}">
                        <a class="nav-link" href="{{route('frontend.ens.index','')}}">Engineering & Solution</a>
                    </li>
                    <li class="nav-item {{ activeClass(Route::is('frontend.epc.index')) }}">
                        <a class="nav-link" href="{{route('frontend.epc.index')}}">EPC</a>
                    </li>
                    <li class="nav-item {{ activeClass(Route::is('frontend.news')) }}">
                        <a class="nav-link" href="{{route('frontend.news')}}">News & Events</a>
                    </li>
                    <li class="nav-item {{ activeClass(Route::is('frontend.contact')) }}">
                        <a class="nav-link" href="{{route('frontend.contact')}}">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
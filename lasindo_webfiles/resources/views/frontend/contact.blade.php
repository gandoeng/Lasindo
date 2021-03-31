@extends('frontend.layouts.app-lasindo')
@section('title', 'Contact Us | '.appName())

@section('content')

<main id="content">
    <div class="section header contact">
        <div class="container small-device-wrapper d-flex align-items-center">
            <div class="d-block maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.8792267676295!2d106.83066310825966!3d-6.146919057115541!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5effd684b2b%3A0x4e7ea0e0c91f426b!2sPT.%20Lasindo%20Jayabersama!5e0!3m2!1sid!2sid!4v1595825344517!5m2!1sid!2sid" frameborder="0" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
    </div>
    <div class="section contact-us">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h2>Contact Us</h2>
                </div>
            </div>
            <div class="the-form">
                <form action="{{route('frontend.contact.add')}}" method="post">
                    @csrf
                    @method('POST')
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fname">First Name*</label>
                                <input type="text" name="fname" id="fname" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="lname">Last Name*</label>
                                <input type="text" name="lname" id="lname" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="company">Company/Organization</label>
                                <input type="text" name="company" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="country">Country*</label>
                                <!-- <input type="text" name="country" class="form-control" required> -->
                                <select id="country" name="country" class="form-control" required>
                                    <option>- Select your country -</option>
                                    
                                    @foreach ($countries as $c)
                                        <option value="{{$c->code}}">{{$c->country}}</option>                                            
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone">Phone*</label>
                                <input type="text" name="phone" class="form-control" minlength="11" maxlength="14" inputmode="numeric" pat tern="[-+]?[0-9]*[.,]?[0-9]+" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email Address*</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="message">Questions or Comments?</label>
                                <textarea name="message" id="message" rows="8" class="form-control" required></textarea>
                               
                                <div class="d-flex mt-3">
                                    <button type="submit" class="btn-submit align-self-end ml-auto">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</main>
@endsection
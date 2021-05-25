<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4 class="text-left">PT. Lasindo Jayabersama</h4>
                    <p>{{$footer[0]->address}}</p>
                    <br>                        
                    <ul>
                        <li><strong>PHONE.</strong> <a href="tel:+62-21-{{$footer[0]->phone}}">+62-21-{{$footer[0]->phone}}</a></li>
                        <li><strong>FAX.</strong> <a href="tel:+62-21-{{$footer[0]->fax}}">+62-21-{{$footer[0]->fax}}</a></li>
                        <li><strong>EMAIL.</strong> <a href="mailto:{{$footer[0]->email}}">{{$footer[0]->email}}</a></li>
                    </ul>
                </div>
                <div class="col-md-6 d-flex">                  
                    <div class="align-self-top">
                        <form action="{{ route('frontend.request-quote') }}" method="post" enctype="multipart/form-data">
                        @csrf
                            <h4 class="text-left">REQUEST QUOTE</h4>  
                            <div class="row">
                                <div class="col-lg-9 col-md-9">
                                    <div class="form-group">
                                        <input type="email" class="form-control email-search" id="email" name="email" aria-describedby="emailHelp" placeholder="EMAIL ADDRESS" style="width: 100%;">
                                    </div>    
                                </div>
                                <div class="col-lg-3 col-md-3">                                        
                                    <button class="btn btn-pill btn-warning" type="submit" style="color: white; background-color:  #fbb03b;">Submit</button>
                                </div>
                            </div>
                        </form>
                        <div class="wa-ps">
                            <div class="row">
                                <div id="icons" class="col-2">
                                    <a href="{{$footer[0]->wa}}" target="_blank"><img src="{{ url('maintheme/assets/img/icons/ic_wa_ori.png') }}" alt="Facebook icon"></a>
                                </div>
                                <div class="col-10" style="padding: 0;">
                                    <p>+62 811-8018-877</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="container d-flex">
            <span>&copy Lasindo Jayabersama Website {{date('Y')}}</span>
        </div>
    </div>
</footer>
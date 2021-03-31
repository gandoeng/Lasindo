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
                <div id="f-mobile" class="col-md-6 d-flex">
                    <div class="align-self-top ml-auto">
                        <h1>Contact Us</h1>
                        <h4><a href="https://api.whatsapp.com/send?phone=62{{substr($footer[0]->wa,1)}}&text=Halo,%20saya%20tertarik%20dengan%20produk%20Anda." target="_blank" class="wa">{{wordwrap($footer[0]->wa,4,' ',true)}}</a></h4>
                        <ul class="sosmed">
                            <li id="icons">
                                <a href="{{$footer[0]->fb}}" target="_blank"><img src="{{ url('maintheme/assets/img/icons/fb.png') }}" alt="Facebook icon"></a>
                            </li>
                            <li id="icons">
                                <a href="{{$footer[0]->in}}" target="_blank"><img src="{{ url('maintheme/assets/img/icons/in.png') }}" alt="LinkedIn icon"></a>
                            </li>
                            <li id="icons">
                                <a href="{{$footer[0]->tw}}" target="_blank"><img src="{{ url('maintheme/assets/img/icons/tw.png') }}" alt="Twitter icon"></a>
                            </li>
                        </ul>
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
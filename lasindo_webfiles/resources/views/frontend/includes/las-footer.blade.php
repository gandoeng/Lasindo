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
                    <div class="align-self-top ml-auto">
                        <h4 class="text-left">REQUEST QUOTE</h4>  
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="EMAIL ADDRESS" style="width: 190%;">
                                </div>    
                            </div>
                            <div class="col-md-6">
                                <div class="form-group row">
                                    <form action="#" method="get" enctype="multipart/form-data">
                                    <button class="btn btn-pill btn-warning" type="submit" style="margin-left: 130%; color: white; background-color:  #fbb03b;">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <ul class="sosmeds">
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
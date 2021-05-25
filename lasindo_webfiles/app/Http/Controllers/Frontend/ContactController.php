<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AddSocmeds;
use App\Models\Backend\Contacts;
use App\Models\Backend\Countries;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Mail\postMail;


class ContactController extends Controller
{
    public function index() {
        $footer     = AddSocmeds::get();
        $countries  = Countries::get();
        
        return view('frontend.contact', ['countries'=>$countries,'footer'=>$footer]);
    }
    public function submited(Request $req) {
        $req->validate([
            'fname'    => 'required',
            'lname'    => 'required',
            'company'  => 'required',
            'country'  => 'required',
            'phone'    => 'required',
            'email'    => 'required',
            'message'  => 'required'
        ]);

        Contacts::create([
            'fname'     => $req->fname,
            'lname'     => $req->lname,
            'company'   => $req->company,
            'country'   => $req->country,
            'phone'     => $req->phone,
            'email'     => $req->email,
            'message'   => $req->message,
        ]);

        //email

        $data = [
            'firstName' =>  $req->fname,
            'lastName'  =>  $req->fname,
            'company'   =>  $req->fname,
            'country'   =>  $req->fname,
            'phone'     =>  $req->fname,
            'email'     =>  $req->fname,
            'messages'  =>  $req->fname
        ];

        $email = DB::table('settings')->where('set_key','=','inquiry_email')->value('value');
        Mail::to($email)->send(new \App\Mail\postMail($data));

        toastr()->success('Thank you! <br> Your message has been submitted.');
        return redirect()->route('frontend.contact');
    }
}

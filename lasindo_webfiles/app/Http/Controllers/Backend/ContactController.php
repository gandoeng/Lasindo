<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Contacts;
use App\Models\Backend\Countries;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class ContactController extends Controller {

    public function index() {
        $contacts    = Contacts::get();
        $countries   = Countries::get();
        
        return view('backend.contacts.index', ['contacts'=>$contacts, 'countries'=>$countries]);
    }

    public function delCon($id) {
        Contacts::where('id', $id)->forceDelete();
        toastr()->success('One message successfully deleted.');
        return redirect()->route('admin.contact.index');
    }

}

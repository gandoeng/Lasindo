<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AddSocmeds;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class AddSocmedController extends Controller
{
    public function index() {
        $socmed     = AddSocmeds::get();
        
        return view('backend.socmeds.index', ['socmed'=>$socmed]);
    }
    
    public function update(Request $req) {
        $req->validate([
            'address'   => 'required',
            'phone'     => 'required',
            'fax'       => 'required',
            'email'     => 'required',
            'wa'        => 'required',
            'fb'        => 'required',
            'in'        => 'required',
            'tw'        => 'required'
        ]);

        AddSocmeds::where('id', $req->id)->update([
            'address'   => $req->address,
            'phone'     => $req->phone,
            'fax'       => $req->fax,
            'email'     => $req->email,
            'wa'        => $req->wa,
            'fb'        => $req->fb,
            'in'        => $req->in,
            'tw'        => $req->tw
        ]);

        toastr()->success('Addres and Socmeds successfully updated.');
        return redirect()->route('admin.addsoc.index');
    }
}

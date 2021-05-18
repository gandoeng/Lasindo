<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AboutDesc;
use App\Models\Backend\AboutImages;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class AboutController extends Controller
{
    public function index() {
        $desc   = AboutDesc::get();
        $images = AboutImages::get();
        
        return view('backend.about.index', ['desc'=>$desc,'images'=>$images]);
    }
    public function update(Request $req) {
        $req->validate([
            'about_main'  => 'required',
            'about_hse'  => 'required'
        ]);

        AboutDesc::where('id',$req->id)->update([
            'about_main'  => $req->about_main,
            'about_hse'  => $req->about_hse
        ]);

        toastr()->success('About successfully updated.');
        return redirect()->route('admin.about.index');
    }

    
    public function addImg(Request $req) {
        $req->validate([
            'about_image' => 'required|max:2048'
        ]);

        AboutImages::create([
            'about_image' => $req->about_image,
        ]);

        toastr()->success('New image successfully added.');
        return redirect()->route('admin.about.index');
    }
    public function deleteImg($id){
        AboutImages::where('id', $id)->forceDelete();

        toastr()->success('Showcase successfully deleted.');
        return redirect()->route('admin.about.index');
    }
}

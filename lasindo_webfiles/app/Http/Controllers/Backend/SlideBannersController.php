<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\SlideBanners;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class SlideBannersController extends Controller
{
    public function index() {
        $slides  = SlideBanners::get();
        return view('backend.slidebanner.index', ['slides' => $slides]);
    }
    public function upload(Request $req) {
        $req->validate([
            'headline' => 'required',
            'image'    => 'required',
        ]);

        SlideBanners::create([
            'headline'      => $req->headline,
            'image'         => $req->image
        ]);

        toastr()->success('New slide successfully added.');
        return redirect()->route('admin.slidebanners');
    }
    public function update(Request $req) {
        $req->validate([
            'headline' => 'required',
            'image'    => 'required',
        ]);

        SlideBanners::where('id', $req->id)->update([
            'headline'      => $req->headline,
            'image'         => $req->image
        ]);

        toastr()->success('Slide successfully updated.');
        return redirect()->route('admin.slidebanners');
    }
    public function delete($id) {
        SlideBanners::where('id', $id)->forceDelete();

        toastr()->success('Slide successfully deleted.');
        return redirect()->route('admin.slidebanners');
    }
}

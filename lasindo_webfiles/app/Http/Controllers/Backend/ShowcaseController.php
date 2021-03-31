<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Brands;
use App\Models\Backend\ShowBanner;
use App\Models\Backend\ShowProduct;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class ShowcaseController extends Controller
{
    public function index() {
        $brands    = Brands::get();
        $showbanner= ShowBanner::get();
        $showcase  = ShowProduct::get();
        
        return view('backend.showcase.index', ['show'=>$showcase,'showb'=>$showbanner,'brands'=>$brands]);
    }
    public function upload(Request $req) {
        $req->validate([
            'name'  => 'required',
            'link'  => 'required',
            'layout'=> 'required',
            'brand' => 'nullable',
            'image' => 'required|max:1536'
        ]);

        ShowProduct::create([
            'name'  => $req->name,
            'link'  => $req->link,
            'layout'=> $req->layout,
            'brand' => $req->brand,
            'image' => $req->image,
        ]);

        toastr()->success('New showcase successfully created.');
        return redirect()->route('admin.showcase.index');
    }
    public function edit($id) {
        $brands    = Brands::get();
        $showcase  = ShowProduct::find($id);
        
        return view('backend.showcase.edit', ['sc'=>$showcase,'brands'=>$brands]);
    }
    public function update(Request $req) {
        $req->validate([
            'name'  => 'required',
            'link'  => 'required',
            'layout'=> 'required',
            'brand' => 'nullable',
            'image' => 'required|max:1536'
        ]);

        ShowProduct::where('id',$req->id)->update([
            'name'  => $req->name,
            'link'  => $req->link,
            'layout'=> $req->layout,
            'brand' => $req->brand,
            'image' => $req->image,
        ]);

        toastr()->success($req->name.' successfully updated.');
        return redirect()->route('admin.showcase.index');
    }
    public function delete($id){
        ShowProduct::where('id', $id)->forceDelete();

        toastr()->success('Showcase successfully deleted.');
        return redirect()->route('admin.showcase.index');
    }

    public function uploadBanner(Request $req) {
        $req->validate([
            'name'  => 'required',
            'link'  => 'required',
            'brand' => 'nullable',
            'image' => 'required|max:2048'
        ]);

        ShowBanner::create([
            'name'  => $req->name,
            'link'  => $req->link,
            'brand' => $req->brand,
            'image' => $req->image,
        ]);

        toastr()->success('New showcase banner successfully created.');
        return redirect()->route('admin.showcase.index');
    }
    public function editBanner($id) {
        $brands    = Brands::get();
        $showcase  = ShowBanner::find($id);
        
        return view('backend.showcase.edit', ['sc'=>$showcase,'brands'=>$brands]);
    }
    public function updateBanner(Request $req) {
        $req->validate([
            'name'  => 'required',
            'link'  => 'required',
            'brand' => 'nullable',
            'image' => 'required|max:2048'
        ]);

        ShowBanner::where('id',$req->id)->update([
            'name'  => $req->name,
            'link'  => $req->link,
            'brand' => $req->brand,
            'image' => $req->image,
        ]);

        toastr()->success($req->name.' successfully updated.');
        return redirect()->route('admin.showcase.index');
    }
    public function deleteBanner($id){
        ShowBanner::where('id', $id)->forceDelete();

        toastr()->success('Showcase banner successfully deleted.');
        return redirect()->route('admin.showcase.index');
    }
}

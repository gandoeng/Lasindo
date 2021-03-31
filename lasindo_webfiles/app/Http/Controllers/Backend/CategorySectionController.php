<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Brands;
use App\Models\Backend\Categories;
use App\Models\Backend\BrandSec;
use App\Models\Backend\Sections;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yoeunes\Toastr\ToastrServiceProvider;

class CategorySectionController extends Controller
{
    //Brands
    public function index() {
        $categories = Categories::get();
        $sections   = Sections::get();
        $rows       = [
            'category'  => $categories,
            'sections'  => $sections
        ];
        return view('backend.category-sections.index', $rows);
    }
    public function uploadCate(Request $req) {
        Categories::create([
            'category_name' => $req->category_name,
        ]);

        toastr()->success('New category successfully added.');
        return redirect()->route('admin.catsec');
    }

    public function deleteCate($id) {
        Categories::where('id', $id)->forceDelete();
        toastr()->success('Category successfully deleted.');
        return redirect()->route('admin.catsec');
    }
    public function uploadSecs(Request $req) {
        $slug   = Str::slug($req->section,"-");
        Sections::create([
            'category_name' => $req->category_name,
            'section'       => $req->section,
            'slug'          => $slug,
        ]);

        toastr()->success('New section successfully added.');
        return redirect()->route('admin.catsec');
    }

    public function deleteSecs($id) {
        Sections::where('id', $id)->forceDelete();
        toastr()->success('Section successfully deleted.');
        return redirect()->route('admin.catsec');
    }


    //Brands's Section
    public function indexBSec() {
        $brands     = Brands::get();
        $sections   = Sections::get();
        $brandsec   = BrandSec::get();
        $rows       = [
            'sections'  => $sections,
            'brands'    => $brands,
            'brandsec'  => $brandsec
        ];
        return view('backend.category-sections.brandsec', $rows);
    }
    public function uploadBSec(Request $req) {
        $brandsec[] = $req->brandsec;

        foreach ($brandsec[0] as $brand) {
            BrandSec::create([
                'section'   => $req->section,
                'brandsec'  => $brand
            ]);            
        }

        toastr()->success('New brand of section successfully created.');
        return redirect()->route('admin.brandsec');
    }
    public function updateBSec(Request $req) {
        $brandsec[] = $req->brandsec;
        
        BrandSec::where('section',$req->section)->forceDelete();  // record dengan section yg di $req->section di hapus dulu
        foreach ($brandsec[0] as $brand) {
            BrandSec::firstOrCreate([           //kemudian di create lagi, agar tidak terjadi value yg sama pada brandsec
                'section'   => $req->section,
                'brandsec'  => $brand
            ]);            
        }

        toastr()->success($req->section.' successfully updated.');
        return redirect()->route('admin.brandsec');
    }
}

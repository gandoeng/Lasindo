<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Backend\Brands;
use App\Models\Backend\Categories;
use App\Models\Backend\EPC;
use App\Models\Backend\EPCName;
use App\Models\Backend\Sections;
use App\Models\Backend\Products;
use Illuminate\Http\Request;
use Yoeunes\Toastr\ToastrServiceProvider;

class ProductBrandsController extends Controller
{
    //Brands
    public function indexBrand() {
        $brands  = Brands::orderBy('name')->get();
        return view('backend.productbrand.brands', ['brands' => $brands]);
    }
    public function uploadBrand(Request $req) {
        $req->validate([
            'name'  => 'required',
            'desc'  => 'required',
            'image' => 'required',
        ]);

        Brands::firstOrCreate([
            'name'  => $req->name,
            'desc'  => $req->desc,
            'image' => $req->image
        ]);

        toastr()->success('New brand successfully added.');
        return redirect()->route('admin.probrands.brand.index');
    }
    public function editBrand($id) {
        $brand      = Brands::find($id);
        $brandname  = Brands::where('id',$id)->pluck('name');
        $brands     = Brands::get();
        $categories = Categories::get();
        $sections   = Sections::get();
        $products   = Products::where('brand',$brandname)->get();
        $rows       = [
            'br'        => $brand,
            'brands'    => $brands,
            'category'  => $categories,
            'sections'  => $sections,
            'products'  => $products
        ];
        return view('backend.productbrand.brands-edit', $rows);
    }
    public function updateBrand(Request $req) {
        $req->validate([
            'name'  => 'required',
            'desc'  => 'required',
            'image' => 'required',
        ]);

        Brands::where('id', $req->id)->update([
            'name'  => $req->name,
            'desc'  => $req->desc,
            'image' => $req->image
        ]);

        toastr()->success('Brand successfully updated.');
        return redirect()->back();
    }
    public function deleteBrand($id) {
        Brands::where('id', $id)->forceDelete();

        toastr()->success('Brand successfully deleted.');
        return redirect()->route('admin.probrands.brand.index');
    }
    public function cateDropdown($category){

        $cate = Sections::where('category_name', $category)->pluck('section');
        return json_encode($cate);
    }


    //Products
    public function indexProd() {
        $brands     = Brands::get();
        $categories = Categories::get();
        $sections   = Sections::get();
        $products   = Products::get();
        $rows       = [
            'brands'    => $brands,
            'category'  => $categories,
            'sections'  => $sections,
            'products'  => $products
        ];
        return view('backend.productbrand.products', $rows);
    }
    public function uploadProd(Request $req) {
        $req->validate([
            'category'  => 'required',
            'section'   => 'required',
            'brand'     => 'required',
            'layout'    => 'required',
            'name'      => 'required',
            'desc'      => 'required',
            'image'     => 'required',
        ]);

        Products::create([
            'category'  => $req->category,
            'section'   => $req->section,
            'brand'     => $req->brand,
            'layout'    => $req->layout,
            'name'      => $req->name,
            'desc'      => $req->desc,
            'image'     => $req->image
        ]);

        toastr()->success('New product successfully added.');
        return redirect()->back();
    }
    public function editProd($id) {
        $brands     = Brands::get();
        $categories = Categories::get();
        $sections   = Sections::get();
        $products   = Products::find($id);
        $rows       = [
            'brands'    => $brands,
            'category'  => $categories,
            'sections'  => $sections,
            'pr'        => $products
        ];
        return view('backend.productbrand.products-edit', $rows);
    }
    public function updateProd(Request $req) {
        $req->validate([
            'category'  => 'required',
            'section'   => 'required',
            'brand'     => 'required',
            'layout'    => 'required',
            'name'      => 'required',
            'desc'      => 'required',
            'image'     => 'required',
        ]);

        Products::where('id', $req->id)->update([
            'category'  => $req->category,
            'section'   => $req->section,
            'brand'     => $req->brand,
            'layout'    => $req->layout,
            'name'      => $req->name,
            'desc'      => $req->desc,
            'image'     => $req->image
        ]);

        toastr()->success('Product successfully updated.');
        return redirect()->route('admin.probrands.product.index');
    }
    public function deleteProd($id) {
        $brand = Products::where('id', $id)->pluck('brand');
        $brdId = Brands::where('name',$brand)->pluck('id');
        $brandId = $brdId;

        Products::where('id', $id)->forceDelete();
        toastr()->success('Product successfully deleted.');
        return redirect()->route('admin.probrands.brand.edit',$brandId[0]);
    }

    //Engineering & Solution
    public function indexENS() {
        $brands     = Brands::get();
        $categories = Categories::get();
        $sections   = Sections::get();
        $products   = Products::where('category','Engineering & Solution')->get();
        $rows       = [
            'brands'    => $brands,
            'category'  => $categories,
            'sections'  => $sections,
            'products'  => $products
        ];
        return view('backend.productbrand.ens', $rows);
    }

    //Engineering & Solution
    public function indexEPC() {
        $epcname    = EPCName::get();
        $epc        = EPC::get();
        $rows       = [
            'epcname'   => $epcname,
            'epc'       => $epc
        ];
        return view('backend.productbrand.epc', $rows);
    }
    public function uploadEPC(Request $req) {
        $req->validate([
            'desc'      => 'required',
            'image'     => 'required|max:1024',
            'imagepos'  => 'required'
        ]);

        EPC::create([
            'desc'      => $req->desc,
            'image'     => $req->image,
            'imagepos'  => $req->imagepos
        ]);

        toastr()->success('EPC item successfully added.');
        return redirect()->route('admin.probrands.epc.index');
    }
    public function editEPC($id) {
        $epcname    = EPCName::get();
        $epc        = EPC::find($id);
        $rows       = [
            'epcname'   => $epcname,
            'epc'       => $epc
        ];
        return view('backend.productbrand.epc-edit', $rows);
    }
    public function updateEPC(Request $req) {
        $req->validate([
            'desc'      => 'required',
            'image'     => 'required',
            'imagepos'  => 'required'
        ]);

        EPC::where('id', $req->id)->update([
            'desc'      => $req->desc,
            'image'     => $req->image,
            'imagepos'  => $req->imagepos
        ]);

        toastr()->success('EPC successfully updated.');
        return redirect()->route('admin.probrands.epc.index');
    }
    public function updateEPCName(Request $req) {
        $req->validate([
            'name'  => 'required',
        ]);

        EPCName::where('id', $req->id)->update([
            'name'  => $req->name,
        ]);

        toastr()->success('EPC Name successfully updated.');
        return redirect()->route('admin.probrands.epc.index');
    }
    public function deleteEPC($id) {
        EPC::where('id', $id)->forceDelete();
        toastr()->success('EPC Item successfully deleted.');
        return redirect()->route('admin.probrands.epc.index');
    }
}

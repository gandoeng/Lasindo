<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AddSocmeds;
use App\Models\Backend\Brands;
use App\Models\Backend\BrandSec;
use App\Models\Backend\EPC;
use App\Models\Backend\EPCName;
use App\Models\Backend\SlideBanners;
use App\Models\Backend\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function index() {
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.index', $rows);
    }

    public function indexENS() {
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.ens', $rows);
    }

    public function indexEPC() {
        $footer     = AddSocmeds::get();
        $epc        = EPC::get();
        $epcname    = EPCName::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'epc'       => $epc,
            'epcname'   => $epcname,
            'slides'    => $slides,
        ];
        
        return view('frontend.epc', $rows);
    }

    public function submitQuote(Request $request){
        $firstName = $request->input('firstName');
        $lastName = $request->input('lastName');
        $company = $request->input('company');
        $country = $request->input('country');
        $phone = $request->input('phone');
        $email = $request->input('email');
        $message = $request->input('message');

        DB::table('product_inquiries')->insert([
            'firsname' => $firstName, 'lastName' => $lastName, 'company' => $company, 'country' => $country, 'phone' => $phone, 'email' => $email, 'message' => $message
        ]);

        toastr()->success('Request quote success.');
        return redirect('products/flow');
    }

    public function RTC(Request $request){
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.RTC', $rows);
    }

    public function PTC(Request $request){
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.PTC', $rows);
    }

    public function CTC(Request $request){
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.CTC', $rows);
    }

    public function MTC(Request $request){
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.MTC', $rows);
    }


     public function ETC(Request $request){
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $brandsec   = BrandSec::get();
        $products   = Products::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'brandsec'  => $brandsec,
            'products'  => $products,
            'slides'    => $slides,
        ];
        
        return view('frontend.products.ETC', $rows);
    }




}

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
use Illuminate\Support\Facades\Mail;
use App\Mail\postMail;

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
        $messages = $request->input('message');
        $data = [
            'firstName' => $firstName,
            'lastName' => $lastName,
            'company' => $company,
            'country' => $country,
            'phone' => $phone,
            'email' => $email,
            'messages' => $messages
        ];

        $email = DB::table('settings')->where('set_key','=','inquiry_email')->value('value');
        Mail::to($email)->send(new \App\Mail\postMail($data));

        DB::table('product_inquiries')->insert([
            'firsname' => $firstName, 'lastName' => $lastName, 'company' => $company, 'country' => $country, 'phone' => $phone, 'email' => $email, 'message' => $messages
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
            'slides'    => $slides
        ];
        

        $overview = DB::table('product_overview')->where('product_name','=','RTC')->get();
        $brochure =  DB::table('product_download')->where('product_name','=','Public')->where('label','=','brochure')->get();
        $datasheet = DB::table('product_download')->where('product_name','=','RTC')->where('label','=','datasheet')->get();
        $manualProduct = DB::table('product_download')->where('product_name','=','RTC')->where('label','=','manual')->get();
        $manual = DB::table('product_download')->where('product_name','=','Public')->where('label','=','manual')->get();
        $video = DB::table('product_video')->where('product_name','=','RTC')->get();
        $spec = DB::table('product_spec')->where('product_name','=','RTC')->get();
        $pImage = DB::table('product_image')->where('product_name','=','RTC')->get();
        $products = DB::table('products')->where('abbreviation','=','RTC')->get();
        //dd($pImage);
        //dd($spec);
    
        return view('frontend.products.product_temperature', $rows)->with('overview',$overview)->with('brochure',$brochure)->with('datasheet',$datasheet)->with('manualProduct',$manualProduct)->with('manual',$manual)->with('video',$video)->with('spec',$spec)->with('pImage',$pImage)->with('products',$products);
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

        $overview = DB::table('product_overview')->where('product_name','=','PTC')->get();
        $brochure =  DB::table('product_download')->where('product_name','=','Public')->where('label','=','brochure')->get();
        $datasheet = DB::table('product_download')->where('product_name','=','PTC')->where('label','=','datasheet')->get();
        $manualProduct = DB::table('product_download')->where('product_name','=','PTC')->where('label','=','manual')->get();
        $manual = DB::table('product_download')->where('product_name','=','Public')->where('label','=','manual')->get();
        $video = DB::table('product_video')->where('product_name','=','PTC')->get();
        $spec = DB::table('product_spec')->where('product_name','=','PTC')->get();
        $pImage = DB::table('product_image')->where('product_name','=','PTC')->get();
        $products = DB::table('products')->where('abbreviation','=','PTC')->get();

        return view('frontend.products.product_temperature', $rows)->with('overview',$overview)->with('brochure',$brochure)->with('datasheet',$datasheet)->with('manualProduct',$manualProduct)->with('manual',$manual)->with('video',$video)->with('spec',$spec)->with('pImage',$pImage)->with('pImage,$pImage')->with('products',$products);
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
        
        $overview = DB::table('product_overview')->where('product_name','=','CTC')->get();
        $brochure =  DB::table('product_download')->where('product_name','=','Public')->where('label','=','brochure')->get();
        $datasheet = DB::table('product_download')->where('product_name','=','CTC')->where('label','=','datasheet')->get();
        $manualProduct = DB::table('product_download')->where('product_name','=','CTC')->where('label','=','manual')->get();
        $manual = DB::table('product_download')->where('product_name','=','Public')->where('label','=','manual')->get();
        $video = DB::table('product_video')->where('product_name','=','CTC')->get();
        $spec = DB::table('product_spec')->where('product_name','=','CTC')->get();
        $pImage = DB::table('product_image')->where('product_name','=','CTC')->get();
        $products = DB::table('products')->where('abbreviation','=','CTC')->get();

        return view('frontend.products.product_temperature', $rows)->with('overview',$overview)->with('brochure',$brochure)->with('datasheet',$datasheet)->with('manualProduct',$manualProduct)->with('manual',$manual)->with('video',$video)->with('spec',$spec)->with('pImage',$pImage)->with('products',$products);

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
        
        $overview = DB::table('product_overview')->where('product_name','=','MTC')->get();
        $brochure =  DB::table('product_download')->where('product_name','=','Public')->where('label','=','brochure')->get();
        $datasheet = DB::table('product_download')->where('product_name','=','MTC')->where('label','=','datasheet')->get();
        $manualProduct = DB::table('product_download')->where('product_name','=','MTC')->where('label','=','manual')->get();
        $manual = DB::table('product_download')->where('product_name','=','Public')->where('label','=','manual')->get();
        $video = DB::table('product_video')->where('product_name','=','MTC')->get();
        $spec = DB::table('product_spec')->where('product_name','=','MTC')->get();
        $pImage = DB::table('product_image')->where('product_name','=','MTC')->get();
        $products = DB::table('products')->where('abbreviation','=','MTC')->get();


        return view('frontend.products.product_temperature', $rows)->with('overview',$overview)->with('brochure',$brochure)->with('datasheet',$datasheet)->with('manualProduct',$manualProduct)->with('manual',$manual)->with('video',$video)->with('spec',$spec)->with('pImage',$pImage)->with('products',$products);
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
        
        $overview = DB::table('product_overview')->where('product_name','=','ETC')->get();
        $brochure =  DB::table('product_download')->where('product_name','=','Public')->where('label','=','brochure')->get();
        $datasheet = DB::table('product_download')->where('product_name','=','ETC')->where('label','=','datasheet')->get();
        $manualProduct = DB::table('product_download')->where('product_name','=','ETC')->where('label','=','manual')->get();
        $manual = DB::table('product_download')->where('product_name','=','Public')->where('label','=','manual')->get();
        $video = DB::table('product_video')->where('product_name','=','ETC')->get();
        $spec = DB::table('product_spec')->where('product_name','=','ETC')->get();
        $pImage = DB::table('product_image')->where('product_name','=','ETC')->get();
        $products = DB::table('products')->where('abbreviation','=','ETC')->get();


        return view('frontend.products.product_temperature', $rows)->with('overview',$overview)->with('brochure',$brochure)->with('datasheet',$datasheet)->with('manualProduct',$manualProduct)->with('manual',$manual)->with('video',$video)->with('spec',$spec)->with('pImage',$pImage)->with('products',$products);
    }
    


}

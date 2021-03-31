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
}

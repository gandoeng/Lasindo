<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AddSocmeds;
use App\Models\Backend\Brands;
use App\Models\Backend\SlideBanners;
use App\Models\Backend\ShowBanner;
use App\Models\Backend\ShowProduct;

class NewsController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */

    public function index() {
        $footer     = AddSocmeds::get();
        $brands     = Brands::get();
        $slides     = SlideBanners::get();
        $banner     = ShowBanner::get();
        $showcase   = ShowProduct::get();
        $rows   = [
            'footer'    => $footer,
            'brands'    => $brands,
            'slides'    => $slides,
            'banner'    => $banner,
            'show'      => $showcase,
        ];
        return view('frontend.news', $rows);
    }
}

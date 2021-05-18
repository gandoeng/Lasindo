<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\AboutDesc;
use App\Models\Backend\AboutImages;
use App\Models\Backend\AddSocmeds;
use App\Models\Backend\SlideBanners;

class AboutController extends Controller
{
    public function index() {
        $abdesc     = AboutDesc::get();
        $abimg      = AboutImages::get();
        $footer     = AddSocmeds::get();
        $slides     = SlideBanners::get();
        $rows   = [
            'desc'      => $abdesc,
            'img'       => $abimg,
            'footer'    => $footer,
            'slides'    => $slides,
        ];
        return view('frontend.about', $rows);
    }
}

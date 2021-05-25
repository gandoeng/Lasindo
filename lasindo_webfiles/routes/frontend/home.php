<?php

use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\ProductsController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\NewsController;
use Tabuna\Breadcrumbs\Trail;

/*
 * Frontend Controllers
 * All route names are prefixed with 'frontend.'.
 */

Route::redirect('/', '/filemanager', 301);
Route::get('/', [HomeController::class, 'index'])->name('index')
    ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Home'), route('frontend.index'));
    });
Route::get('about', [AboutController::class, 'index'])->name('about');

//Products Route
Route::group(['prefix' => 'products', 'as' => 'product.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.product.index','flow');
    });   
    Route::get('{product}', [ProductsController::class, 'index'])->name('index');
});

//E&S Route
Route::group(['prefix' => 'engineering-solutions', 'as' => 'ens.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.ens.index','fuel-gas-system');
    });   
    Route::get('{product}', [ProductsController::class, 'indexENS'])->name('index');
});

Route::get('epc', [ProductsController::class, 'indexEPC'])->name('epc.index');
Route::get('contact', [ContactController::class, 'index'])->name('contact');
Route::post('contact/submit', [ContactController::class, 'submited'])->name('contact.add');

// Route::get('terms', [TermsController::class, 'index'])
//     ->name('pages.terms')
//     ->breadcrumbs(function (Trail $trail) {
//         $trail->parent('frontend.index')
//             ->push(__('Terms & Conditions'), route('frontend.pages.terms'));
//     });

Route::post('request-quote', [ProductsController::class, 'submitQuote'])->name('request-quote');

//Route::get('RTC',[ProductsController::class,'RTC'])->name('RTC');
//Route RTC
Route::group(['prefix' => 'RTC', 'as' => 'RTC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.RTC.RTC','temperature');
    });   
    Route::get('{RTC}', [ProductsController::class, 'RTC'])->name('RTC');

});

//Route PTC
Route::group(['prefix' => 'PTC', 'as' => 'PTC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.PTC.PTC','temperature');
    });   
    Route::get('{PTC}', [ProductsController::class, 'PTC'])->name('PTC');
});

//Route CTC
Route::group(['prefix' => 'CTC', 'as' => 'CTC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.CTC.CTC','temperature');
    });   
    Route::get('{CTC}', [ProductsController::class, 'CTC'])->name('CTC');
});

//Route MTC
Route::group(['prefix' => 'MTC', 'as' => 'MTC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.MTC.MTC','temperature');
    });   
    Route::get('{MTC}', [ProductsController::class, 'MTC'])->name('MTC');
});

//Route ETC
Route::group(['prefix' => 'ETC', 'as' => 'ETC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.ETC.ETC','temperature');
    });   
    Route::get('{ETC}', [ProductsController::class, 'ETC'])->name('ETC');
});

//Route news
Route::get('/news', [NewsController::class, 'index'])->name('news')
    ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('News'), route('frontend.news'));
    });

//News Page
Route::get('/news/page/{id}',[NewsController::class,'newsPage'])->name('news.page');

//pressureCalibrator
Route::group(['prefix' => 'pCalibrators', 'as' => 'pCalibrators.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.pCalibrators.pCalibrators','pressure');
    });   
    Route::get('{pCalibrators}', [ProductsController::class, 'pCalibrators'])->name('pCalibrators');
});

//Route HK
Route::group(['prefix' => 'HK', 'as' => 'HK.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.HK.HK','pressure');
    });   
    Route::get('{HK}', [ProductsController::class, 'HK'])->name('HK');
});

//Route HL
Route::group(['prefix' => 'HL', 'as' => 'HL.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.HL.HL','pressure');
    });   
    Route::get('{HL}', [ProductsController::class, 'HL'])->name('HL');
});

//Route PK2
Route::group(['prefix' => 'PK2', 'as' => 'PK2.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.PK2.PK2','pressure');
    });   
    Route::get('{PK2}', [ProductsController::class, 'PK2'])->name('PK2');
});

//Route RK
Route::group(['prefix' => 'RK', 'as' => 'RK.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.RK.RK','pressure');
    });   
    Route::get('{RK}', [ProductsController::class, 'RK'])->name('RK');
});

//Route T
Route::group(['prefix' => 'T', 'as' => 'T.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.T.T','pressure');
    });   
    Route::get('{T}', [ProductsController::class, 'T'])->name('T');
});

//Route T-600
Route::group(['prefix' => 'T600', 'as' => 'T600.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.T600.T600','pressure');
    });   
    Route::get('{T600}', [ProductsController::class, 'T600'])->name('T600');
});

//Route T-900
Route::group(['prefix' => 'T900', 'as' => 'T900.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.T900.T900','pressure');
    });   
    Route::get('{T900}', [ProductsController::class, 'T900'])->name('T900');
});











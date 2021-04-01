<?php

use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\ProductsController;
use App\Http\Controllers\Frontend\TermsController;
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
Route::group(['prefix' => 'RTC', 'as' => 'RTC.'], function () {    
    Route::get('', function(){
        return redirect()->route('frontend.RTC.RTC','temperature');
    });   
    Route::get('{RTC}', [ProductsController::class, 'RTC'])->name('RTC');
});


<?php

use App\Http\Controllers\Backend\AboutController;
use App\Http\Controllers\Backend\AddSocmedController;
use App\Http\Controllers\Backend\CategorySectionController;
use App\Http\Controllers\Backend\ContactController;
use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\FMController;
use App\Http\Controllers\Backend\ProductBrandsController;
use App\Http\Controllers\Backend\ShowcaseController;
use App\Http\Controllers\Backend\SlideBannersController;
use App\Http\Controllers\Backend\NewsController;
use App\Http\Controllers\Backend\SettingController;

use Tabuna\Breadcrumbs\Trail;

// All route names are prefixed with 'admin.'.

Route::group(['prefix' => 'filemanager'], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::redirect('/', '/backoffice/dashboard', 301);
Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard')
    ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Home'), route('admin.dashboard'));
    });
    
//Slide Banners    
Route::get('slidebanners', [SlideBannersController::class, 'index'])->name('slidebanners')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Slide Banners'), route('admin.slidebanners'));
});
Route::post('slidebanners/create', [SlideBannersController::class, 'upload'])->name('slides.add');
Route::put('slidebanners/update/{id}', [SlideBannersController::class, 'update'])->name('slides.update');
Route::get('slidebanners/delete/{id}', [SlideBannersController::class, 'delete'])->name('slides.delete');

//Showcases
Route::group(['prefix' => 'showcase', 'as' => 'showcase.'], function () {
    
    Route::get('products/', [ShowcaseController::class, 'index'])->name('index')
        ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Showcase Product'), route('admin.showcase.index'));
    });
    Route::post('product/create', [ShowcaseController::class, 'upload'])->name('add');
    Route::get('product/edit/{id}', [ShowcaseController::class, 'edit'])->name('edit')
        ->breadcrumbs(function (Trail $trail) {
            $trail->parent('admin.showcase.index')
            ->push(__('Showcase Product Details'), route('admin.showcase.edit',['id'=>request()->id]));
    });
    Route::put('product/update/{id}', [ShowcaseController::class, 'update'])->name('update');
    Route::get('product/delete/{id}', [ShowcaseController::class, 'delete'])->name('delete');

    Route::post('banner/create', [ShowcaseController::class, 'uploadBanner'])->name('banner.add');
    Route::get('banner/edit/{id}', [ShowcaseController::class, 'editBanner'])->name('banner.edit')
        ->breadcrumbs(function (Trail $trail) {
            $trail->parent('admin.showcase.index')
            ->push(__('Showcase Banner Details'), route('admin.showcase.banner.edit',['id'=>request()->id]));
    });
    Route::put('banner/update/{id}', [ShowcaseController::class, 'updateBanner'])->name('banner.update');
    Route::get('banner/delete/{id}', [ShowcaseController::class, 'deleteBanner'])->name('banner.delete');        

});


//About
Route::group(['prefix' => 'about', 'as' => 'about.'], function () {
    
    Route::get('', [AboutController::class, 'index'])->name('index')
        ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('About'), route('admin.about.index'));
    });

    Route::put('update/{id}', [AboutController::class, 'update'])->name('update');
    Route::post('image/add', [AboutController::class, 'addImg'])->name('image.add');
    Route::get('image/delete/{id}', [AboutController::class, 'deleteImg'])->name('image.delete');

});


//Products & Brands
Route::group(['prefix' => 'probrands', 'as' => 'probrands.'], function () {
    
    //Category & Section's Dropdown
    Route::get('select/{category_name}', [ProductBrandsController::class, 'cateDropdown']);
    
    Route::get('brands/', [ProductBrandsController::class, 'indexBrand'])->name('brand.index')
        ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Brands'), route('admin.probrands.brand.index'));
    });
    Route::post('brand/create', [ProductBrandsController::class, 'uploadBrand'])->name('brand.add');
    Route::get('brand/edit/{id}', [ProductBrandsController::class, 'editBrand'])->name('brand.edit')
        ->breadcrumbs(function (Trail $trail) {
            $trail->parent('admin.probrands.brand.index')
            ->push(__('Brand Details'), route('admin.probrands.brand.edit',['id'=>request()->id]));
    });
    Route::put('brand/update/{id}', [ProductBrandsController::class, 'updateBrand'])->name('brand.update');
    Route::get('brand/delete/{id}', [ProductBrandsController::class, 'deleteBrand'])->name('brand.delete');
        
    
    //Products
    Route::get('product/', [ProductBrandsController::class, 'indexProd'])->name('product.index')
        ->breadcrumbs(function (Trail $trail) {
            $trail->push(__('Products'), route('admin.probrands.product.index'));
    });
    Route::post('product/create', [ProductBrandsController::class, 'uploadProd'])->name('product.add');
    Route::get('product/edit/{id}', [ProductBrandsController::class, 'editProd'])->name('product.edit')
    ->breadcrumbs(function (Trail $trail) {
        $trail->parent('admin.probrands.product.index')
        ->push(__('Product Details'), route('admin.probrands.product.edit',['id'=>request()->id]));
    });
    Route::put('product/update/{id}', [ProductBrandsController::class, 'updateProd'])->name('product.update');
    Route::get('product/delete/{id}', [ProductBrandsController::class, 'deleteProd'])->name('product.delete');

    
    //Engineering & Solutions
    Route::get('ens/', [ProductBrandsController::class, 'indexENS'])->name('ens.index')
        ->breadcrumbs(function (Trail $trail) {
            $trail->push(__('Engineering & Solution'), route('admin.probrands.ens.index'));
    });
    
    //EPC
    Route::get('epc/', [ProductBrandsController::class, 'indexEPC'])->name('epc.index')
        ->breadcrumbs(function (Trail $trail) {
            $trail->push(__('EPC'), route('admin.probrands.epc.index'));
    });
    Route::get('epc/edit/{id}', [ProductBrandsController::class, 'editEPC'])->name('epc.edit')
    ->breadcrumbs(function (Trail $trail) {
        $trail->parent('admin.probrands.epc.index')
        ->push(__('EPC Item Details'), route('admin.probrands.epc.edit',['id'=>request()->id]));
    });
    Route::post('epc/create', [ProductBrandsController::class, 'uploadEPC'])->name('epc.add');
    Route::put('epc/update/{id}', [ProductBrandsController::class, 'updateEPC'])->name('epc.update');
    Route::put('epc/update-name/{id}', [ProductBrandsController::class, 'updateEPCName'])->name('epcname.update');
    Route::get('epc/delete/{id}', [ProductBrandsController::class, 'deleteEPC'])->name('epc.delete');
});

//Category & Sections
Route::get('category-section', [CategorySectionController::class, 'index'])->name('catsec')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Category & Sections'), route('admin.catsec'));
});
Route::post('category/create', [CategorySectionController::class, 'uploadCate'])->name('cat.add');
Route::get('category/delete/{id}', [CategorySectionController::class, 'deleteCate'])->name('cat.delete');
Route::post('section/create', [CategorySectionController::class, 'uploadSecs'])->name('sec.add');
Route::get('section/delete/{id}', [CategorySectionController::class, 'deleteSecs'])->name('sec.delete');

//Brand's Sections
Route::get('brands-section', [CategorySectionController::class, 'indexBSec'])->name('brandsec')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Brands for Sections'), route('admin.brandsec'));
});
Route::post('brandsec/create', [CategorySectionController::class, 'uploadBSec'])->name('bs.add');
Route::put('brandsec/update/{section}', [CategorySectionController::class, 'updateBSec'])->name('bs.update');
Route::get('brandsec/delete/{id}', [CategorySectionController::class, 'deleteBSec'])->name('bs.delete');

//Contact Us
Route::get('contact-messages', [ContactController::class, 'index'])->name('contact.index')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Contact Us Messages'), route('admin.contact.index'));
});
Route::get('contact/delete/{id}', [ContactController::class, 'delCon'])->name('contact.delete');
Route::get('country', [ContactController::class, 'country'])->name('country');

//Address & Socmeds
Route::get('address-socmed', [AddSocmedController::class, 'index'])->name('addsoc.index')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Addres & Social Medias'), route('admin.addsoc.index'));
});
Route::put('addsoc/update/{id}', [AddSocmedController::class, 'update'])->name('addsoc.update');


//File Manager
Route::get('fileman', [FMController::class, 'index'])->name('fm')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('File Manager'), route('admin.fm'));
});

//setting
//Route::get('setting', [DashboardController::class, 'setting'])->name('setting');
Route::get('setting', [DashboardController::class, 'setting'])->name('setting')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Setting'), route('admin.setting'));
});

Route::post('updateEmailBut',[SettingController::class, 'updateEmailBut'])->name('setting.updateEmailBut');

//update setting
Route::get('updateEmail', [SettingController::class, 'updateEmail'])->name('setting.updateEmail');


//News
Route::get('news', [NewsController::class, 'index'])->name('news')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('News'), route('admin.news'));
});

Route::get('/createNews', [NewsController::class, 'newsCreate'])->name('createNews')
    ->breadcrumbs(function (Trail $trail) {
    $trail->push(__('Create News'), route('admin.createNews'));
});

Route::post('/createNewsSubmit',[NewsController::class, 'createNewsSubmit'])->name('createNewsSubmit');

Route::get('/updateNews/{id}', [NewsController::class, 'newsUpdate'])->name('updateNews');

//delete news
Route::post('/deleteNews/{id}',[NewsController::class,'deleteNews'])->name('news.deleteNews');

//update news Button
Route::post('/updateNewsButton/{id}',[NewsController::class,'updateNewsButton'])->name('news.updateNewsButton');

//news publice
Route::get('/newsPublice/{id}',[NewsController::class,'newsPublice'])->name('news.newsPublice');
Route::get('/newsUnpublice/{id}',[NewsController::class,'newsUnpublice'])->name('news.newsUnpublice');


//Route::get('/create-news', [NewsController::class,'newsCreate'])->name('newsCreate');


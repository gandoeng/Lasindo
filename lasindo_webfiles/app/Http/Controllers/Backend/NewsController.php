<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\File; 

class NewsController extends Controller
{
    public function index(){

        $news = DB::table('news')->get();
        return view('backend.news.news')->with('news',$news);
    }


    //create news
    public function newsCreate(Request $request){
    	return view('backend.news.news-create');
    }

    //update news
    public function newsUpdate($id){

        $news = DB::table('news')->where('id','=',$id)->get();

    	return view('backend.news.news-update')->with('news',$news);
    }

    //submit news
    public function createNewsSubmit(Request $request){

        $title = $request->input('title');
        $newsImage = $request->file('newsImage');
        $author = $request->input('author');
        $newsDate = $request->input('newsDate');
        $newsPublice = 'unset';
        $newsContent = $request->input('mytextarea');

        if($newsImage != NULL){
            //$file = $request->file('newsImage')->store('newsImage');
            $fileName = $newsImage->getClientOriginalName();

            $newsImage->move('storage/photos/newsPhotos',$fileName);
            DB::table('news')->insert([
                'title' => $title, 'author' => $author, 'newsDate' => $newsDate, 'newsImage' => $fileName, 'newsContent' => $newsContent,'newsPublice' => $newsPublice
            ]);
            toastr()->success('Submit success');
            return redirect()->route('admin.news');
        } else{
            toastr()->error('Submit vailed');
            return redirect()->route('admin.news');
        }
    }

    public function deleteNews($id){
        $newsImage = DB::table('news')->where('id','=',$id)->get();

        File::delete('storage/photos/newsPhotos'.$newsImage);

        DB::table('news')->where('id','=',$id)->delete();


        toastr()->success('Delete complate');
        return redirect()->route('admin.news');
    }

}

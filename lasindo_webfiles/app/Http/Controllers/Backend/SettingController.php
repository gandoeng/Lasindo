<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class SettingController extends Controller
{
    //

    public function setting(){
    	return view('backend.setting.email-configure');
    }

    public function updateEmail(Request $request){
        $data1 = DB::table('email_reciver')->where('id','=','1')->get();
        $data2 = DB::table('email_reciver')->where('id','=','2')->get();

        return view('backend.setting.updateEmail')->with('data1',$data1)->with('data2',$data2);
    }

    public function updateEmailBut(Request $request){
        $admin = $request->input('adminEmail');
        $product = $request->input('productEmail');
        //dd($admin);
        //$data2 = DB::table('email_reciver')->where('id','=','2')->get();


        DB::table('email_reciver')->where('id','=',1)->update(array('email' => $admin));
        DB::table('email_reciver')->where('id','=',2)->update(array('email' => $product));

        return redirect()->route('admin.setting');
    }
}

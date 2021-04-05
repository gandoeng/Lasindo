<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    //

    public function setting(){
    	return view('backend.setting.email-configure');
    }

    public function unsetEmail($id){
        $status = "unset";
        DB::table('email_reciver')->where('id','=',$id)->update(array('statusEmail' => $status));


        return redirect('backoffice/setting');
    }

    public function setEmail($id){
        $status = "set";
    	DB::table('email_reciver')->where('id','=',$id)->update(array('statusEmail' => $status));

    	return redirect('backoffice/setting');
    }

}

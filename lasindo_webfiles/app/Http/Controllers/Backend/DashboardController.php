<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Response;

/**
 * Class DashboardController.
 */
class DashboardController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {
        return view('backend.dashboard');
    }

    public function setting(){
    	$email = DB::table('email_reciver')->get();
    	return view('backend.setting.email-configure')->with('email',$email);
    }

    public function setEmail($id){
        $status = "set";
    	DB::table('email_reciver')->where('id','=',$id)->update(array('statusEmail' => $status));

    	return $id; //redirect('backoffice/setting');
    }

    public function unsetEmail($id){
        $status = "unset";
        DB::table('email_reciver')->where('id','=',$id)->update(array('statusEmail' => $status));


        return $id; //redirect('backoffice/setting');
    }

}

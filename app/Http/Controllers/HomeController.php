<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    public function index(){
	$data['title'] = "Homepge";
	$profile = DB::table('system_settings')->where('setting_name', 'profile')->get();
	$skill = DB::table('system_settings')->where('setting_name', 'skills')->get();
	$skill2 = DB::table('system_settings')->where('setting_name', 'other_skills')->get();
	$data['profile'] = json_decode($profile[0]->additional_data); 
	$data['skills'] = json_decode($skill[0]->additional_data);
	$data['other_skills'] = json_decode($skill2[0]->additional_data);
	$data['project'] = DB::table('module_project')->get();
	$data['blog'] = DB::table('module_blog')->paginate(3);
    return view('content/home',$data);
    }

    public function send_message(Request $request){
        $form = $request->input('form');
        $id = DB::table('module_messages')->insertGetId($form);
        if($id){
        	echo 'success';
        }else{
        	echo 'failed';
        }

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Project;
use App\Images;
use App\Logs;
use App\Blog;
use App\Settings;
use App\Mail\SendEmail;
use Illuminate\Support\Facades\Mail;
class HomeController extends Controller
{
 
   
  
    public function index(){


    $data['title'] = "Homepge";
    $profile = Settings::where('setting_name', 'profile')->first();
    $skill = Settings::where('setting_name', 'skills')->first();
    $skill2 = Settings::where('setting_name', 'other_skills')->first();
    $data['profile'] = json_decode($profile->additional_data); 
    $data['skills'] = json_decode($skill->additional_data);
    $data['other_skills'] = json_decode($skill2->additional_data);
    $data['project'] = Project::all();
    $data['blog'] = Blog::paginate(3);
    $form['location'] = 'homepage';
    $form['id_related_to'] = NULL;
    Logs::create($form);
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


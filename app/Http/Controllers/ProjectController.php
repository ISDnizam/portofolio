<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
    public function detail($id_project){
	$data['project'] = DB::table('module_project')->where('id_project', $id_project)->get();
    return view('content/project_detail',$data);
    }
}

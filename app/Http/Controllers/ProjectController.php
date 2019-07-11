<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Project;
use App\Images;
use App\Logs;

class ProjectController extends Controller
{
    public function detail($id_project){
    $data['project'] = Project::find($id_project);
    $data['images'] = Images::whereId_project($id_project)->get();
    $form['location'] = 'project';
    $form['id_related_to'] = $id_project;
    Logs::create($form);
    return view('content/project_detail',$data);
    }
}

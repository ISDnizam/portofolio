<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Project;

class ProjectController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    
    public function index(){
        $data['title'] = "Project";
        $data['list'] = DB::table('module_project')->get();
        return view('content/admin/project/list',$data);
    }

    public  function  add(){
        $data['title'] = "Add Content";
        return view('content/admin/project/add',$data);
    }

    public function action_add(Request $request){
        $form = $request->input('form');
        Project::create($form);
        return redirect('/admin/project');
    }


    public  function edit($id_project){
        $data['title'] = "Edit Content";
        $data['edit'] = DB::table('module_project')->where('id_project',$id_project)->get();
        return view('content/admin/project/edit',$data);
    }

    public function action_edit(Request $request){
        $form = $request->input('form');
        DB::table('module_project')->where('id_project',$form['id_project'])->update($form);
        return redirect('/admin/project');
    }

    public  function delete($id_project){
        DB::table('module_project')->where('id_project',$id_project)->delete();
        return redirect()->back();
    }

}

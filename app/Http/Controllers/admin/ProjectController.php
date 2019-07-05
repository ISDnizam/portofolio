<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Project;
use App\Images;
use File;
use Session;
class ProjectController extends Controller
{

    public function __construct()
    {
        // $this->middleware(['auth','verified']); << only verified email who can access
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

        $file = $request->file('file');
        if(!empty($file)){
        $path_upload = 'assets/images/project';
        $form['image'] = '/'.$path_upload.'/'.$file->getClientOriginalName();
        $file->move($path_upload,$file->getClientOriginalName());
        }
        Project::create($form);
        Session::flash('success','Add Project Success');
        return redirect('/admin/project');
    }


    public  function edit($id_project){
        $data['title'] = "Edit Content";
        $data['edit'] = DB::table('module_project')->where('id_project',$id_project)->get();
        return view('content/admin/project/edit',$data);
    }

    public function action_edit(Request $request){
        $form = $request->input('form');
        $file = $request->file('file');
        if(!empty($file)){
        $path_upload = 'assets/images/project';
        $form['image'] = '/'.$path_upload.'/'.$file->getClientOriginalName();
        $file->move($path_upload,$file->getClientOriginalName());
        }
        DB::table('module_project')->where('id_project',$form['id_project'])->update($form);
        Session::flash('success','Update Project Success');
        return redirect('/admin/project');
    }

    public  function delete($id_project){
        $project = DB::table('module_project')->where('id_project',$id_project)->first();
        if(!empty($project->image)){
        $path = str_replace('/assets', 'assets',$project->image);
        File::delete($path);
        }
        DB::table('module_project')->where('id_project',$id_project)->delete();
        Session::flash('success','Delete Project Success');
        return redirect()->back();
    }
    public  function images($id_project){
        $data['title'] = "Images";
        $data['project'] = DB::table('module_project')->where('id_project',$id_project)->first();
        $data['list'] = DB::table('module_images')
            ->leftJoin('module_project', 'module_project.id_project', '=', 'module_images.id_image')
            ->select('module_images.*')
            ->where('module_images.id_project', '=', $id_project)
            ->get();
        return view('content/admin/project/images',$data);
    }
    public  function delete_image($id_image){
        $project = DB::table('module_images')->where('id_image',$id_image)->first();
        if(!empty($project->image)){
        $path = str_replace('/assets', 'assets',$project->image);
        File::delete($path);
        }
        DB::table('module_images')->where('id_image',$id_image)->delete();
        Session::flash('success','Delete Image Success');
        return redirect()->back();
    }

    public function action_add_images(Request $request){
        $form = $request->input('form');

        $file = $request->file('file');
        if(!empty($file)){
        $path_upload = 'assets/images/project';
        $form['full_path'] = '/'.$path_upload.'/'.$file->getClientOriginalName();
        $file->move($path_upload,$file->getClientOriginalName());
        }
        Images::create($form);
        Session::flash('success','Add Project Image Success');
        return redirect()->back();
    }

}

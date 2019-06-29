<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
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
        // insert data ke table pegawai
        DB::table('module_project')->insert($form);
        return redirect('/admin/project');
    }


    public  function edit($id_project){
        $data['title'] = "Edit Content";
        $data['edit'] = DB::table('module_project')->where('id_project',$id_project)->get();
        return view('content/admin/project/edit',$data);
    }

    public function action_edit(Request $request){
        $form = $request->input('form');
        // insert data ke table pegawai
        DB::table('module_project')->where('id_project',$form['id_project'])->update([
            'title' => $form['title'],
            'description' => $form['description'],
        ]);
        return redirect('/admin/project');
    }

    public  function delete($id_project){
        DB::table('module_project')->where('id_project',$id_project)->delete();
        return redirect('/admin/project');
    }

}

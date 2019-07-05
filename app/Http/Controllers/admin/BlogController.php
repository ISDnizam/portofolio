<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(){
        $data['title'] = "Blog";
        $data['list'] = DB::table('module_blog')->get();
        return view('content/admin/blog/list',$data);
    }

    public  function  add(){
        $data['title'] = "Add Content";
        return view('content/admin/blog/add',$data);
    }

    public function action_add(Request $request){
        $form = $request->input('form');
        DB::table('module_blog')->insert($form);
        return redirect('/admin/blog');
    }


    public  function edit($id_blog){
        $data['title'] = "Edit Content";
        $data['edit'] = DB::table('module_blog')->where('id_blog',$id_blog)->get();
        return view('content/admin/blog/edit',$data);
    }

    public function action_edit(Request $request){
        $form = $request->input('form');
        // insert data ke table pegawai
        DB::table('module_blog')->where('id_blog',$form['id_blog'])->update($form);
        return redirect('/admin/blog');
    }

    public  function delete($id_blog){
        DB::table('module_blog')->where('id_blog',$id_blog)->delete();
        return redirect('/admin/blog');
    }

}

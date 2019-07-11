<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Blog;

class BlogController extends Controller
{
    public function __construct()
    {
        // $this->middleware(['auth','verified']); << only verified email who can access
        $this->middleware('auth');
    }
    public function index(){
        $data['title'] = "Blog";
        $data['list'] = Blog::all();
        return view('content/admin/blog/list',$data);
    }

    public  function  add(){
        $data['title'] = "Add Content";
        return view('content/admin/blog/add',$data);
    }

    public function action_add(Request $request){
        $form = $request->input('form');
        Blog::create($form);
        return redirect('/admin/blog');
    }


    public  function edit($id_blog){
        $data['title'] = "Edit Content";
        $data['edit'] = Blog::find($id_blog);
        return view('content/admin/blog/edit',$data);
    }

    public function action_edit(Request $request){
        $form = $request->input('form');
        // insert data ke table pegawai
        Blog::find($form['id_blog'])->update($form);
        return redirect('/admin/blog');
    }

    public  function delete($id_blog){
        Blog::find($id_blog)->delete();
        return redirect('/admin/blog');
    }

}

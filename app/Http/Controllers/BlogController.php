<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Blog;
class BlogController extends Controller
{


    public	function	detail($id_blog){
    $data['blog'] = Blog::find($id_blog);
    return view('content/blog_detail',$data);
    }

	public function send_comment(Request $request){
    $form = $request->input('form');
    return "Nama : ".$form['nama'].", Alamat : ".$form['alamat'];
	}

}

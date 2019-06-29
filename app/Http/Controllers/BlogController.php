<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class BlogController extends Controller
{


    public	function	detail($id_blog){
    $data['blog'] = DB::table('module_blog')->where('id_blog', $id_blog)->get();
    return view('content/blog_detail',$data);
    }

	public function send_comment(Request $request){
    $form = $request->input('form');
    return "Nama : ".$form['nama'].", Alamat : ".$form['alamat'];
	}

}

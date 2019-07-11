<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
	protected $table = "module_blog";
	protected $primaryKey = 'id_blog';
	protected $fillable = ['id_blog','title','description','category','image'];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
	 protected $table = "module_project";
	 protected $fillable = ['id_project','title','description','category','image','client','url'];
}

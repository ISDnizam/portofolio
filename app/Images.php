<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
	 protected $table = "module_images";
	 protected $fillable = ['id_project','id_image','image_name','full_path'];
}

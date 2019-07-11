<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Images extends Model
{
	protected $primaryKey = 'id_image';
	protected $table = "module_images";
	protected $fillable = ['id_project','id_image','image_name','full_path'];
	public function project(){
    	return $this->belongsTo('App\Project' ,'id_project');
    }
}

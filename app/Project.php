<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
	protected $table = 'module_project';
	protected $primaryKey = 'id_project';
	protected $fillable = ['id_project','title','description','category','image','client','url'];
	public function logs(){
    	return $this->hasMany('App\Logs','id_related_to')->whereLocation('project');
    }
    public function images(){
    	return $this->hasMany('App\Images','id_project');
    }
}

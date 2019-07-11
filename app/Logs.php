<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Logs extends Model
{
	protected $primaryKey = 'id';
	protected $table = "module_logs";
	protected $fillable = ['id','location','id_related_to'];
	public function project(){
    	return $this->belongsTo('App\Project' ,'id_project');
    }
}

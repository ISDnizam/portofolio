<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
	protected $table = "system_settings";
	protected $primaryKey = 'id';
	protected $fillable = ['id','setting_name','additional_data'];
}

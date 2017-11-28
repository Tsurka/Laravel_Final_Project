<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Meal_type;

class Meal extends Model
{
	protected $table = 'meals';



    public function meal_type() 
    {
    	return $this->belongsTo('App\meal_type');
    } 
}

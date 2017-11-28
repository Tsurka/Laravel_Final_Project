<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Meal;

class Meal_type extends Model
{

    protected $fillable = [
        'name'
    ];

    public $incrementing 	= false;
    // protected $primaryKey 	= ['id'];

    public function meal() 
    {
    	return $this->belongsTo('App\Meal');
    } 
}

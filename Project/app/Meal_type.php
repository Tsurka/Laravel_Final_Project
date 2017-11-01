<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Meals;

class Meal_type extends Model
{

    protected $fillable = [
        'name'
    ];

    public $incrementing 	= false;
    // protected $primaryKey 	= ['id'];

    public function meals() 
    {
    	return $this->belongsTo('App\Meals');
    } 
}

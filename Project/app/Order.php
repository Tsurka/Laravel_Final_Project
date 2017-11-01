<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Meal_type;

class Order extends Model
{
    protected $fillable = [
        'name'
    ];

    public $incrementing 	= false;
    // protected $primaryKey 	= ['id'];

    public function meal_types() 
    {
    	return $this->belongsTo('App\Meal_type');
    } 
}

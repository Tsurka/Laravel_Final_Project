<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Meal_type;
use App\Order;

class OrderController extends Controller
{
	public function index()
    {
     return view('meal_types.ViewMealTypes');
    }
}

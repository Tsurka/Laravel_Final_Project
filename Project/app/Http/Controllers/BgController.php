<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Meal_type;
use App\Order;

class BgController extends Controller
{
	public function index()
    {
   	
     return view('bg', compact('meal_types'));
    }
}

?>
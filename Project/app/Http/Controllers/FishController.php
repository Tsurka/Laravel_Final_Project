<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FishController extends Controller
{
	public function index()
    {
   	
     return view('fish', compact('meal_types'));
    }
}

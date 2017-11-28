<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Meal;
use App\Order;
use App\Restaurant;
use App\User;

class OrderController extends Controller
{
	public function order(){
		if(!empty($_REQUEST['meals'])){
			$restaurant_id = $_REQUEST['restaurant_id'];
			$user_id = $_REQUEST['user_id'];
			$meal_list = $_REQUEST['meals'];
			
			$mkorder = Order::create([
				'restaurant_id'	=>	$restaurant_id,
				'order_list'	=>	json_encode($meal_list),
				'user_id'		=>	$user_id
			]);
			
			return view('complete_order', $this->list_order($mkorder->id));
		}else{
			return redirect($_REQUEST['page_url'])->with('error', 'Избери нещо от менюто!'); 
		}
	}
	
	public function list_order($id){
		$order = Order::find($id);
		
		$user = User::find($order->user_id);
		
		$meals = Meal::whereIn('id', json_decode($order->order_list))->get();
		
		$restaurant = Restaurant::find($order->restaurant_id);
		
		$final_price = $meals->sum('price');
		
		return compact('user', 'restaurant', 'meals', 'final_price');
	}
}

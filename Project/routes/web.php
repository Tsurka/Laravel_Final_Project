<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'HomeController@index')->name('home');
Route::get('/contacts', 'ContactsController@index');
Route::get('/contacts', 'ContactsController@index')->name('contacts');
Route::get('/user', 'UserController@index');

Route::post('/order', 'OrderController@order')->name('make_order');


Auth::routes();

Route::resource('bg', 'BgController');
Route::resource('it', 'ItController');
Route::resource('fish', 'FishController');


Route::resource('user', 'UserController');
Route::resource('meal_types', 'Meal_typesController');
Route::resource('bg', 'BGRestaurantController');
Route::resource('it', 'ITRestaurantController');
Route::resource('fish', 'FishRestaurantController');
Route::get('bg', 'BGRestaurantController@index');
Route::get('it', 'ITRestaurantController@index');
Route::get('fish', 'FishRestaurantController@index');
Route::get('user/create', 'UserController@create')->name('add_new_user');
Route::get('user', 'UserController@index')->name('get_all_users');


Route::get('meal_types', 'Meal_typesController@index')->name('get_all_meals');

Route::get('meal_types/{$id}/edit', 'Meal_typesController@edit')->name('edit_meal_types_info');
Route::get('meal_types/create', 'Meal_typesController@create')->name('add_new_meal_types');

Route::get('/meal_types/{meal_types_id}/delete', [
			'uses'	=> 'Meal_typesController@destroy',
			'as'	=> 'delete_meal_types'
			]);




Route::get('user/{$id}/edit', 'UserController@edit')->name('edit_user_info');
Route::get('user/{$id}/edit', 'UserController@edit')->name('edit_user_info');


Route::get('/restaurant', 'RestaurantController@index')->name('restaurant');
// Route::get('user', 'UserController@index')->name('get_all_users');
Route::get('/home', 'HomeController@index')->name('home');

Route::get('protected', ['middleware' => ['auth', 'admin'], function() {
    return "This page requires that you be logged in and an Admin";
}]);



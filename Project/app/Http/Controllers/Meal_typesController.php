<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Meal_type; 
use App\Http\Requests\StoreMeal_typesRequest;
use App\Http\Requests\UpdateMeal_typesRequest;


class Meal_typesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $meal_types = Meal_type::all();
        
        return view('meal_types.index', compact('meal_types')) ->with('i'); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('meal_types.create');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $meal_type = Meal_type::create([
                'name'      => $request['name'],                

        ]);
               
            

        return redirect()->route('get_all_meals')->withSuccess('New Meals Successfully Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $meal_type           = Meal_type::find($id);
        
        return view('meal_types.show', compact('meal_type'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $meal_type = Meal_type::findOrFail($id);

       return view('meal_types.edit', compact('meal_type'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateMeal_typesRequest $request, $id)
    {
        $meal_type = Meal_type::findOrFail($id);
        $meal_type->name      = $request['name'];                
        
        $meal_type->save();

                return redirect()->route('get_all_meals')->withSuccess('New Meals Successfully Created');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //dd($id);
        $meal_type = Meal_type::find($id);
        $meal_type->delete();

        return redirect()->route('get_all_meals')->withSuccess('Meals deleted');
    }
}

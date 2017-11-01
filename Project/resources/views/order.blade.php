@extends('layouts.master')
@include('includes.menu')

    <div class="text-center py-5">>
		<a href="{{ url('/') }}">      
  		<img src="img/slide__01.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
		</a>
    </div> 




	@foreach($meal_types as $meal_type)

				{{ $meal_type->name }}				
		
@endforeach
</table>
<div class="row">
	<div class="col-md-6">
		<a href="{{ route('add_new_meal_types') }}" class="btn btn-info">Add New Meal</a>
	</div>
</div>
</div>
</div>
@endsection
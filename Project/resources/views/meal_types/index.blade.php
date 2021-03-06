@extends('layouts.master')

@section('title', 'Meal Types')

@section('style')



@endsection

@section('content')
<div class="nav-link text-uppercase text-expanded">
	<div class="bg-faded p-4 my-4">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>Meal Types</h1>
				</div>	
			</div>
			@if(Session::has('message'))
			<div class="alert alert-success">
				<button class="close" type="button" data-dismiss="alert">&times;</button>
				<strong>
					<i class="fa fa-check-circle fa-lg fa-fw"></i>Success. &nbsp;
				</strong>
				{{ Session::get('message') }}
			</div>
			@endif

			<div class="row">
			<table class="table">
				<tr>
					<td>
						Мeal Name
					</td>
					<td>
						Edit Meal
					</td>
					<td>
						Delete Meal
					</td>
				</tr>
				@foreach($meal_types as $meal_type)
				<tr>
					<td>
						<a href="{{ route('meal_types.show', $meal_type->id)}}">
							{{ $meal_type->name }}				
						</a>			
					</td>
					<td>
						<a href="{{ route('edit_meal_types_info', $meal_type->id) }}" class="btn btn-info">Edit</a>
					</td>
					<td>
						{{ Form::open(['method' => 'DELETE', 'route' => ['meal_types.destroy', $meal_type->id]]) }}
			    		{{ Form::submit('Delete', ['class' => 'btn btn-danger']) }}
						{{ Form::close() }}
					</td>
				</tr>
			@endforeach
			</table>
			<div class="row">
				<div class="col-md-6">
					<a href="{{ route('add_new_meal_types') }}" class="btn btn-info">Add New Meal</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>
@endsection
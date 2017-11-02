@extends('layouts.master')

@section('title', 'User Profile')


@section('content')
<h1>{{ $meal_type->name }}</h1>
<p>
	{{ $meal_type->name->bio }}
</p>
<p>
	pucture to be added soon ...
</p>
<!-- var 1 Using Eloquent -->
{{ var_dump($meal_type->meal_type) }}
<!-- var2 -->
@foreach($meal_types as $meal_type)
{{ $meal_type->meal_type }}
@endforeach

@endsection
<!-- Many-to-many - courses/students
	- db tables - pivot table, pivot property
	- relations in models - belongsToMany do not confuse it with hasMany 
https://laravel.com/docs/5.4/eloquent-relationships#many-to-many
	-->
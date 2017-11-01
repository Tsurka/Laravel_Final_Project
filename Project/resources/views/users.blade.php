@extends('layouts.master')

@section('title', 'Users')

@section('style')

<link rel="stylesheet" type="text/css" href="">

@endsection

@section('content')

	<h1>Users page</h1>	
<ul>
@foreach($users as $user)
{{ $user->email }}

@endforeach
</ul>
@endsection

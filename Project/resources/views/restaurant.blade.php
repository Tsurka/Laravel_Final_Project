@extends('layouts.app')
@section('title', 'Restaurant')

@section('content')

@include('includes.menu')

<div class="container">

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Добре дошли във сайта на Верига ресторанти Цвети &amp; Нико!</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged as a {{ Auth::user()->role }}!
                    
                    
                    @if(Session::has('message'))
                        <div class="alert alert-danger">

                            {{ Session::get('message') }}
                        </div>
                    @endif       
                </div>
            </div>
        </div>
    </div>
    <ul>
        <li><a href="{{ route('get_all_users') }}">Users</a></li>
        <li><a href="{{ route('get_all_meals') }}">Meals</a></li>
    </ul>
</div>

<div class="container">
    <a href="{{ url('/') }}">      
        <img src="img/slide__01.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
    </a>
    <a href="{{ url('/') }}">
        <img src="img/slide__2.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
    </a>
    
  <img src="img/slide__3.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">  
</div>

@endsection






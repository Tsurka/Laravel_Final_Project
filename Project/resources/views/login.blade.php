@extends('includes.menu')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in user role {{ Auth::user()->role }}!

                    
                    @if(Session::has('message'))
                        <div class="alert alert-danger">

                            {{ Session::get('message') }}
                        </div>
                    @endif       
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

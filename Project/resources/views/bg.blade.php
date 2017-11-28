@extends('layouts.master')
@section('title', 'BG menu')

@section('style')

@endsection

@section('content')

	<div class="text-center py-5">
			<a href="{{ url('/restaurant') }}">      
	  		<img src="img/slide__01.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
			</a>
	</div>
	<div class="nav-link text-uppercase text-expanded">
		<div class="bg-faded p-4 my-4">
			<div class="container">
				<div class="row">
					<div class="col-md-14">
						<h1 class="text-center">Българска традиционна кухня</h1>
							<table class="table">
								<tr>		
									<td style="color:#1FC2EB;">
										<strong>
											Ястие
										</strong>	
									</td>
									<td class="text-center" style="color:#1FC2EB;">
										<strong>
											Описание
										</strong>
									</td>
									<td style="color:#1FC2EB;">
										<strong>
											Цена
										</strong>
									</td>
								</tr>
								<form action="{{route('make_order')}}" method="POST">
									{{ csrf_field() }}
									@foreach($meals as $meal)
									<tr>
										<td style="color:#F82121;">
											<input type="checkbox" name="meals[]" value="{{$meal->id}}">
											{{ $meal->name }}	
										</td>
										<td>
											{{ $meal->description }}
										</td>
										<td>
											{{ $meal->price }}
										</td>
									</tr>
									@endforeach
									<tr>
										<td class="text-center" colspan=3>
											<input type='submit' name='order' value='ПОРЪЧАЙ' class="btn btn-primary btn-lg">
											<input type="hidden" name="restaurant_id" value="{{$meal->restaurant_id}}">
											<input type="hidden" name="user_id" value="{{\Auth::user()->id}}">
											<input type="hidden" name="page_url" value="{{url()->current()}}">
										</td>
									</tr>
								</form>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
@endsection



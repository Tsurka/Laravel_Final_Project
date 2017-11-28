@extends('layouts.master')
@section('title', 'BG menu')

@section('style')

@endsection

 @section('content')

    <div class="text-center py-5">
		<a href="{{ url('/restaurant') }}"> 
			 <img src="img/slide__2.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
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
									@foreach($meals as $meal)
									<tr>
										<td style="color:#F82121;">
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
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
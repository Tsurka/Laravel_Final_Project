@extends('layouts.master')
@section('title', 'BG menu')

@section('style')

@endsection

@section('content')

<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Complete order!</title>
	</head>
	<body>
		<div class="nav-link text-uppercase text-expanded">
			<div class="bg-faded p-4 my-4">
				<div class="container">
					<div class="row">
						<div class="col-md-14">
							<h1 class="text-center">Вие успешно направихте вашата поръчка!</h1>
							<table class="table">
								<tr style="color:#1FC2EB;">
									<th>Име на ястието</th>
									<th class="text-center">Описание</th>
									<th>Цена</th>
								</tr>
								@foreach($meals as $meal)
									<tr>
										<td style="color:#F82121;">{{$meal->name}}</td>
										<td>{{$meal->description}}</td>
										<td>{{$meal->price}}</td>
									</tr>
								@endforeach
								<tr>
									<td colspan="3"><strong>Обща дължима сума: {{$final_price}}лв.</strong></td>
								</tr>
								<tr>
									<td class="text-center" colspan=3>
										<a href="{{route('restaurant')}}" class="btn btn-primary btn-lg">Към ресторантите</a>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>				
	</body>
</html>
@endsection
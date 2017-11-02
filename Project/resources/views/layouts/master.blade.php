<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>
		@yield('title')
	</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link href="{{ URL::asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
	@yield('style')
</head>
<body>	

	@include('includes.menu')

	@yield('content')

</body>
</html>
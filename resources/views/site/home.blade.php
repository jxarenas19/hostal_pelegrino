<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hostal Pelegrino</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">

    <link rel="stylesheet" href="{{asset("css/bootstrap.css")}}">
    <link rel="stylesheet" href="{{asset("css/animate.css")}}">
    <link rel="stylesheet" href="{{asset("css/owl.carousel.min.css")}}">
    <link rel="stylesheet" href="{{asset("css/aos.css")}}">
    <link rel="stylesheet" href="{{asset("css/linearicons.css")}}">
    <link rel="stylesheet" href="{{asset("fonts/ionicons/css/ionicons.min.css")}}">
    <link rel="stylesheet" href="{{asset("fonts/fontawesome/css/font-awesome.min.css")}}">

    <!-- Theme Style -->
    <link rel="stylesheet" href="{{asset("css/style.css")}}">
</head>
<body>

<!-- Header -->

@include('site.partials.home.header')
@include('site.partials.home.presentation')
@include('site.partials.home.intro')
@include('site.partials.home.hostals')
@include('site.partials.home.services')
@include('site.partials.home.footer')
<a class="dropdown-item" href="lang/en"> English</a>
<a class="dropdown-item" href="lang/es"> Español</a>

<script src="{{asset("js/jquery-3.2.1.min.js")}}"></script>
<script src="{{asset("js/popper.min.js")}}"></script>
<script src="{{asset("js/bootstrap.min.js")}}"></script>
<script src="{{asset("js/owl.carousel.min.js")}}"></script>
<script src="{{asset("js/aos.js")}}"></script>
<script src="{{asset("js/main.js")}}"></script>
</body>
</html>
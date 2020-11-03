<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    {{--    <link rel="stylesheet" href="{{ asset('libs/bootstrap-4.4.1/theme/flatly/bootstrap.min.css') }}">--}}
    <link href="{{ mix('css/app.css') }}" rel="stylesheet">

</head>
<body>
<div id="app" class="{{ route_class() }}-page">
    @include('layouts._header')
    <div class="container">
        @yield('content')
    </div>
    @include('layouts._footer')
</div>
<!-- JS 脚本 -->
<script src="{{ mix('js/app.js') }}"></script>
@yield('scriptsAfterJs')
@yield('js')
</body>
</html>

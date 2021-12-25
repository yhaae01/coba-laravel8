<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        {{-- Font Awesome --}}
        <link rel="stylesheet" href="/vendor/fontawesome/css/all.min.css">
        {{-- My CSS --}}
        <link rel="stylesheet" href="css/style.css">
        
        <title>Blog | {{ $title }}</title>
    </head>
    <body>
        {{-- resources/views/partials --}}
        @include('partials.navbar')

        <div class="container mt-4">
            {{-- resources/views/layouts --}}
            @yield('container')
        </div>

        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/vendor/fontawesome/js/all.min.js"></script>
    </body>
</html>
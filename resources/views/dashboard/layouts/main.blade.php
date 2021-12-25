<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Surya Intan Permana">
        <title>Dashboard</title>    

        <!-- Bootstrap core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="/css/dashboard.css" rel="stylesheet">
        {{-- Font Awesome --}}
        <link rel="stylesheet" href="/vendor/fontawesome/css/all.min.css">
        {{-- Trix Editor --}}
        <link rel="stylesheet" type="text/css" href="/css/trix.css">
        <script type="text/javascript" src="/js/trix.js"></script>

        <style>
            trix-toolbar [data-trix-button-group="file-tools"]{
                display: none;
            }
        </style>
    </head>
    
    <body>
    
    @include('dashboard.layouts.header')

    <div class="container-fluid">
        <div class="row">
            
            @include('dashboard.layouts.sidebar')

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                
                @yield('container')

            </main>
        </div>
    </div>

        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/js/dashboard.js"></script>
        <script src="/vendor/fontawesome/js/all.min.js"></script>

    </body>
</html>
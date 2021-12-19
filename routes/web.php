<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home',[
        'title' => 'Home'
    ]);
});

Route::get('/about', function () {
    return view('about',[
        'title' => 'About',
        'name'  => 'Surya Intan Permana',
        'email' => 'suryaintpermana@gmail.com',
        'image' => 'image.png'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

// Single post
Route::get('posts/{slug}', [PostController::class, 'show']);


<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

Route::get('/', function () {
    return view('home',[
        'title'  => 'Home',
        'active' => 'home'
    ]);
});

Route::get('/about', function () {
    return view('about',[
        'title'  => 'About',
        'active' => 'about',
        'name'   => 'Surya Intan Permana',
        'email'  => 'suryaintpermana@gmail.com',
        'image'  => 'image.png'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

// Single post
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
        'title'      => 'Post Categories',
        'active'     => 'categories',
        'categories' => Category::all()
    ]);
});
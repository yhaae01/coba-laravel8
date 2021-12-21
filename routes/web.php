<?php

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

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
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
        'title'      => 'Post Categories',
        'categories' => Category::all()
    ]);
});

Route::get('/categories/{category:slug}', function(Category $category){
    return view('posts', [
        'title'     => "Post By Category : $category->name" ,
        'posts'     => $category->posts
    ]);
});

Route::get('/authors/{author:username}', function(User $author){
    return view('posts', [
        'title' => "Post By Author : $author->name",
        'posts' => $author->posts
    ]);
});
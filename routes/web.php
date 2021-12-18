<?php

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

Route::get('/blog', function () {
    $blog_post = [
        [
            'title'  => 'Judul Post 1',
            'slug'   => 'judul-post-1',
            'author' => 'Surya',
            'body'   => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae ad esse accusamus magnam nam tempora totam veritatis autem nisi deserunt odio iusto consectetur natus perspiciatis laudantium id est quaerat, modi quas sequi quos? Totam itaque voluptate, vitae harum velit numquam voluptatibus aut beatae illum obcaecati doloremque accusantium cumque explicabo error porro enim nihil, unde sapiente. Vitae nam assumenda itaque voluptatum amet veniam quam tenetur corporis minima eos libero asperiores neque illo explicabo distinctio nihil ipsam ratione optio, quibusdam voluptatem! Magni?'
        ],
        [
            'title'  => 'Judul Post 2',
            'slug'   => 'judul-post-2',
            'author' => 'Aldi',
            'body'   => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae ad esse accusamus magnam nam tempora totam veritatis autem nisi deserunt odio iusto consectetur natus perspiciatis laudantium id est quaerat, modi quas sequi quos? Totam itaque voluptate, vitae harum velit numquam voluptatibus aut beatae illum obcaecati doloremque accusantium cumque explicabo error porro enim nihil, unde sapiente. '
        ],
    ];

    return view('posts',[
        'title' => 'Posts',
        'posts' => $blog_post
    ]);
});

// Single post
Route::get('posts/{slug}', function($slug){
    $blog_post = [
        [
            'title'  => 'Judul Post 1',
            'slug'   => 'judul-post-1',
            'author' => 'Surya',
            'body'   => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae ad esse accusamus magnam nam tempora totam veritatis autem nisi deserunt odio iusto consectetur natus perspiciatis laudantium id est quaerat, modi quas sequi quos? Totam itaque voluptate, vitae harum velit numquam voluptatibus aut beatae illum obcaecati doloremque accusantium cumque explicabo error porro enim nihil, unde sapiente. Vitae nam assumenda itaque voluptatum amet veniam quam tenetur corporis minima eos libero asperiores neque illo explicabo distinctio nihil ipsam ratione optio, quibusdam voluptatem! Magni?'
        ],
        [
            'title'  => 'Judul Post 2',
            'slug'   => 'judul-post-2',
            'author' => 'Aldi',
            'body'   => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae ad esse accusamus magnam nam tempora totam veritatis autem nisi deserunt odio iusto consectetur natus perspiciatis laudantium id est quaerat, modi quas sequi quos? Totam itaque voluptate, vitae harum velit numquam voluptatibus aut beatae illum obcaecati doloremque accusantium cumque explicabo error porro enim nihil, unde sapiente. '
        ],
    ];

    $new_post = [];

    foreach ($blog_post as $post) {
        if ($post['slug'] === $slug) {
            $new_post = $post;
        }
    }

    return view('post',[
        'title' => 'Single Post',
        'post'  => $new_post
    ]);
});


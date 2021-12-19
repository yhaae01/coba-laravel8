<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
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

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Post;
use \App\Models\User;
use \App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        Post::factory(20)->create();
        
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        
        // User::create([
        //     'name' => 'Surya',
        //     'email' => 'surya@gmail.com',
        //     'password' => bcrypt('surya123')
        // ]);

        // User::create([
        //     'name' => 'Aldi Tegar',
        //     'email' => 'aldi@gmail.com',
        //     'password' => bcrypt('aldi123')
        // ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ea facere illum.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ea facere illum. Fugiat quidem perferendis, excepturi suscipit laudantium et totam sint, repudiandae harum explicabo corporis veritatis odit rerum pariatur ad voluptatem. Neque distinctio, aspernatur, quasi voluptatum accusamus labore magnam laborum, ducimus corrupti rem quia aperiam itaque fugiat voluptate culpa quidem porro voluptates? Sed, explicabo. Sequi est impedit quod neque sint ut repellat. Veniam non officia ut aut mollitia neque est placeat similique quod omnis dignissimos quis nam, blanditiis perferendis, impedit soluta quo, provident eos minima! Doloribus dolores consequatur temporibus ea necessitatibus! Dicta, suscipit molestias. Mollitia accusamus quod unde enim odit!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
    }
}


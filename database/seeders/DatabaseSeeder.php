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
        User::create([
            'name'      => 'Surya',
            'username'  => 'surya',
            'email'     => 'surya@gmail.com',
            'password'  => bcrypt('surya123')
        ]);

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

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);
    }
}


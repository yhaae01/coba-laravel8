@extends('layouts.main')

@section('container')

    @foreach ($posts as $post)
        <article class="mb-3 border-bottom pb-4">
            <h3>
                <a href="/posts/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a>
            </h3>
            
            <p>
                By: Surya in <a href="/categories/{{ $post->category['slug'] }}" class="text-decoration-none">{{ $post->category['name'] }}</a>
            </p>
            
            <p>{{ $post->excerpt }}</p>

            <a href="/posts/{{ $post->slug }}" class="text-decoration-none">Read more...</a>
        </article>
    @endforeach

@endsection
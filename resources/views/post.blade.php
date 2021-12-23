@extends('layouts.main')

@section('container')

    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h3 class="mb-3">{{ $post->title }}</h2>

                <p>
                    By: 
                    <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">
                        {{ ucwords($post->author->name) }}
                    </a> 
                    in 
                    <a href="/posts?category={{ $post->category['slug'] }}" class="text-decoration-none">
                        {{ $post->category['name'] }}
                    </a>
                </p>

                @if ($post->image)
                    <div style="max-height: 350px; overflow: hidden">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                    </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid my-3" alt="{{ $post->category->name }}">
                @endif

                <article class="my-2">
                    {!! $post->body !!}
                </article>

                <a href="/posts" class="mt-3 btn btn-primary btn-sm"><i class="bi bi-arrow-left"></i> Back to posts</a>
            </div>
        </div>
    </div>

@endsection
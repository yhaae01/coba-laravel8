@extends('layouts.main')

@section('container')

    <h2 class="mb-3">Post Category : {{ $category }}</h2>

    @foreach ($posts as $post)
        <article class="mb-5">
            <h3>
                <a href="/posts/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a>
            </h3>
            <p>{{ $post->excerpt }}</p>
        </article>
    @endforeach

@endsection
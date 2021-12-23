@extends('dashboard.layouts.main')

@section('container')

    <div class="container">
        <div class="row my-4">
            <div class="col-lg-8">
                <h3 class="mb-3">{{ $post->title }}</h2>
                <a href="/dashboard/posts" class="btn btn-success btn-sm"><i class="bi bi-arrow-left"></i> Back to My Post</a>
                
                @if ($post->image)
                <div style="max-height: 350px; overflow: hidden">
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid my-3" alt="{{ $post->category->name }}">
                @endif
                
                <article class="my-2">
                {!! $post->body !!}
                </article>
            </div>
        </div>
    </div>

@endsection
@extends('layouts.main')

@section('container')

    <h2 class="mb-3">Post Categories</h2>

    @foreach ($categories as $category)
        <ul>
            <li>
                <h3>
                    <a href="/categories/{{ $category->slug }}" class="text-decoration-none">{{ $category->name }}</a>
                </h3>
            </li>
        </ul>
        
    @endforeach

@endsection
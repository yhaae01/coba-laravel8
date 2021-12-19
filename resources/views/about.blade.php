@extends('layouts.main')

@section('container')
    <h1>About</h1>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" width="150" class="img-thumbnail rounded-circle">
@endsection
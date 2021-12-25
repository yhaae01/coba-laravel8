@extends('dashboard.layouts.main')

@section('container')
    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Post Categories</h1>
</div>

<div class="table-responsive col-lg-5">
    <a href="/dashboard/categories/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus-circle"></i> Add new category</a>
    @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        {{ session('success') }}
    </div>
    @endif
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Category Name</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($categories as $category)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $category->name }}</td>
                <td>
                    <a href="/dashboard/categories/{{ $category->slug }}" class="badge bg-info"><i class="fas fa-eye"></i></a>
                    <a href="/dashboard/categories/{{ $category->slug }}/edit" class="badge bg-warning"><i class="fas fa-edit"></i></a>
                    <form action="/dashboard/categories/{{ $category->slug }}" method="category" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection
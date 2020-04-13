@extends('layouts.app', ['activePage' => 'pinned', 'titlePage' => __('Pinned List')])

@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
          <a class="btn btn-success pull-right" href="{{ route('products.create') }}">
          <i class="material-icons">add</i> New Location</a>
            <h4 class="card-title ">Pinned Location Details</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
            
              <table class="table">
                <thead class=" text-primary">
                  <th>ID</th>
                  <th>Location Name</th>
                  <th>Latitude</th>
                  <th>Longitude</th>
                  <th>Details</th>
                  <th>Action</th>
                </thead>
                @foreach ($products as $product)
                <tbody>
               
          <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $product->name }}</td>
            <td>{{ $product->lat }}</td>
            <td>{{ $product->long }}</td>
            <td>{{ $product->details }}</td>
            <td>
                <form action="{{ route('products.destroy',$product->id) }}" method="POST">
   
                   
    
                    <a class="btn btn-primary" href="{{ route('products.edit',$product->id) }}">Edit</a>
   
                    @csrf
                    @method('DELETE')
      
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
              </div>
      </div>
      </div>
    </div>
  </div>
@endsection
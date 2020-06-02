@extends('layouts.app', ['activePage' => 'polygon', 'titlePage' => __('Polygons')])

@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
          <a class="btn btn-success pull-right" href="{{ route('polygons.create') }}">
          <i class="material-icons">add</i> New Polygon</a>
            <h4 class="card-title ">Polygons</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
            
              <table class="table">
                <thead class=" text-primary">
                  <th>No</th>
                  <th>Polygon Name</th>
                  <th>Coordinates</th>
                  <th>Keterangan</th>
                  <th>Warna</th>
                  <th>Action</th>
                </thead>
                @foreach ($polygons as $polygon)
                <tbody>
               
          <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $polygon->name_polygon }}</td>
            <td>{{ $polygon->coordinates }}</td>
            <td>{{ $polygon->keterangan }}</td>
            <td>{{ $polygon->warna }}</td>
            <td>
                <form action="{{ route('polygons.destroy',$polygon->id) }}" method="POST">
   
                   
    
                    <a class="btn btn-primary" href="{{ route('polygons.edit',$polygon->id) }}">Edit</a>
   
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
@extends('layouts.app', ['titlePage' => __('New Polygon')])
  
@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
          <a class="btn btn-danger pull-right" href="{{ route('polygons.index') }}"> Back</a>
          <h4 class="card-title ">Fill New Polygon Details</h4>
          </div>
    <div class="card-body">
   
@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
   
<form action="{{ route('polygons.store') }}" method="POST">
    @csrf
  
            <div class="form-group">
                <strong>Polygon Name:</strong>
                <input type="text" name="name_polygon" class="form-control" placeholder="Polygon Name:">
            </div>
            <div class="form-group">
                <strong>Coordinates:</strong>
                <textarea type="text" name="coordinates" class="form-control" placeholder="[{lat:123,lng:123}, {lat:234,lng:234}, ....]"></textarea>
            </div>
            <div class="form-group">
                <strong>Details:</strong>
                <textarea class="form-control" style="height:150px" name="keterangan" placeholder="Detail.."></textarea>
            </div>
            <div class="form-group">
                <strong>Color:</strong>
                <input type="text" name="warna" class="form-control" placeholder="red, green, #FFFFFF,...">
            </div>
            <div class="card-footer ml-auto mr-auto">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</form>
</div>
</div>
</div>
</div>
</div>
@endsection

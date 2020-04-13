@extends('layouts.app', ['titlePage' => __('New Location')])
  
@section('content')
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header card-header-primary">
          <a class="btn btn-danger pull-right" href="{{ route('products.index') }}"> Back</a>
          <h4 class="card-title ">Fill New Location Details</h4>
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
   
<form action="{{ route('products.store') }}" method="POST">
    @csrf
  
     <div class="form-group">
                <strong>Location Name:</strong>
                <input type="text" name="name" class="form-control" placeholder="Location Name..">
            </div>
            <div class="form-group">
                <strong>Latitude:</strong>
                <input type="text" name="lat" class="form-control" placeholder="Latitude..">
            </div>
            <div class="form-group">
                <strong>Longitude:</strong>
                <input type="text" name="long" class="form-control" placeholder="Longitude..">
            </div>
            <div class="form-group">
                <strong>Details:</strong>
                <textarea class="form-control" style="height:150px" name="details" placeholder="Detail.."></textarea>
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

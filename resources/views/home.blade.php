@extends('layouts.app',  ['activePage' => 'dashboard', 'titlePage' => __('Map of Singapore')])

@section('content')
<style>
    #mapid {
        height: 700px;
    }
    .content {
      margin: auto;
    }
    </style>

<div class="content">
  <div class="container" >
   <div class="row justify-content-center">
    <div class="col-md-12">
          <a class="btn btn-danger pull-right" href="/showpolygon"> Show Polygon</a>
          <a class="btn btn-success pull-right" href="/homemarker"> Show Marker</a>
          <br />
    <!-- <h2>Map</h2> -->
      <div class="card card-login card-hidden mb-3">
        <div id="mapid">
       
    <script>
// below in map    
var mymap = L.map('mapid').setView([1.3521, 103.8198], 13);
L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'pk.eyJ1IjoiYS1kaWVicmF0YSIsImEiOiJjazh2eGtjcmkwNTdlM2VsYnlmMnk3aTNiIn0.JCFT2eXYRICBCCqm7zrQNQ'
}).addTo(mymap);
// map end




</script>
</div>
       
      </div>
    </div>
  </div>
    
</div>
</div>

@endsection

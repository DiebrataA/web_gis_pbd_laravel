@extends('layouts.app',  ['activePage' => 'polygon', 'titlePage' => __('Map of Singapore')])

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

// below is marker and circle

// polygon
var viewPolygons = [
                  @foreach ($polygons as $polygons)
              {
                keterangan : '{{$polygons->keterangan }}',
                coordinates : {{$polygons->coordinates}},
                warna : '{{$polygons->warna}}',
                name_polygon : '{{$polygons->name_polygon}}',
                id_polygon : {{$polygons->id_polygon }}
              },
                  @endforeach
              ];
              console.log(viewPolygons);

for( var i = 0; i < viewPolygons.length; i++){
  var addPopup =  "<h5>Lokasi adalah: </h5>"+viewPolygons[i].keterangan;
      var customOptions =
        {
          'maxWidth': '500',
          'className' : 'custom'
        };
  var polygon = L.polygon([
    viewPolygons[i].coordinates
], {color: viewPolygons[i].warna }).bindPopup(addPopup,customOptions).addTo(mymap);
console.log(viewPolygons[i].coordinates);
}




    
</script>
</div>
       
      </div>
    </div>
  </div>
    
</div>
</div>

@endsection

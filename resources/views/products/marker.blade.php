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
    <a class="btn btn-danger pull-right" href="/showpolygon"> Show Polygon</a>
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
var popup = L.popup();

    var saveMarkerToMaps = [
      @foreach ($products as $markermap)
              {   lat: '{{$markermap->lat}}',
                  long: '{{$markermap->long}}',
                  name : '{{$markermap->name }}',
                  details : '{{$markermap->details}}',
                  id : {{$markermap->id }}
              },
                  @endforeach
              ]

  for( var i = 0; i < saveMarkerToMaps.length; i++){
    var addPopup =  "<h5>Lokasi adalah: </h5>"+saveMarkerToMaps[i].name;
      var customOptions =
        {
          'maxWidth': '500',
          'className' : 'custom'
        };
  var marker = L.marker([
    saveMarkerToMaps[i].lat, 
    saveMarkerToMaps[i].long]).bindPopup(addPopup,customOptions).addTo(mymap);
}


//Add Marker on Click
function addMarker(e){
      var coord = e.latlng.toString().split(',');
      var lat = coord[0].split('(');
      var lng = coord[1].split(')');
      var addPopup =  "<h5>Add Location</h5><form action=\"{{ route('products.store') }}\" method=\"POST\" enctype=\"multipart/form-data\">@csrf<label for=\"landmark_nama\">Name:</label><br><input type=\"text\" id=\"name\" name=\"name\" required><br>\ <label for=\"landmark_latitude\">Latitude:</label><br><input type=\"text\" id=\"latFld\" name=\"lat\" value="+lat[1]+"  required><br><label for=\"landmark_longitude\">Longitude:</label><br><input type=\"text\" id=\"lngFld\" name=\"long\" value="+lng[0]+" required><br><label for=\"landmark_info\">Detail Information:</label><br><input type=\"text\" id=\"details\" name=\"details\" required><br><br><input type=\"submit\" value=\"Submit\"></form>";
      var customOptions =
        {
          'maxWidth': '500',
          'className' : 'custom'
        };
      var newMarker = new L.marker(e.latlng).bindPopup(addPopup,customOptions).addTo(mymap);
    }
    mymap.on('click', addMarker);

</script>
</div>
      </div>
    </div>
  </div>
</div>
</div>

@endsection

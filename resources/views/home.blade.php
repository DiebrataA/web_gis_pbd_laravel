@extends('layouts.app')

@section('content')
<style>
    #mapid {
        height: 512px;
    }
    </style>
    <br>
<div class="container">
<div class="row justify-content-center">
    <div class="col-md-10">
      <div class="card card-login card-hidden mb-3">
        <div id="mapid">
    <script>
var mymap = L.map('mapid').setView([51.505, -0.09], 13);
L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'pk.eyJ1IjoiYS1kaWVicmF0YSIsImEiOiJjazh2eGtjcmkwNTdlM2VsYnlmMnk3aTNiIn0.JCFT2eXYRICBCCqm7zrQNQ'
}).addTo(mymap);
</script>
</div>
       
      </div>
    </div>
  </div>
    
</div>


@endsection

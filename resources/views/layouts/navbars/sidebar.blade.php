<div class="sidebar" data-color="purple" data-background-color="white" data-image="{{ asset('material') }}/img/sidebar-1.jpg">
  <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
  <div class="logo">
    <a href="https://creative-tim.com/" class="simple-text logo-normal">
      {{ __('Web-GIS 2') }}
    </a>
  </div>
  <div class="sidebar-wrapper">
    <ul class="nav">
      <li class="nav-item{{ Route::is('home') ? ' active' : ''}}">
        <a class="nav-link" href="{{ route('home') }}">
          <i class="material-icons">dashboard</i>
            <p>{{ __('Dashboard') }}</p>
        </a>
      </li>
      <li class="nav-item{{ Route::is('products.index') ? ' active' : ''}}">
        <a class="nav-link" href="{{ route('products.index') }}">
        <i class="material-icons">location_ons</i>
            <p>{{ __('Pinned List') }}</p>
        </a>
      </li>
    
      <li class="nav-item{{ Route::is('polygons.index') ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('polygons.index') }}">
          <i class="material-icons">library_books</i>
            <p>{{ __('Polygons') }}</p>
        </a>
      </li>
     
    </ul>
  </div>
</div>

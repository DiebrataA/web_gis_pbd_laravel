<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Polygon extends Model
{
    protected $fillable = [
        'name_polygon', 'coordinates', 'warna', 'keterangan'
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleDetail extends Model
{
    use HasFactory;

    protected $guard = [];

    // public function getBonnetAttribute($value)
    // {
    //     return explode(",",$value);
    // }
}

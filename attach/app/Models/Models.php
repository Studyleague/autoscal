<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Brand;

class Models extends Model
{
    use HasFactory;

    protected $table = 'models';

    public function user()
    {
        return $this->belongsTo(Brand::class);
    }
}

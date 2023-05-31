<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Interior extends Model
{
    use HasFactory;
    public function getMusicSystemAttribute($value)
    {
        if(url()->current() == 'https://thecarsdoctor.com/api/edit_vehicle_details')
        {

            return ($value) ? explode(",",str_replace(', ',',',$value)) : [];
        }
        else
        {

            return $value;
        }
    }
    public function getAutoAcConditionAttribute($value)
    {
        if(url()->current() == 'https://thecarsdoctor.com/api/edit_vehicle_details')
        {

            return ($value) ? explode(",",str_replace(', ',',',$value)) : [];
        }
        else
        {

            return $value;
        }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehiclePartsQuality extends Model
{
    use HasFactory;

    public function getFrontBumperAttribute($value)
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
    public function getBonnetAttribute($value)
    {
        if(url()->current() == 'https://thecarsdoctor.com/api/edit_vehicle_details')
        {

            ($value) ? $return = explode(",",str_replace(', ',',',$value)) : $return = [];
            return $return;
        }
        else
        {

            return $value;
        }
    }
    public function getFrontGlassAttribute($value)
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
    public function getRoofAttribute($value)
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

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExteriorBackSide extends Model
{
    use HasFactory;
    public function getDickyDoorAttribute($value)
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

    public function getRearGlassAttribute($value)
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

    public function getDickDoorConditionAttribute($value)
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
    public function getDickyFloorConditionAttribute($value)
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

    public function getRearBumperAttribute($value)
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

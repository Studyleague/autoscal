<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExteriorRhsSide extends Model
{
    use HasFactory;
    public function getRhsSideAppronAttribute($value)
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

    public function getRhsFenderAttribute($value)
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
    public function getAPillerAttribute($value)
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
    public function getBPillerAttribute($value)
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
    public function getFrontRhsWindowAttribute($value)
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
    public function getFrontRhsDoorAttribute($value)
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
    public function getRearRhsDoorAttribute($value)
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
    public function getRearRhsWindowAttribute($value)
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
    public function getRhsRunningBoardAttribute($value)
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
    public function getCPillerAttribute($value)
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
    public function getRhsQuaterPanelAttribute($value)
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

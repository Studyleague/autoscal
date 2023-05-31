<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class Order extends Model
{
    use HasFactory;

    public function user()
    {
        return $this->hasOne(User::class,'id','user_id');
    }

    public function partner()
    {
        return $this->hasOne(Partner::class,'id','partner_id');
    }

    public function brand()
    {
        return $this->hasOne(Brand::class,'id','brand_id');
    }

    public function model()
    {
        return $this->hasOne(Models::class,'id','model_id');
    }

    public function customer_details()
    {
        return $this->hasOne(CustomerDetail::class,'order_id','id');
    }

    public function rc_details()
    {
        return $this->hasOne(RcInsuaranceDetail::class,'order_id','id');
    }

    public function chassis_details()
    {
        return $this->hasOne(ChasisDetail::class,'order_id','id');
    }

    public function vehicle_details()
    {
        return $this->hasOne(VehicleDetail::class,'order_id','id');
    }

    public function vehicle_photos()
    {
        return $this->hasOne(VehiclePhoto::class,'order_id','id');
    }

    public function exterior_front_side()
    {
        return $this->hasOne(VehiclePartsQuality::class,'order_id','id');
    }

    public function exterior_rhs_side()
    {
        return $this->hasOne(ExteriorRhsSide::class,'order_id','id');
    }

    public function exterior_back_side()
    {
        return $this->hasOne(ExteriorBackSide::class,'order_id','id');
    }

    public function exterior_lhs_side()
    {
        return $this->hasOne(ExteriorLhsSide::class,'order_id','id');
    }

    public function interior()
    {
        return $this->hasOne(Interior::class,'order_id','id');
    }

    public function test_derive()
    {
        return $this->hasOne(TestDrive::class,'order_id','id');
    }

    public function engine_compartment()
    {
        return $this->hasOne(EngineCompartment::class,'order_id','id');
    }

    public function special_features()
    {
        return $this->hasOne(SpecialFeature::class,'order_id','id');
    }

    public function any_damage()
    {
        return $this->hasOne(Damage::class,'order_id','id');
    }

    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->format('d-M-Y');
    }

    public function getStatusAttribute($value)
    {
        if($value == 1):
            $status = 'Pending';
        elseif($value == 2):
            $status = 'Ongoing';
        elseif($value == 3):
            $status = 'Started';
        elseif($value == 4):
            $status = 'Under Review';
        elseif($value == 5):
            $status = 'Completed';
        else:
            $status = 'Cancelled';
        endif;

        return $status;
    }

    public function getDocumentStatusAttribute($value)
    {
        if($value == 0):
            $status = 'Under Review';
        elseif($value == 1):
            $status = 'Approved';
        else:
            $status = 'Rejected';
        endif;

        return $status;
    }
}

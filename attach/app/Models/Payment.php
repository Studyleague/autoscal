<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = ['name','mobile','email','status','fee','order_id','transaction_id','user_id','orderid'];

    public function order()
    {
        return $this->hasOne(Order::class,'id','order_id');
    }
    public function user()
    {
        return $this->hasOne(User::class,'id','user_id');
    }
}

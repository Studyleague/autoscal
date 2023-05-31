<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PrePayment extends Model
{
    use HasFactory;
    protected $fillable = ['name','mobile','email','status','fee','order_id','transaction_id','user_id','orderid'];

}

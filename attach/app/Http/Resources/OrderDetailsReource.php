<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderDetailsReource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */


    public function toArray($request)
    {

        return [
            "id"=> $this->id,
            "order_no"=> $this->order_no,
            "seller_name"=> $this->seller_name,
            "contact_no"=> $this->contact_no,
            "house_no"=> $this->house_no,
            "landmark"=> $this->landmark,
            "pincode"=> $this->pincode,
            "state"=> $this->state,
            "city"=> $this->city,
            "inspection_date"=> $this->inspection_date,
            "brand_id"=> $this->brand_id,
            "model_id"=> $this->model_id,
            "manfacturing_year"=> $this->manfacturing_year,
            "coupon_id"=> $this->coupon_id,
            "inspection_price"=> $this->inspection_price,
            "discount"=> $this->discount,
            "total"=> $this->total,
            "partner_id"=> $this->partner_id,
            "user_id"=> $this->user_id,
            "status"=> $this->status,
            "document_status"=> $this->document_status,
            "reason"=> $this->reason,
            "documents"=> ($this->document_pdf) ? asset($this->document_pdf) : NULL,
            "created_at"=> $this->created_at,
            "user_id"=>$this->user->id,
            "user_name"=>$this->user->name,
            "user_email"=>$this->user->email,
            "user_mobile"=>$this->user->mobile,
            "brand"=>$this->brand->name,
            "model"=>$this->model->model_no,
            "flag"=> ($this->status == 'Started') ? false : true,

        ];
    }
}

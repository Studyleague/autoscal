<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
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
            "status"=> $this->status,
            "manfacturing_year"=> $this->manfacturing_year,
            "created_at"=> $this->created_at,
            "brand_name"=>$this->brand->name,
            "model_no"=>$this->model->model_no ?? "",

        ];
        // return parent=>=>toArray($request);
    }
}

<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Models;
use App\Models\Brand;

class BrandController extends Controller
{
    public function index(Request $request)
    {
        $brand_array = Brand::select('id', 'name as brand_name','image_path')->get();
        return $brand_array;
    }

    public function get_model(Request $request)
    {
        $brand_id = $request->id;
        $arr = ['brand_id'=>$brand_id];
        $get_model = Models::select('id','model_no','price')->where($arr)->get();
        return $get_model;
    }

    public function get_price(Request $request)
    {
        $id = $request->id;
        $get_price = Models::select('id','model_no','price')->where('id',$id)->get();
        return $get_price;
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Models;
use App\Models\Brand;

class ModelsController extends Controller
{
    public function index()
    {
        $model_info = Models::select('models.*','brands.name','brands.image_path')
                              ->leftJoin('brands','brands.id','=','models.brand_id')->get();
        $brands = Brand::get();

        return view("admin.models",['models'=>$model_info,'brands'=>$brands]);
    }

    public function store(Request $request)
    {
        $brand_id = $request->brand_id;
        $model = $request->model;
        $price = $request->price;

        $conn = new Models;
        $conn->brand_id = $brand_id;
        $conn->model_no = $model;
        $conn->price = $price;
        $conn->save();

        $response = array("message" => "Model added successfully", "response" => "y");

        return json_encode($response);
    }

    public function update(Request $request)
    {
        $brand_id = $request->brand_id;
        $model = $request->model;
        $price = $request->price;
        $id = $request->id;

        Models::where('id',$id)
                ->update([
                    'brand_id' => $brand_id,
                    'model_no' => $model,
                    'price' => $price
                ]);

        $response = array("message" => "Model updated successfully", "response" => "y");

        return json_encode($response);
    }

    public function destroy($id)
    {
        Models::find($id)->delete();
        
        $response = array("message" => "Model deleted successfully", "response" => "y");

        return json_encode($response);
    }
}

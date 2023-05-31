<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Crypt;
use Auth;
use Str;
use Carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Log;
use Validator;


class BrandController extends Controller
{
    public function index()
    {
        $brands = DB::table('brands')->get();
        return view('admin.brands')->with('brands', $brands);
    }

    public function addBrand(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'brand_name' => 'required',
            'brand_image' => 'required',
        ],
        [
            'brand_name.required' => 'Please enter category name',
            'brand_image.required' => 'Please select category image',
            // 'brand_image.max' => 'Maximum category image limit is 1',
        ]);

        if ($validator->passes())
        {
            $brand_name = $request->brand_name;
            $brand_image = $request->file('brand_image');

            $check = DB::table('brands')->where('name', $brand_name)->first();

            if($check)
            {
                return response()->json(['error2'=> 'Brand already exists!']);
            }
            else
            {
                $timestamp = Carbon::now()->toDateTimeString();
                try
                {
                    $file_path = "";
                    if ($brand_image)
                    {
                        $fileName = $brand_image->getClientOriginalName();
                        $fileName = str_replace(" ", "_", $fileName);
                        $file_path = $brand_image->storeAs('uploads/brand', $fileName, 's3');
                    }

                    DB::beginTransaction();
                    DB::table('brands')
                            ->insert(
                            [
                                'name' => $brand_name,
                                'image' => $file_path,
                                'created_at' => $timestamp,
                                'updated_at' => $timestamp,
                            ]
                        );
                    DB::commit();
                    return response()->json(['success'=> 'Brand added successfully.']);
                }
                catch(\Exception $e)
                {
                    DB::rollBack();
                    Log::info("add category error :". $e);
                    return response()->json(['error2'=> 'Something went wrong while adding brand!']);
                }
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function getBrandInfo(Request $request)
    {
        $brand_id = $request->brand_id;
        $brand_data = DB::table('brands')->where('id', $brand_id)->first();
        if($brand_data)
        {
            $response = [
                'result'=>1,
                'brand'=>$brand_data
            ];
        }
        else
        {
            $response = ['result'=>0];

        }
        return $response;
    }

    public function updateBrand(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'edit_brand_id' => 'required',
            'edit_brand_name' => 'required',
        ],
        [
            'edit_brand_name.required' => 'Brand name is required'
        ]);

        if ($validator->passes())
        {
            $brand_id = trim($request->edit_brand_id);
            $brand_name = trim($request->edit_brand_name);

            // $check = DB::table('categories')->where('id', '!=', $coupon_id)->where('code', $coupon_code)->first();
            $check = DB::table('brands')->where('name', $brand_name)->first();

            if($check)
            {
                return response()->json(['error2'=> 'Brand already exists!']);
            }
            else
            {
                $timestamp = Carbon::now()->toDateTimeString();
                try
                {
                    DB::beginTransaction();
                    DB::table('brands')->where('id', $brand_id)
                        ->update(
                        [
                        'name' => $brand_name,
                        'updated_at' => $timestamp,
                        ]
                    );
                    DB::commit();
                    return response()->json(['success'=> 'Brand updated successfully.']);
                }
                catch(\Exception $e)
                {
                    DB::rollBack();
                    Log::info("brand updating error : ". $e);
                    return response()->json(['error2'=> 'Something went wrong while updating brand!']);
                }
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function deleteBrand(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'brand_id' => 'required',
        ],
        [
            'brand_id.required' => 'Brand id is required'
        ]);

        if ($validator->passes())
        {
            $brand_id = trim($request->brand_id);
            try
            {
                DB::beginTransaction();

                $brand_image = DB::table('brands')->where('id', $brand_id)->value('image');
                $filepath = asset($brand_image);
                if (File::exists($filepath)) {
                    File::delete($filepath);
                }

                DB::table('brands')->where('id', $brand_id)->delete();
                DB::commit();
                return response()->json(['success'=> 'Brand deleted successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("Brand deletion error : ".$e);
                return response()->json(['error'=> 'Something went wrong while deleting brand!']);
            }
        }
        else
        {
            return response()->json(['error'=>'Brand id not found.']);
        }
    }

}

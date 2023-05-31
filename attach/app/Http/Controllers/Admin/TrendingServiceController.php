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



class TrendingServiceController extends Controller
{
    public function index()
    {
        $trending_services = DB::table('trending_services')
                        ->leftJoin('services', 'trending_services.service_id', '=', 'services.id')
                        ->select('services.service_name', 'trending_services.*')
                        ->get();

        $services = DB::table('services')->get();

        return view('admin.trending_service')->with('trending_services', $trending_services)->with('services', $services);
    }

    public function addTrendignService(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'service_id' => 'required',
            'image' => 'required',
        ],
        [
            'service_id.required' => 'Please select any service',
            'image.required' => 'Please select trending service image',
            // 'sub_category_image.max' => 'Maximum category image limit is 1',
        ]);

        if ($validator->passes())
        {
            $service_id = $request->service_id;
            $image = $request->file('image');

            $check = DB::table('trending_services')->where('service_id', $service_id)->first();

            if($check)
            {
                return response()->json(['error2'=> 'Trending service already exists!']);
            }
            else
            {
                $timestamp = Carbon::now()->toDateTimeString();
                try
                {
                    $image_file_path = "";
                    if ($image)
                    {
                        $fileName = $image->getClientOriginalName();
                        $fileName = str_replace(" ", "_", $fileName);
                        $image_file_path = $image->storeAs('uploads/services', $fileName, 's3');
                    }

                    DB::beginTransaction();
                    DB::table('trending_services')
                            ->insert(
                            [
                                'service_id' => $service_id,
                                'image' => $image_file_path,
                                'created_at' => $timestamp,
                                'updated_at' => $timestamp,
                            ]
                        );
                    DB::commit();
                    return response()->json(['success'=> 'Trending service added successfully.']);
                }
                catch(\Exception $e)
                {
                    DB::rollBack();
                    Log::info("add trending service error :". $e);
                    return response()->json(['error2'=> 'Something went wrong while adding trending service!']);
                }
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function deleteTrendingService(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'service_id' => 'required',
        ],
        [
            'service_id.required' => 'Trending service id is required'
        ]);

        if ($validator->passes())
        {
            $service_id = trim($request->service_id);
            try
            {
                DB::beginTransaction();

                $sub_cat_image = DB::table('trending_services')->where('id', $service_id)->value('image');
                $filepath = asset($sub_cat_image);
                if (File::exists($filepath)) {
                    File::delete($filepath);
                }

                DB::table('trending_services')->where('id', $service_id)->delete();
                DB::commit();
                return response()->json(['success'=> 'Trending service deleted successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("Trending service deletion error : ".$e);
                return response()->json(['error'=> 'Something went wrong while deleting trending service!']);
            }
        }
        else
        {
            return response()->json(['error'=>'Trending service id not found.']);
        }
    }
}

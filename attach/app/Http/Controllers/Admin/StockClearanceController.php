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



class StockClearanceController extends Controller
{
    public function index()
    {
        $stocks = DB::table('stock_clearances')->get();

        return view('admin.stock_clearance')->with('stocks', $stocks);
    }


    public function addStockClearance(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'image' => 'required',
        ],
        [
            'name.required' => 'Please enter stock clearance name',
            'image.required' => 'Please select stock clearance image',
        ]);

        if ($validator->passes())
        {
            $name = $request->name;
            $image = $request->file('image');

            $check = DB::table('stock_clearances')->where('name', $name)->first();

            if($check)
            {
                return response()->json(['error2'=> 'Stock with same name already exists!']);
            }
            else
            {
                $timestamp = Carbon::now()->toDateTimeString();
                try
                {
                    $file_path = "";
                    if ($image)
                    {
                        $fileName = $image->getClientOriginalName();
                        $fileName = str_replace(" ", "_", $fileName);
                        $cheque_file_path = $image->storeAs('uploads/stock_clearance', $fileName, 's3');
                    }

                    DB::beginTransaction();
                    DB::table('stock_clearances')
                            ->insert(
                            [
                                'name' => $name,
                                'image' => $file_path,
                                'created_at' => $timestamp,
                                'updated_at' => $timestamp,
                            ]
                        );
                    DB::commit();
                    return response()->json(['success'=> 'Stock clearance added successfully.']);
                }
                catch(\Exception $e)
                {
                    DB::rollBack();
                    Log::info("add stock error :". $e);
                    return response()->json(['error2'=> 'Something went wrong while adding stock clearance!']);
                }
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }


    public function deleteStockClearance(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'stock_id' => 'required',
        ],
        [
            'stock_id.required' => 'Stock id is required'
        ]);

        if ($validator->passes())
        {
            $stock_id = trim($request->stock_id);
            try
            {
                DB::beginTransaction();
                $stock_image = DB::table('stock_clearances')->where('id', $stock_id)->value('image');
                $filepath = asset($stock_image);
                if (File::exists($filepath)) {
                    File::delete($filepath);
                }

                DB::table('stock_clearances')->where('id', $stock_id)->delete();
                DB::commit();
                return response()->json(['success'=> 'Stock clearance deleted successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("STock Clearance deletion error : ".$e);
                return response()->json(['error'=> 'Something went wrong while deleting stock clearance!']);
            }
        }
        else
        {
            return response()->json(['error'=>'Stock id not found.']);
        }
    }

}

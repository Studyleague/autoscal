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
use App\Models\Vendor;
use App\Models\VendorDetail;

class VendorsController extends Controller
{
    public function index()
    {
        $vendors = Vendor::where('type', '1')->with('vendordetails', 'vendorservices', 'rejectreason')->get();

        return view('admin.regular_vendors')->with('vendors', $vendors);
    }

    public function freelancerIndex()
    {
        $vendors = Vendor::where('type', '2')->with('vendordetails', 'vendorservices', 'rejectreason')->get();

        return view('admin.freelancer_vendors')->with('vendors', $vendors);
    }

    public function activateVendor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vendor_id' => 'required'
        ],
        [
            'vendor_id.required' => 'Unable to get vendor id',
        ]);

        if ($validator->passes())
        {
            $vendor_id = trim($request->vendor_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                DB::table('vendor_details')
                        ->where('vendor_id', $vendor_id)
                        ->update(
                        [
                            'status' => '1',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::table('reject_profiles')->where('vendor_id', $vendor_id)->delete();
                DB::commit();
                return response()->json(['success'=> 'Vendor updated successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("update vendor error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating vendor!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function deactivateVendor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vendor_id' => 'required'
        ],
        [
            'vendor_id.required' => 'Unable to get vendor id',
        ]);

        if ($validator->passes())
        {
            $vendor_id = trim($request->vendor_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                DB::table('vendor_details')
                        ->where('vendor_id', $vendor_id)
                        ->update(
                        [
                            'status' => '0',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::table('reject_profiles')->where('vendor_id', $vendor_id)->delete();
                DB::commit();
                return response()->json(['success'=> 'Vendor updated successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("update vendor error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating vendor!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }


    public function unblockVendor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vendor_id' => 'required'
        ],
        [
            'vendor_id.required' => 'Unable to get vendor id',
        ]);

        if ($validator->passes())
        {
            $vendor_id = trim($request->vendor_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                DB::table('vendors')
                        ->where('id', $vendor_id)
                        ->update(
                        [
                            'active_status' => '1',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'Vendor unblocked successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("unblock vendor error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating vendor!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function blockVendor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vendor_id' => 'required'
        ],
        [
            'vendor_id.required' => 'Unable to get vendor id',
        ]);

        if ($validator->passes())
        {
            $vendor_id = trim($request->vendor_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                DB::table('vendors')
                        ->where('id', $vendor_id)
                        ->update(
                        [
                            'active_status' => '0',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'Vendor blocked successfully!']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("error while blocking vendor". $e);
                return response()->json(['error2'=> 'Something went wrong while updating vendor!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }


    public function rejectVendor(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vendor_id' => 'required',
            'reject_reason' => 'required',
        ],
        [
            'vendor_id.required' => 'Unable to get vendor id',
            'reject_reason.required' => 'Please enter any rejection reason',
        ]);

        if ($validator->passes())
        {
            $vendor_id = trim($request->vendor_id);
            $reject_reason = trim($request->reject_reason);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                DB::table('vendor_details')
                        ->where('vendor_id', $vendor_id)->update([
                            'status' => '2',
                            'updated_at' => $timestamp,
                        ]); 

                DB::table('reject_profiles')
                        ->insert(
                        [
                            'vendor_id' => $vendor_id,
                            'reason' => $reject_reason,
                            'created_at' => $timestamp,
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'Vendor rejection reason updated successfully.']);
            }
            catch(\Exception $e)
            {
                DB::rollBack();
                Log::info("vendor profile rejection error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating rejecting reason of vendor!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }
}

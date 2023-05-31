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

class CustomerController extends Controller
{
    public function index()
    {
        $users = DB::table('customers')->get();
        return view('admin.customers')->with('users', $users);
    }

    public function activateUser(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'user_id' => 'required'
        ],
        [
            'user_id.required' => 'Unable to get user id',
        ]);

        if ($validator->passes())
        {
            $user_id = trim($request->user_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                $user_id = DB::table('customers')
                        ->where('id', $user_id)
                        ->update(
                        [
                            'status' => '1',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'User updated successfully.']);
            }
            catch(Exception $e)
            {
                DB::rollBack();
                Log::info("update user error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating user!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }

    public function deactivateUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required'
        ],
        [
            'user_id.required' => 'Unable to get user id',
        ]);

        if ($validator->passes())
        {
            $user_id = trim($request->user_id);

            $timestamp = Carbon::now()->toDateTimeString();
            try
            {
                DB::beginTransaction();
                $user_id = DB::table('customers')
                        ->where('id', $user_id)
                        ->update(
                        [
                            'status' => '0',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'User updated successfully.']);
            }
            catch(Exception $e)
            {
                DB::rollBack();
                Log::info("update user error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating user!']);
            }
        }
        else
        {
            return response()->json(['error'=>$validator->errors()]);
        }
    }
}

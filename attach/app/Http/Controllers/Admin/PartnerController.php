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
use App\Models\Partner;

class PartnerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $partners = Partner::get();
        return view('admin.add_partner')->with('partners', $partners);
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
                $user_id = DB::table('partners')
                        ->where('id', $user_id)
                        ->update(
                        [
                            'status' => '1',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'Partner updated successfully.']);
            }
            catch(Exception $e)
            {
                DB::rollBack();
                Log::info("update user error". $e);
                return response()->json(['error2'=> 'Something went wrong while updating partner!']);
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
                $user_id = DB::table('partners')
                        ->where('id', $user_id)
                        ->update(
                        [
                            'status' => '0',
                            'updated_at' => $timestamp,
                        ]
                    );
                DB::commit();
                return response()->json(['success'=> 'Partner updated successfully.']);
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
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $mobile = $request->mobile;

        $partner = new Partner;
        $partner->name = $name;
        $partner->mobile = $mobile;
        $partner->email = $email;
        $partner->save();

        $response = array("message" => "Partner added successfully", "response" => "y");

        return json_encode($response);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $mobile = $request->mobile;
        $id = $request->id;

        Partner::where('id', $id)
                ->update([
                    'name' => $name, 
                    'mobile' => $mobile, 
                    'email' => $email 
                ]);

        $response = array("message" => "Partner updated successfully", "response" => "y");

        return json_encode($response);
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Partner::find($id)->delete();
        $response = array("message" => "Partner deleted successfully", "response" => "y");
    
        return json_encode($response);
    }
}

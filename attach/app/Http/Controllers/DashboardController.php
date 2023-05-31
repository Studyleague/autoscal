<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use Carbon\Carbon;
use Str;



class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function changeProfilePhoto(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'new_logo'=>'mimes:jpeg,jpg,png,gif|required|max:100000'
        ],
        [
            'new_logo.required' => 'Please select image to change logo',
            'new_logo.mimes' => 'Image format not supported',
            'new_logo.max' => 'Maximum logo size must be less than 10MB',
        ]);

        if($validator->passes())
        {
            $logo = $request->file('new_logo');
            $user_id = auth()->user()->id;
            $filename = "";
            $logo_file_path = "";
                if ($logo)
                {
                    $fileName = $logo->getClientOriginalName();
                    $fileName = str_replace(" ", "_", $fileName);
                    $logo_file_path = $logo->storeAs('upload/images', $fileName, 's3');
                }
            try
            {
                DB::table('users')->where('id', $user_id)->update(['avatar' => $logo_file_path]);
                session()->flash('user_dashboard_message', 'Profile photo changed successfully !');
                return redirect()->back();
            }
            catch(\Exception $e)
            {
                session()->flash('user_dashboard_message', 'Something went wrong while changing profile photo');
                Log::info("user profile changing error: ". $e);
                return redirect()->back();
            }
        }
        else
        {
            session()->flash('user_dashboard_message', $validator->errors());
            return redirect()->back();
        }
    }

    public function dashboard()
    {
        $user_info = DB::table('users')->where('id', auth()->user()->id)->first();
        return view('user_dashboard')->with('user_info', $user_info);
    }


}

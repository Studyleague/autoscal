<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Auth;
use Str;
use Validator;


class DashboardController extends Controller
{
    public function viewForm()
    {
        return view('vendors.register_seller');
    }

    public function dashboard()
    {
        $vendor_info = auth()->guard('vendor')->user();
        $vendor_details = DB::table('vendor_details')
                ->leftJoin('reject_profiles', 'vendor_details.id', '=', 'reject_profiles.vendor_id')
                ->select('reject_profiles.reason', 'vendor_details.*')
                ->where('vendor_details.vendor_id', $vendor_info->id)
                ->first();

        if($vendor_info->type == 2)
        {
            return view('vendors.freelancer_dashboard')->with('vendor_info', $vendor_info)->with('vendor_details', $vendor_details);
        }
        elseif($vendor_info->type == 1)
        {
            // dd($vendor_details);
            return view('vendors.vendor_dashboard')->with('vendor_info', $vendor_info)->with('vendor_details', $vendor_details);
        }
        else
        {
            return view('vendors.register_seller');
        }
    }

    public function changeVendorLogo(Request $request)
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
            $vendor_id = auth()->guard('vendor')->user()->id;
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
                DB::table('vendor_details')->where('vendor_id', $vendor_id)->update(['logo' => $logo_file_path]);
                session()->flash('profile_message', 'Company logo changed successfully !');
                return redirect()->back();
            }
            catch(\Exception $e)
            {
                session()->flash('profile_message', 'Something went wrong while changing logo');
                Log::info("vendor profile changing error: ". $e);
                return redirect()->back();
            }
        }
        else
        {
            session()->flash('profile_message', $validator->errors());
            return redirect()->back();
        }
    }


    public function changeFreelancerLogo(Request $request)
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
            $vendor_id = auth()->guard('vendor')->user()->id;
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
                DB::table('vendor_details')->where('vendor_id', $vendor_id)->update(['logo' => $logo_file_path]);
                session()->flash('profile_message', 'Profile photo changed successfully !');
                return redirect()->back();
            }
            catch(\Exception $e)
            {
                session()->flash('profile_message', 'Something went wrong while changing profile photo');
                Log::info("freelancer profile changing error: ". $e);
                return redirect()->back();
            }
        }
        else
        {
            session()->flash('profile_message', $validator->errors());
            return redirect()->back();
        }
    }

    public function addService()
    {
        $category = DB::table('services')->get();
        return view('vendors.add_service')->with('category', $category);
    }

    public function getSubcategory(Request $request)
    {
        $category_id = trim($request->category_id);
        $sub_category = DB::table('sub_category')->where('service_id', $category_id)->get();

            $response = '<select class="form-control populate" data-plugin-selectTwo required id="add_city" name="add_city">';
            $response.=     '<option selected readonly disabled> -- Select Sub Category --</option>';
            foreach($sub_category as $c)
            {
                $response.='<option value="'. $c->id .'">'. $c->sub_service_name.'</option>';
            }
            $response.='</select>';

        return [
            'error' => false,
            'response' => $response
        ];
    }

}

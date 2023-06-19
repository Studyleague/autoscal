<?php

namespace App\Http\Controllers;

use Str;
use Auth;
use Crypt;
use Carbon\Carbon;
use App\Models\Review;
use Illuminate\Http\Request;
use App\Models\VendorService;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $explore_services = DB::table('services')->get();
        return view('home')->with('explore_services', $explore_services);
    }

    public function subCategory(Request $request, $service_id)
    {
        $service_id = Crypt::decrypt($service_id);
        $sub_category = DB::table('sub_services')->where('service_id', $service_id)->get();
        $service_providers = VendorService::where('service_id', $service_id)->with('images', 'vendorDetail', 'category')->paginate(12);


        return view('sub_category')->with('sub_category', $sub_category)->with('service_providers', $service_providers)->with('service_id', $service_id);
    }

    public function catById(Request $request, $service_id)
    {
        $service_id = Crypt::decrypt($service_id);
        $sub_category = DB::table('sub_services')->where('service_id', $service_id)->get();
        $service_providers = VendorService::where('service_id', $service_id)->with('images', 'vendorDetail', 'category')->paginate(12);

        return view('all_sub_category')->with('sub_category', $sub_category)->with('service_providers', $service_providers)->with('service_id', $service_id);
    }

    public function childCatById(Request $request, $sub_service_id)
    {
        $sub_service_id = Crypt::decrypt($sub_service_id);
        $service_providers = VendorService::where('sub_service_id', $sub_service_id)->with('images', 'vendorDetail', 'category')->paginate(12);

        return view('child_service')->with('service_providers', $service_providers)->with('sub_service_id', $sub_service_id);
    }

    public function serviceDetails(Request $request, $vendor_service_id)
    {
        $vendor_service_id = Crypt::decrypt($vendor_service_id);

        $service_provider_info = VendorService::where('id', $vendor_service_id)->with('images', 'vendorDetail', 'category', 'subcategory')->first();

        // $reviews = Review::where('vendor_service_id', $vendor_service_id)->get();

        return view('service_details')->with('vendor_service_id', $vendor_service_id)->with('service_provider_info', $service_provider_info);
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Crypt;
use Auth;
use Str;
use App\Models\Slider;
use Carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Log;
use Validator;

class SliderController extends Controller
{
    public function index()
    {
        $sliders = DB::table('sliders')->get();
        return view('admin.sliders')->with('sliders', $sliders);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = time().'_'.$request->file('image_path')->getClientOriginalName();
 
        $path = $request->file('image_path')->move('images/slider',$name);
        $path = 'images/slider/'.$name;

        $slider = new Slider;

        $slider->image_path = $path;
        $slider->save();

        $response = array("message" => "Slider added successfully", "response" => "y");
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
        DB::table('sliders')->where('id', $id)->delete();
        DB::commit();
        $response = array(
                'success' => false,
                'response' => 'y',
                'message' => 'Slider deleted successfully',
        );
        return json_encode($response);
    }

}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Topper;
use DB;

class TopperController extends Controller
{
    public function index()
    {
        $topers = Topper::get();
        return view('admin.toppers')->with('toppers', $topers);
    }

    public function store(Request $request)
    {

        $t_image = $request->file('image_path');

        $file_path = "";
        if ($t_image)
        {
            $fileName = $t_image->getClientOriginalName();
            $fileName = str_replace(" ", "_", $fileName);
            $file_path = $t_image->storeAs('images/topper', $fileName, 's3');
        }

        $slider = new Topper;

        $slider->image = $file_path;
        $slider->name = $request->name ?? "";
        $slider->rank = $request->rank ?? "";
        $slider->exam = $request->exam ?? "";
        $slider->preference = $request->pref_no ?? "";
        $slider->save();

        $response = array("message" => "Topper added successfully", "response" => "y");
        return json_encode($response);
    }    

    public function destroy($id)
    {
        DB::table('toppers')->where('id', $id)->delete();
        DB::commit();
        $response = array(
                'success' => false,
                'response' => 'y',
                'message' => 'Topper deleted successfully',
        );
        return json_encode($response);
    }
}

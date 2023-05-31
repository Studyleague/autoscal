<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Download;
use DB;
class DownloadController extends Controller
{
    public function index()
    {
        $downloads = Download::get();
        return view('admin.downloads')->with('downloads', $downloads);
    }

    public function store(Request $request)
    {
        $t_image = $request->file('image_path');
        if($request->type == 1)
        {

            if ($t_image)
            {
                $fileName = $t_image->getClientOriginalName();
                $fileName = str_replace(" ", "_", $fileName);
                $file_path = $t_image->storeAs('images/download', $fileName, 's3');
            }
        }
        else
        {
            $file_path = $request->link;
        }
        

        $slider = new Download;

        $slider->title = $request->title ?? "";
        $slider->path = $file_path;
        $slider->type = $request->type;
        $slider->save();

        $response = array("message" => "Download added successfully", "response" => "y");
        return json_encode($response);
    }
}

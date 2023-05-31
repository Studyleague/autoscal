<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Category;
use App\Models\FreeVideo;
use Crypt;
use Auth;
use Str;
use Carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Log;
use Validator;


class CategoryController extends Controller
{
    public function index()
    {
        $category = DB::table('categories')->get();
        return view('admin.category')->with('category', $category);
    }


    public function store(Request $request)
    {
        $cat = new Category;
        $cat->name = $request->name;
        $cat->save();

        $response = array("message" => "Category added successfully", "response" => "y");
        return json_encode($response);
    }

    public function video_index($id)
    {
        $id = base64_decode($id);
        $category_name = DB::table('categories')->value('name');


        $videos = DB::table('free_videos')->where('category_id',$id)->get();

        return view('admin.videos',['videos'=> $videos,'category_name'=>$category_name,'id'=>$id]);
    }

    public function video_store(Request $request)
    {
        $cat = new FreeVideo;
        $cat->category_id = $request->category_id;
        $cat->link = $request->link;
        $cat->title = $request->title;
        $cat->save();

        $response = array("message" => "Video added successfully", "response" => "y");
        return json_encode($response);
    }
}

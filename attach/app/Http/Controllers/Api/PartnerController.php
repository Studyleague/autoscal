<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use App\Models\Partner;
use File;
class PartnerController extends Controller
{
    public function mime2ext($mime)
    {
        $all_mimes = '{
        "docx":["application\/vnd.openxmlformats-officedocument.wordprocessingml.document"],
        "png":["image\/png","image\/x-png"],
        "bmp":["image\/bmp","image\/x-bmp","image\/x-bitmap","image\/x-xbitmap","image\/x-win-bitmap","image\/x-windows-bmp","image\/ms-bmp","image\/x-ms-bmp","application\/bmp","application\/x-bmp","application\/x-win-bitmap"],
        "gif":["image\/gif"],
        "jpeg":["image\/jpeg","image\/pjpeg"],
        "pdf":["application\/pdf","application\/octet-stream"]
        }';



        $all_mimes = json_decode($all_mimes,true);
        // dd($all_mimes);
        foreach ($all_mimes as $key => $value) {
            if(array_search($mime,$value) !== false) return $key;
        }
        return false;
    }

    public function show(Request $request)
    {
        $user_id = $request->user_id;
        $uuid = $request->uuid;
        if($uuid)
        {
            Partner::where('id',$user_id)
            ->update(['uuid'=>$uuid]);
        }

        $response = Partner::select('name','mobile','email')->where('id',$user_id)->first();
        return $response;
    }

    public function edit(Request $request)
    {
        $user_id = $request->user_id;
        $name = $request->name;
        $email = $request->email;

        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'name' => 'required',
            'email' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }

        Partner::where('id',$user_id)
        ->update([
            'name'=>$name,
            'email'=>$email,
        ]);

        $response = array(
            'error' => false,
            'message' => 'Profile updated successfully',
        );
        return $response;
    }

    public function update(Request $request)
    {
        $user_id = $request->user_id;
        $aadhar_front = $request->aadhar_front;
        $aadhar_back = $request->aadhar_back;
        $pan_card = $request->pan_card;
        $partner_info = Partner::where('id',$user_id)->select('adhaar_front','adhaar_back','pan_card')->first();

        if($aadhar_front):
            $destinationPath = env('IMG_PATH') . $partner_info->adhaar_front;

            if(File::exists($destinationPath)){
                File::delete($destinationPath);
            }

            $decodedImage = base64_decode("$aadhar_front");
            $mime_type = finfo_buffer(finfo_open(), $decodedImage, FILEINFO_MIME_TYPE);
            $ext = $this->mime2ext($mime_type);
            $image_file_name = time() . 'aadhar_front';
            $profile_path = env('IMG_PATH') . 'images/documents/aadhar/' . $image_file_name;
            $return = file_put_contents($profile_path . ".".$ext, $decodedImage);
            $front_db_file_path = "images/documents/aadhar/" . $image_file_name . "." .$ext;
        else:
            $front_db_file_path = $partner_info->adhaar_front ?? "";
        endif;

        if($aadhar_back):
            $destinationPath = env('IMG_PATH') . $partner_info->adhaar_back;

            if(File::exists($destinationPath)){
                File::delete($destinationPath);
            }
            $decodedImage = base64_decode("$aadhar_back");
            $mime_type = finfo_buffer(finfo_open(), $decodedImage, FILEINFO_MIME_TYPE);
            $ext = $this->mime2ext($mime_type);
            $image_file_name = time() . 'aadhar_back';
            $profile_path = env('IMG_PATH') . 'images/documents/aadhar/' . $image_file_name;
            $return = file_put_contents($profile_path . ".".$ext, $decodedImage);
            $back_db_file_path = "images/documents/aadhar/" . $image_file_name . "." .$ext;
        else:
            $back_db_file_path = $partner_info->adhaar_back ?? "";
        endif;
        if($pan_card):
            $destinationPath = env('IMG_PATH') . $partner_info->pan_card;

            if(File::exists($destinationPath)){
                File::delete($destinationPath);
                $i=1;
            }

            $decodedImage = base64_decode("$pan_card");
            $mime_type = finfo_buffer(finfo_open(), $decodedImage, FILEINFO_MIME_TYPE);
            $ext = $this->mime2ext($mime_type);
            $image_file_name = time() . 'pan';
            $profile_path = env('IMG_PATH') . 'images/documents/pan/' . $image_file_name;
            $return = file_put_contents($profile_path . ".".$ext, $decodedImage);
            $pan_db_file_path = "images/documents/pan/" . $image_file_name . "." .$ext;
        else:
            $pan_db_file_path = $partner_info->pan_card ?? "";
        endif;

        Partner::where('id',$user_id)
        ->update([
            'adhaar_front'=>$front_db_file_path,
            'adhaar_back'=>$back_db_file_path,
            'pan_card'=>$pan_db_file_path,
        ]);

        $response = array("error"=>false,"message"=>"Document updated successfully");
        return $response;

    }
}

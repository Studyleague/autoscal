<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class UserController extends Controller
{
    public function index()
    {
        $users = DB::table('users')->orderBy('id','DESC')->get();
        return view('admin.users')->with('users', $users);
    }
    
    public function user_pets($id)
    {
        $id = base64_decode($id);
        return view('admin.user_pets');
    }

    public function pets()
    {
        return view('admin.pets');
    }
    
    public function pending_pets()
    {
        return view('admin.pending_pets');
    }
}

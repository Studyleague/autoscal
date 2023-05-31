<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Admin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AdminController extends Controller
{
    use AuthenticatesUsers;
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        if(Auth::guard('admin')->attempt($credentials, $request->remember)){
            $user = Admin::where('email', $request->email)->first();
            Auth::guard('admin')->login($user);
            return redirect()->route('admin.home');
        }

        return redirect()->route('admin.login')->with('status', 'Failed to process login');
    }

    // public function logout(Request $request)
    // {
    //     if(Auth::guard('admin')->logout())
    //     {
    //         return redirect()->route('admin.login')->with('status', 'Logout Successfully!');
    //     }
    // }

    public function logout(Request $request)
    {
        $this->guard()->logout();

        if($response = $this->loggedOut($request))
        {
            return $response;
        }

        return $request->wantsJson() ? new JsonResponse([], 204) : redirect('/');
    }

    protected function authenticated(Request $request, $user)
    {
        return redirect()->route('admin.home');
    }

    protected function loggedOut(Request $request)
    {
        return redirect()->route('admin.login');
    }

    protected function guard()
    {
        return Auth::guard('admin');
    }
}

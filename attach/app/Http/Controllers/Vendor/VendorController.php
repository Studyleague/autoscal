<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Vendor;


class VendorController extends Controller
{
    public function showLogin()
    {
        return redirect()->route('home');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        if(Auth::guard('vendor')->attempt($credentials, $request->remember)){
            $user = Vendor::where('email', $request->email)->first();
            Auth::guard('vendor')->login($user);
            return redirect()->route('vendor.home');
        }

        return redirect()->route('vendor.login')->with('status', 'Failed to process login');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();

        if($response = $this->loggedOut($request))
        {
            return $response;
        }

        return $request->wantsJson() ? new JsonResponse([], 204) : redirect('/');
    }

    // public function logout(Request $request)
    // {
    //     if(Auth::guard('vendor')->logout())
    //     {
    //         return redirect()->route('vendor.login')->with('status', 'Logout Successfully!');
    //     }
    // }

    protected function authenticated(Request $request, $user)
    {
        return redirect()->route('vendor.home');
    }

    protected function loggedOut(Request $request)
    {
        // return redirect()->route('vendor.login');
        return redirect()->route('home');
    }

    protected function guard()
    {
        return Auth::guard('vendor');
    }
}

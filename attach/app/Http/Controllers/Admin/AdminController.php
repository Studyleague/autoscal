<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Admin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Hash;
use Session;
use App\Rules\MatchOldPassword;
use DB;

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

        return redirect()->route('admin.login')->with('status', 'Invalid credentials');
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

    public function showChangePassword()
    {
        return view('admin.change_password');
    }

    public function changePassword(Request $request)
    {
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'confirm_new_password' => ['same:new_password'],
        ],
        [
            'current_password.required' => 'Please enter the old password',
            'new_password.required' => 'Please enter the new password',
            'confirm_new_password.same' => 'Please confirm password with new password',
        ]);

        Admin::find( Auth::user()->id )->update(['password'=> Hash::make($request->new_password)]);

        return redirect()->back()->with('change_password_message',"Password Changed Successfully");
    }
}

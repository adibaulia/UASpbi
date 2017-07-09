<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Middleware;
use Laracasts\Flash\FlashServiceProvider;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function index()
    {
        return view('login.formLogin');
    }

    public function checkLogin(Request $request)
    {
      $this->validate($request, [
      'email' => 'required|string|email|max:255|exists:users,email',
      // 'password' => 'required|string|min:6|exists:users,password',
    ]);

        if (Auth::attempt([
          'email' => $request->email,
          'password' => $request->password
          ])) {
          $user=auth()->user();
          //dd($user);
          //\Session::flash('user', $user);
          $request->session()->put('user', $user);
          flash()->overlay('Berhasil Login');
          return redirect('admin');
        } else {
          flash()->overlay('Password anda salah, Silahkan Dicek kembali');
          Auth::logout();
          return redirect('login');
        }
    }
}

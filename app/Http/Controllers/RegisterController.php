<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Profil_petugas;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Laracasts\Flash\FlashServiceProvider;

class RegisterController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function index()
    {
        return view('register.formRegist');
    }

    public function admin()
    {
        return view('register.formRegistAdmin');
    }

    protected function create(Request $request)
    {
        $this->validate($request, [
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:users',
        'password' => 'required|string|min:6|confirmed',
      ]);

        User::create([
          'name' => $request['name'],
          'email' => $request['email'],
          'password' => bcrypt($request['password']),
          'JENIS_ID' => $request->jenis,
      ]);

        $profile = new Profil_petugas();
        $profile->USER_ID = User::max('id');
      //dd($profile->USER_ID);
        $profile->save();
        flash()->overlay('Password anda salah, Silahkan Dicek kembali');
        return redirect('login');
    }
}

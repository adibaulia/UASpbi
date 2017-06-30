<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Session;

class PetugasController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
    $this->middleware('petugas');
  }

  public function index(Request $request)
  {
    $users = $request->session()->get('user');
    return view('petugas.index' , ['user' => $users]);
  }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Session;

class PetugasController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
    $this->middleware('petugas', ['except'=>'profilPetugas']);
  }

  public function index()
  {
    return view('petugas.index');
  }

  public function profilPetugas()
  {
    return view('profilPetugas');
  }
}

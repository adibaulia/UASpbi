<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
  public function __construct()
  {

      \Session::reflash();
    $this->middleware('auth');
    $this->middleware('admin');

  }

  public function index()
  {
    $users=$this->getUser();
    //dd($users);
    return view('admin.index' , ['user' => $users]);
  }

  public function getUser(){
    return \Session::get('user');
  }
}

<?php

namespace App\Http\Controllers;
use App\Kota;
use App\Provinsi;
use App\Kegiatan;
use App\TahunAkademik;
use Illuminate\Http\Request;
use App\Http\Middleware;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
//use Illuminate\Support\Facades\Session;

class AdminController extends Controller
{

  public function __construct()
  {
    $this->middleware('auth');
    $this->middleware('admin');
  }

  public function index(Request $request)
  {
    $users = $request->session()->get('user');
    return view('admin.index' , ['user' => $users]);
  }

  public function show($name, Request $request)
  {
    $kota=Kota::all();
    $provinsi=Provinsi::all();
    $tahun=TahunAkademik::all();
    $users = $request->session()->get('user');
    return view('admin.'.$name , ['provinsi' => $provinsi], ['tahun' => $tahun]);
  }

  public function tambahKegiatan(Request $request)
  {
    // $this->validate($request, [
    //   'name' => 'required|string|max:255',
    //   'email' => 'required|string|email|max:255|unique:users',
    //   'password' => 'required|string|min:6|confirmed',
    // ]);
    Kegiatan::create([
      'NAMA_KEGIATAN' => $request->nama_kegiatan,
      'WAKTU_KEGIATAN' => $request->waktu_kegiatan,
      'TANGGAL_KEGIATAN' => $request->tanggal_kegiatan,
      'ALAMAT_KEGIATAN' => $request->alamat_kegiatan,
      'TAHUN_AKADEMIK_ID' => $request->tahun_akademik,
    ]);

    return view('admin.index');
  }

}

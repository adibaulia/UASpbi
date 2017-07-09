<?php

namespace App\Http\Controllers;

use App\Kota;
use App\Provinsi;
use App\Kegiatan;
use App\User;
use App\Peserta;
use App\ProfilPetugas;
use App\DetailPeserta;
use App\DetailSosialisasi;
use App\JenisPetugas;
use App\BerkasKegiatan;
use App\TahunAkademikSosialisasi;
use Illuminate\Http\Request;
use App\Http\Middleware;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;

class PetugasController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
    $this->middleware('petugas', ['except'=>'profilPetugas']);
  }

  public function index(Request $request)
  {
    $users = \Session::get('user');
    $get=User::find($users->id);
    if(empty($get->kegiatans)){
      return view('petugas.kontakAdmin');
    }else{
      $pj=DetailSosialisasi::where('USER_ID',$users->id)->with('kegiatan')->get();
      //dd($pj);





      return view('petugas.index')->with('jadwal',$pj);
    }
  }

  public function profilPetugas()
  {
    return view('profilPetugas');
  }


  public function jadwal($id)
  {
    $users = \Session::get('user');
    $pj=User::find($users->id)->kegiatans()->whereMonth('TANGGAL_KEGIATAN',$id)->get();
    //dd($pj);
    //echo $id;

    $bulan=date("F", mktime(0, 0, 0, $id, 10));

    return view('petugas.jadwal')->with('jadwal', $pj)
                                 ->with('bulan',$bulan);
  }


}

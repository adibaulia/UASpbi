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

  public function show($name)
  {

    $kota=Kota::all();
    $provinsi=Provinsi::all();
    $tahun=TahunAkademikSosialisasi::all();
    $petugas=JenisPetugas::find(2)->users()->get();
    $peserta=Peserta::all();
    //$join=provinsi::find(1)->users()->first();
    //dd($petugas);

    return view('admin.'.$name)->with('provinsi', $provinsi)
                               ->with('tahun', $tahun)
                               ->with('kota', $kota)
                               ->with('petugas', $petugas)
                               ->with('peserta', $peserta);
  }

  public function tambahKegiatan(Request $request)
  {
    // $this->validate($request, [
    //   'name' => 'required|string|max:255',
    //   'email' => 'required|string|email|max:255|unique:users',
    //   'pUserassword' => 'required|string|min:6|confirmed',
    //
    $batasAkhir=date('Y-m-d', strtotime($request->tanggal_kegiatan_submit. ' + 14 days'));
    Kegiatan::create([
      'NAMA_KEGIATAN' => $request->nama_kegiatan,
      'WAKTU_KEGIATAN' => $request->waktu_kegiatan,
      'TANGGAL_KEGIATAN' => $request->tanggal_kegiatan_submit,
      'ALAMAT_KEGIATAN' => $request->alamat_kegiatan,
      'TAHUN_AKADEMIK_ID' => $request->tahun_akademik,
    ]);

    $idkegiatan=Kegiatan::max('id');

    DetailPeserta::create([
      'PESERTA_ID' => $request->jenis_peserta,
      'KEGIATAN_ID' => $idkegiatan,
      'KOTA_ID' => $request->kota_kegiatan,
      'NAMA_PESERTA' => $request->nama_peserta,
    ]);

    DetailSosialisasi::create([
      'USER_ID' => $request->petugas_kegiatan,
      'KEGIATAN_ID' => $idkegiatan,
      'BATAS_PENGISIAN' => $batasAkhir,
    ]);

    $berkas = new BerkasKegiatan();
    $berkas->KEGIATAN_ID = $idkegiatan;
    $berkas->save();
    echo "berhasil";

  }

  public function getKota(Request $request){
    $get=Kota::where('provinsi_id', $request->id)->get();
    //dd ($get);
    return response()->json($get);
  }

  public function checkTanggal(Request $request){
    dd ($request->id);
    return response()->json($get);
  }

}

@extends('layouts.master')
@section('title')
  Dashboard Petugas
@endsection
@section('headerwrap')
  <h1>Jadwal Bulan {{$bulan}}</h1>
  <br>
  @foreach ($jadwal as $jadwals)
    <div class="col-sm-4">
      <div class="panel panel-default">
      <a href="{!!URL::to('/petugas/laporan')!!}/{{$jadwals->ID}}"><div class="panel-heading">{{$jadwals->NAMA_KEGIATAN}}</div></a>
      <div class="panel-body">
        <table class="table table-responsive">
          <tbody>
          <tr>
          <td>Tanggal Kegiatan</td>
          <td>{{$jadwals->TANGGAL_KEGIATAN}}</td>
          </tr>
          <tr>
            <td>Waktu Kegiatan</td>
            <td>{{$jadwals->WAKTU_KEGIATAN}}</td>
          </tr>
          <tr>
            <td>Alamat </td>
            <td>{{$jadwals->ALAMAT_KEGIATAN}}</td>
          </tr>
          <tr>
          <td>Peserta</td>
          <td></td>

          </tr>
          <tr>
          <td>Kota</td>
          <td>&nbsp;</td>
          </tr>
          <tr>
          <td>Batas Pengumpulan Laporan</td>
          <td>{{$jadwals->BATAS_PENGISIAN}}</td>
          </tr>
          </tbody>
          </table>

      </div>
    </div>
    </div>



  @endforeach

@endsection
@section('js')



@endsection

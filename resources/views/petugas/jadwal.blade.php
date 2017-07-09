@extends('layouts.master')
@section('title')
  Dashboard Petugas
@endsection
@section('headerwrap')
  <h1>Jadwal Bulan {{$bulan}}</h1>
  @foreach ($jadwal as $jadwals)
    <div class="col-sm-4">
      <div class="panel panel-default">
      <div class="panel-heading">{{$jadwals->NAMA_KEGIATAN}}</div>
      <div class="panel-body"><div class="col-sm-1">
        Alamat:
      </div>{{$jadwals->ALAMAT_KEGIATAN}}</div>
    </div>
    </div>
  @endforeach

@endsection

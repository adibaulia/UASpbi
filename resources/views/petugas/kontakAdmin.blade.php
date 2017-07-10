@extends('layouts.master')
@section('title')
  Silahkan kontak admin
@endsection
@section('headerwrap')
  <i class="fa fa-exclamation-triangle" aria-hidden="true" style="font-size:200px; padding-top:50px"></i>
<div class="warning" style="color:white; padding-top:50px;">
  @if (!$bulan==null)
    <h4>Di Bulan {{$bulan}}</h4>
  @endif
  <h4>Anda Belum mempunyai Tugas Sosialisasi</h4>
  <h3>Silahkan Hubungi Admin yang bersangkutan</h3>
</div>

@endsection

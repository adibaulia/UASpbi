@extends('layouts.master')
@section('title')
  Dashboard Admin
@endsection
@section('headerwrap')
<h1>Halaman Admin</h1>
<br><br>
<div class="container">
    <div class="row centered">
      <div class="col-md-4 col-md-offset-2">
        <i class="fa fa-plus-circle" style="font-size:100px"></i>
            <div class="top-right links">
                    <p><br><a href="admin/tambahKegiatan" class="btn btn-theme">Tambah Kegiatan</a></p>
            </div>
      </div>
      <div class="col-md-4">
        <i class="fa fa-plus-circle" style="font-size:100px"></i>
            <div class="top-right links">
                    <p><br><a href="register" class="btn btn-theme">Tambah Petugas</a></p>
            </div>
      </div>
    </div>
  </div><! --/container -->

@endsection

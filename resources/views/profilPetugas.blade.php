@extends('layouts.master')
@section('title')
  Profil Petugas : {{Session::get('user')->name}}
@endsection
@section('headerwrap')
<h1>Profil Petugas</h1>

@endsection

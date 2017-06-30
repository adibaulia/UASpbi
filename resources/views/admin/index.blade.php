@extends('layouts.master')
@section('title')
  Dashboard Admin
@endsection
@section('navbar')
  <li><a href="#">{{$user->name}}</a></li>
@endsection
@section('headerwrap')
  <h1>HALAMAN ADMIN</h1>
@endsection

@extends('layouts.master')
@section('title')
  Tambah Kegiatan
@endsection
@section('headerwrap')
  <div class="container">
      <div class="row">
          <h1>Tambah Kegiatan</h1>
          <h4>Silahkan Login dengan akun anda</h4>
          <br>
          <div class="col-lg-8 col-lg-offset-2">
              <div class="panel panel-default">
                  <div class="panel-heading">Silahkan isi sesuai dengan form</div>
                  <div class="panel-body">
                      <form class="form-horizontal" role="form" method="POST" action="tambahKegiatan">
                          {{ csrf_field() }}

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Nama Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="namakegiatan" type="text" class="form-control" name="nama_kegiatan" required autofocus>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Waktu Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="waktu" type="time" class="form-control" name="waktu_kegiatan" required autofocus>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Tanggal Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="tanggal" type="date" class="form-control" name="tanggal_kegiatan" required autofocus>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Tahun Akademik</label>
                              <div class="col-md-6">
                                  <select id="tahun" type="date" class="form-control" name="tahun_akademik" required autofocus>
                                    @foreach ($tahun as $tahun1)
                                      <option value="{{$tahun1->ID}}">{{$tahun1->TAHUN_AWAL}} - {{$tahun1->TAHUN_AKHIR}}</option>
                                    @endforeach
                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Provinsi</label>
                              <div class="col-md-6">
                                  <select id="provinsi" class="form-control" name="provinsi_kegiatan" required autofocus>
                                    <option value="">Pilih Kota</option>
                                    @foreach ($provinsi as $provinsi1)
                                      <option value="">{{$provinsi1->NAMA_PROVINSI}}</option>
                                    @endforeach

                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Kota/Kabupaten</label>
                              <div class="col-md-6">
                                  <select id="kota" class="form-control" name="kota_kegiatan">
                                    <option value=""></option>
                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Alamat</label>
                              <div class="col-md-6">
                                  <textarea class="form-control" name="alamat_kegiatan" required autofocus>                                  </textarea>
                              </div>
                          </div>

                          <div class="form-group">
                              <div class="center">
                                  <button type="submit" class="btn btn-primary">
                                      Next
                                  </button>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
@endsection

@extends('layouts.master')
@section('title')
  Tambah Kegiatan
@endsection
@section('headerwrap')
  <div class="container">
      <div class="row">
          <h1>Tambah Kegiatan</h1>
          <div class="col-lg-8 col-lg-offset-2">
              <div class="panel panel-default">
                  <div class="panel-heading">Isi sesuai dengan form yang ada</div>
                  <div class="panel-body">
                      <form class="form-horizontal" role="form" method="POST" action="tambahKegiatan">
                          {{ csrf_field() }}
                          <label class="center control-label" >Kegiatan Sosialisasi</label>
                          <br><br>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Nama Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="namakegiatan" type="text" class="form-control" name="nama_kegiatan" required autofocus>
                              </div>
                          </div>


                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Tahun Akademik</label>
                              <div class="col-md-6">
                                  <select id="tahun" type="date" class="form-control" name="tahun_akademik" required autofocus>
                                    <option disabled selected>Pilih Tahun Akademik</option>
                                    @foreach ($tahun as $tahun1)
                                      <option value="{{$tahun1->ID}}">{{$tahun1->TAHUN_AWAL}} - {{$tahun1->TAHUN_AKHIR}}</option>
                                    @endforeach
                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Petugas Penanggungjawab</label>
                              <div class="col-md-6">
                                  <select id="petugas" class="form-control" name="petugas_kegiatan" required autofocus>
                                    <option disabled selected>Pilih Petugas</option>
                                    @foreach ($petugas as $petugas1)
                                      <option value="{{$petugas1->id}}">{{$petugas1->name}}</option>
                                    @endforeach
                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Nama Peserta Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="namapeserta" type="text" class="form-control" name="nama_peserta" required autofocus>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Jenis Peserta Kegiatan</label>
                              <div class="col-md-6">
                                  <select id="jenispeserta" class="form-control" name="jenis_peserta" required autofocus>
                                    <option disabled selected>Pilih Jenis Peserta</option>
                                    @foreach ($peserta as $peserta1)
                                      <option value="{{$peserta1->ID}}">{{$peserta1->JENIS_PESERTA}}</option>
                                    @endforeach
                                    </select>
                              </div>
                          </div>



                          <label class="center control-label" >Waktu dan Tempat / Alamat Kegiatan</label>
                          <br><br>

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
                              <label for="username" class="col-md-4 control-label" >Provinsi</label>
                              <div class="col-md-6">
                                  <select id="provinsi" class="form-control" name="provinsi_kegiatan" required autofocus>
                                    <option disabled selected>Pilih Provinsi</option>
                                    @foreach ($provinsi as $provinsi1)
                                      <option value="">{{$provinsi1->NAMA_PROVINSI}}</option>
                                    @endforeach

                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Kota/Kabupaten</label>
                              <div class="col-md-6">
                                  <select id="kota" class="form-control" name="kota_kegiatan" required autofocus>
                                    <option disabled selected>Pilih Kota</option>
                                    @foreach ($kota as $kota1)
                                      <option value="{{$kota1->ID}}">{{$kota1->NAMA_KOTA}}</option>
                                    @endforeach
                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Tempat/Alamat Kegiatan Sosialisasi</label>
                              <div class="col-md-6">
                                  <textarea class="form-control" name="alamat_kegiatan" required autofocus></textarea>
                              </div>
                          </div>


                          <div class="form-group">
                              <div class="center">
                                  <button type="submit" class="btn btn-primary">
                                      Tambah Kegiatan
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

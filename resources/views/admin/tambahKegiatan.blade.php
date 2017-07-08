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
                                  <input id="waktu" type="time" class="form-control timepicker" name="waktu_kegiatan" required autofocus>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label">Tanggal Kegiatan</label>
                              <div class="col-md-6">
                                  <input id="tanggal" type="date" class="form-control datepicker" name="tanggal_kegiatan" required autofocus>
                              </div>
                          </div>


                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Provinsi</label>
                              <div class="col-md-6">
                                  <select id="provinsi" class="form-control" name="provinsi_kegiatan" required autofocus>
                                    <option disabled selected>Pilih Provinsi</option>
                                    @foreach ($provinsi as $provinsi1)
                                      <option value="{{$provinsi1->ID}}">{{$provinsi1->NAMA_PROVINSI}}</option>
                                    @endforeach

                                    </select>
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="username" class="col-md-4 control-label" >Kota/Kabupaten</label>
                              <div class="col-md-6">
                                  <select id="kota" class="form-control" name="kota_kegiatan" required autofocus>
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

@section('css')
  <link href="{{ asset('css/themes/default.css') }}" rel="stylesheet">
  <link href="{{ asset('css/themes/default.date.css') }}" rel="stylesheet">
  <link href="{{ asset('css/themes/default.time.css') }}" rel="stylesheet">
@endsection

@section('js')
  <script type="text/javascript" src="{{asset('js/picker.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/picker.date.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/picker.time.js')}}"></script>
  {{-- <script type="text/javascript" src="{{asset('js/materialize.clockpicker.js')}}"></script> --}}
  <script type="text/javascript">
    $('.datepicker').pickadate({
      monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'],
      weekdaysShort: ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'],
      selectMonths: true,
      selectYears:true, // Creates a dropdown to control month
      formatSubmit: 'yyyy-mm-dd',
    });
  </script>
  <script type="text/javascript">
    $('.timepicker').pickatime({
        min: [7,30],
        max: [21,0],
        format: 'H:i',
        formatLabel: '<b>H</b>:i',
        formatSubmit: 'H:i',
        hiddenName: true,
    })
  </script>



<script type="text/javascript">
$(document).ready(function(){

  //Memilih KOTA
  $('select[name="provinsi_kegiatan"]').on('change',function(){
     var provinsi_id=$(this).val();
     console.log(provinsi_id);
     if(provinsi_id) {
         $.ajax({
           type:'get',
           url:'{!!URL::to('/getKota')!!}',
           data:{'id':provinsi_id},
           dataType: "json",
           success:function(data) {
             console.log('success');
             $('select[name="kota_kegiatan"]').empty().html();
             $('select[name="kota_kegiatan"]').append('<option value="" disabled selected>Pilih Kota</option>');
             $.each(data, function(index, element) {
                 $('select[name="kota_kegiatan"]').append('<option value="'+ element.ID +'">'+ element.NAMA_KOTA +'</option>');
             });
         }
         });
     }else{
         $('select[name="kota_kegiatan"]').empty();
     }

 });
});
 </script>


 <script type="text/javascript">
 $(document).ready(function(){

   //Memilih Petugas
   $('input[name="tanggal_kegiatan"]').on('change',function(){
    var tanggal=$('input[name="tanggal_kegiatan_submit"]').val();
    console.log(tanggal);
      if(tanggal) {
          $.ajax({
            type:'get',
            url:'{!!URL::to('/checkTanggal')!!}',
            data:{'tanggal':tanggal},
            dataType: "json",
            success:function(data) {
              console.log(tanggal);
              console.log('success');
              $('select[name="petugas_kegiatan"]').empty().html();
              $('select[name="petugas_kegiatan"]').append('<option value="" disabled selected>Pilih Petugas yang tersedia</option>');
              $.each(data, function(index, element) {
                  $('select[name="petugas_kegiatan"]').append('<option value="'+ element.id +'">'+ element.name +'</option>');
              });
          }
          });
      }else{
          $('select[name="petugas_kegiatan"]').empty();
      }

  });
 });
  </script>
 @endsection

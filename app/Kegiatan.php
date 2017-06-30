<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model
{
      protected $table='kegiatan';
      protected $fillable = [
          'NAMA_KEGIATAN', 'WAKTU_KEGIATAN', 'TANGGAL_KEGIATAN', 'ALAMAT_KEGIATAN', 'TAHUN_AKADEMIK_ID'
      ];
      public $timestamps = false;
}

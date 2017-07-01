<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailPeserta extends Model {

    /**
     * Generated
     */

    protected $table = 'detail_peserta';
    protected $fillable = ['PESERTA_ID', 'KEGIATAN_ID', 'KOTA_ID', 'NAMA_PESERTA'];


    public function kota() {
        return $this->belongsTo(\App\Kota::class, 'KOTA_ID', 'ID');
    }

    public function peserta() {
        return $this->belongsTo(\App\Peserta::class, 'PESERTA_ID', 'ID');
    }

    public function kegiatan() {
        return $this->belongsTo(\App\Kegiatan::class, 'KEGIATAN_ID', 'ID');
    }


}

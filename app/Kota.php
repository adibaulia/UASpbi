<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model {

    /**
     * Generated
     */

    protected $table = 'kota';
    protected $fillable = ['ID', 'PROVINSI_ID', 'NAMA_KOTA'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function provinsi() {
        return $this->belongsTo(\App\Provinsi::class, 'PROVINSI_ID', 'ID');
    }

    public function detailPeserta() {
        return $this->hasMany(\App\DetailPeserta::class, 'KOTA_ID', 'ID');
    }

    public function kegiatans() {
        return $this->hasMany(\App\Kegiatan::class, 'KOTA_ID', 'ID');
    }


}

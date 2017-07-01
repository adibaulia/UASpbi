<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model {

    /**
     * Generated
     */

    protected $table = 'kegiatan';
    protected $fillable = ['ID', 'KOTA_ID', 'TAHUN_AKADEMIK_ID', 'NAMA_KEGIATAN', 'ALAMAT_KEGIATAN', 'TANGGAL_KEGIATAN', 'WAKTU_KEGIATAN'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function tahunAkademikSosialisasi() {
        return $this->belongsTo(\App\TahunAkademikSosialisasi::class, 'TAHUN_AKADEMIK_ID', 'ID');
    }

    public function kota() {
        return $this->belongsTo(\App\Kota::class, 'KOTA_ID', 'ID');
    }

    public function jenisBerkas() {
        return $this->belongsToMany(\App\JenisBerkas::class, 'berkas_kegiatan', 'KEGIATAN_ID', 'JENIS_ID');
    }

    public function users() {
        return $this->belongsToMany(\App\User::class, 'detail_sosialisasi', 'KEGIATAN_ID', 'USER_ID');
    }

    public function berkasKegiatans() {
        return $this->hasMany(\App\BerkasKegiatan::class, 'KEGIATAN_ID', 'ID');
    }

    public function detailPeserta() {
        return $this->hasMany(\App\DetailPeserta::class, 'KEGIATAN_ID', 'ID');
    }

    public function detailSosialisasi() {
        return $this->hasOne(\App\DetailSosialisasi::class, 'KEGIATAN_ID', 'ID');
    }


}

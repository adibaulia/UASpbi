<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class JenisBerkas extends Model {

    /**
     * Generated
     */

    protected $table = 'jenis_berkas';
    protected $fillable = ['ID', 'JENIS_BERKAS'];


    public function kegiatans() {
        return $this->belongsToMany(\App\Kegiatan::class, 'berkas_kegiatan', 'JENIS_ID', 'KEGIATAN_ID');
    }

    public function berkasKegiatans() {
        return $this->hasMany(\App\BerkasKegiatan::class, 'JENIS_ID', 'ID');
    }


}

<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class TahunAkademikSosialisasi extends Model {

    /**
     * Generated
     */

    protected $table = 'tahun_akademik_sosialisasi';
    protected $fillable = ['ID', 'TAHUN_AWAL', 'TAHUN_AKHIR'];
    public $timestamps = false;
    protected $guarded = ['id'];


    public function kegiatans() {
        return $this->hasMany(\App\Kegiatan::class, 'TAHUN_AKADEMIK_ID', 'ID');
    }


}

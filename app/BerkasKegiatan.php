<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BerkasKegiatan extends Model {

    /**
     * Generated
     */

    protected $table = 'berkas_kegiatan';
    protected $fillable = ['ID', 'KEGIATAN_ID', 'JENIS_ID', 'NAMAFILE'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function kegiatan() {
        return $this->belongsTo(\App\Kegiatan::class, 'KEGIATAN_ID', 'ID');
    }

    public function jenisBerkas() {
        return $this->belongsTo(\App\JenisBerkas::class, 'JENIS_ID', 'ID');
    }


}

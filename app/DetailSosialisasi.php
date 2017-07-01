<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailSosialisasi extends Model {

    /**
     * Generated
     */

    protected $table = 'detail_sosialisasi';
    protected $fillable = ['KEGIATAN_ID', 'USER_ID', 'DETAIL_KEGIATAN', 'KENDALA_KEGIATAN', 'BATAS_PENGISIAN'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function kegiatan() {
        return $this->belongsTo(\App\Kegiatan::class, 'KEGIATAN_ID', 'ID');
    }

    public function user() {
        return $this->belongsTo(\App\User::class, 'USER_ID', 'id');
    }


}

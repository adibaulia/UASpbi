<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Peserta extends Model {

    /**
     * Generated
     */

    protected $table = 'peserta';
    protected $fillable = ['ID', 'JENIS_PESERTA'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function detailPeserta() {
        return $this->hasMany(\App\DetailPeserta::class, 'PESERTA_ID', 'ID');
    }


}

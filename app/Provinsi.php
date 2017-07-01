<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model {

    /**
     * Generated
     */

    protected $table = 'propinsi';
    protected $fillable = ['ID', 'NAMA_PROVINSI'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function kota() {
        return $this->hasMany(\App\Kota::class, 'PROVINSI_ID', 'ID');
    }


}

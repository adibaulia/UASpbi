<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class JenisPetugas extends Model {

    /**
     * Generated
     */

    protected $table = 'jenis_petugas';
    protected $fillable = ['ID', 'JENIS_PETUGAS'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function users() {
        return $this->hasMany(\App\User::class, 'JENIS_ID', 'ID');
    }


}

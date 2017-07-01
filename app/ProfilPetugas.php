<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfilPetuga extends Model {

    /**
     * Generated
     */

    protected $table = 'profil_petugas';
    protected $fillable = ['ID', 'USER_ID', 'TANGGAL_LAHIR', 'JENIS_KELAMIN'];
    public $timestamps = false;
    protected $guarded = ['id'];

    public function user() {
        return $this->belongsTo(\App\User::class, 'USER_ID', 'id');
    }


}

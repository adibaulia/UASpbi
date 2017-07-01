<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'JENIS_ID'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function jenis(){
      //dd($this->JENIS_ID);
      if($this->JENIS_ID=='1'){
        return true;
      } else {
        return false;
      }
    }

    public function jenisPetugas() {
        return $this->belongsTo(\App\JenisPetugas::class, 'JENIS_ID', 'ID');
    }

    public function kegiatans() {
        return $this->belongsToMany(\App\Kegiatan::class, 'detail_sosialisasi', 'USER_ID', 'KEGIATAN_ID');
    }

    public function detailSosialisasis() {
        return $this->hasMany(\App\DetailSosialisasi::class, 'USER_ID', 'id');
    }

    public function profilPetugas() {
        return $this->hasMany(\App\ProfilPetugas::class, 'USER_ID', 'id');
    }

}

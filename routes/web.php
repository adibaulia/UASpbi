<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use app\Kota;

Route::get('/', function () {
    return view('landingPage');
})->middleware('guest');

Route::get('/admin', 'AdminController@index');
Route::get('/admin/{name}', 'AdminController@show');
Route::post('/admin/tambahKegiatan', 'AdminController@tambahKegiatan');
Route::get('/getKota', 'AdminController@getKota');
Route::get('/checkTanggal', 'AdminController@checkTanggal');

Route::get('/profilPetugas', 'PetugasController@profilPetugas');




Route::get('/petugas', 'PetugasController@index');
Route::get('/petugas/jadwal/{bulan}', 'PetugasController@jadwal');
Route::get('/petugas/laporan/{laporan}', 'PetugasController@laporan');

Route::get('/login', 'LoginController@index');
Route::post('/login', 'LoginController@checkLogin');

Route::get('/logout', function(){
  Auth::logout();
  Session::flush();
  return redirect('/login');
});

Route::get('/registerAdmin', 'RegisterController@admin');
Route::get('/register', 'RegisterController@index');
Route::post('/register', 'RegisterController@create');

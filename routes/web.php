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

use Illuminate\Support\Facades\Route;

Route::get('/', 'Site\HomeController@index');
//Se debe agregar un route para cada modulo especifico
cb()->routeGroupBackend(function () {
    cb()->routeController('custom', 'AdminCustomController');
});
//Route::get('/'.config('crudbooster.ADMIN_PATH'),'AdminCustomController@getIndex')->name('custom');

Route::get('lang/{locale}', 'Site\HomeController@lang');
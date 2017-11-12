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




Auth::routes();


Route::get('/home', ['as'=>'index.get','uses'=>'ChatController@index']);

Route::post('/add', ['as'=>'index.post','uses'=>'ChatController@store']);

Route::get('/ajax', ['as'=>'index.ajax','uses'=>'ChatController@ajax']);
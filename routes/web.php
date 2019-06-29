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


Route::get('/', 'HomeController@index');
Route::get('admin/blog', 'admin\BlogController@index');
Route::get('admin/blog/add', 'admin\BlogController@add');
Route::post('admin/blog/action_add', 'admin\BlogController@action_add');
Route::get('admin/blog/edit/{id}', 'admin\BlogController@edit');
Route::post('admin/blog/action_edit', 'admin\BlogController@action_edit');
Route::get('admin/blog/delete/{id}', 'admin\BlogController@delete');

Route::get('admin/project', 'admin\ProjectController@index');
Route::get('admin/project/add', 'admin\ProjectController@add');
Route::post('admin/project/action_add', 'admin\ProjectController@action_add');
Route::get('admin/project/edit/{id}', 'admin\ProjectController@edit');
Route::post('admin/project/action_edit', 'admin\ProjectController@action_edit');
Route::get('admin/project/delete/{id}', 'admin\ProjectController@delete');


Route::get('project/detail/{nama}', 'ProjectController@detail');
Route::get('blog', 'BlogController@index');
Route::post('send_message', 'HomeController@send_message');
Route::get('blog/detail/{nama}', 'BlogController@detail');
Route::post('blog/send_comment', 'BlogController@send_comment');

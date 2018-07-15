<?php



Route::get('/', function () {
    return redirect( route('board'));
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::post('/home', 'HomeController@store');

Route::get('message/{id}','HomeController@edit')->name('message.edit')->where(['id'=>'[0-9]+']);

Route::get('board','BoardController@index');

Route::get('board/create','BoardController@create');

Route::post('board','BoardController@store')->name('board');

Route::get('board/{id}','BoardController@show');

Route::post('profile/show/{id}','HomeController@comment')->name('comment'); //THEEREE IS ONNNNN

Route::get('profile/show/{id}','HomeController@show')->name('show');




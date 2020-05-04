<?php
// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

// // Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');

Route::get('/', 'HomeController@index');
Route::get('policy', 'HomeController@policy');
Route::get('cookie', 'HomeController@cookie');
Route::get('pull', 'HomeController@pull');
Route::get('/home', 'HomeController@index');
Route::get('loadMoreActivities', 'HomeController@loadMoreActivities');
Route::get('/attivita', 'HomeController@index');
Route::get('/attivita/{slug}', 'ActivitiesController@show');

// Route::get('/network', 'StaffController@index');
Route::get('people', 'StaffController@rete');

Route::get('network/professionisti', 'StaffController@professionisti');
Route::get('network/studi-societa', 'StaffController@studi_societa');
Route::get('network/imprese', 'StaffController@imprese');

Route::get('loadMoreActivities', 'HomeController@loadMoreActivities');

Route::group(['prefix' => 'admin'], function () {
    Route::post('staff/ordina', '\Rutorika\Sortable\SortableController@sort');
});

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::post('model/upload_image', 'Admin\ImagesController@store');
    Route::post('model/get_images', 'Admin\ImagesController@index');

    Route::post('model/upload_attachment', 'Admin\AttachmentsController@store');
    Route::post('model/{id}/delete', 'Admin\AttachmentsController@delete');

    Route::get('titoli', 'Admin\StaffTypesController@edit');
    Route::post('titoli', 'Admin\StaffTypesController@update');

    Route::get('/', function () {
        return redirect()->to('admin/attivita');
    });

    #   ACTIVITIES ROUTES

    Route::get('attivita', [
        'as' => 'admin_activities',
        'uses' => 'Admin\ActivitiesController@index',
        ]);

    Route::get('attivita/crea', [
        'as' => 'admin_create_activities',
        'uses' => 'Admin\ActivitiesController@create',
        ]);

    Route::post('attivita', [
        'as' => 'admin_store_activities',
        'uses' => 'Admin\ActivitiesController@store',
        ]);

    Route::get('attivita/{id}/modifica', [
        'as' => 'admin_edit_activities',
        'uses' => 'Admin\ActivitiesController@edit',
        ]);

    Route::post('attivita/{id}', [
        'as' => 'admin_store_activities',
        'uses' => 'Admin\ActivitiesController@update',
        ]);

    Route::post('attivita/{id}/rimuovi', [
        'as' => 'admin_delete_activities',
        'uses' => 'Admin\ActivitiesController@destroy',
        ]);

    Route::delete('attivita/{id}/delete_image', [
        'as' => 'admin_delete_activities',
        'uses' => 'Admin\ActivitiesController@destroyImage',
        ]);

    #   STAFF ROUTES

    Route::get('staff', [
        'as' => 'admin_staff',
        'uses' => 'Admin\StaffController@index',
        ]);

    Route::get('staff/crea', [
        'as' => 'admin_create_staff',
        'uses' => 'Admin\StaffController@create',
        ]);

    Route::post('staff', [
        'as' => 'admin_store_staff',
        'uses' => 'Admin\StaffController@store',
        ]);

    Route::get('staff/{id}/modifica', [
        'as' => 'admin_edit_staff',
        'uses' => 'Admin\StaffController@edit',
        ]);

    Route::post('staff/{id}', [
        'as' => 'admin_store_staff',
        'uses' => 'Admin\StaffController@update',
        ]);

    Route::post('staff/{id}/rimuovi', [
        'as' => 'admin_delete_staff',
        'uses' => 'Admin\StaffController@destroy',
        ]);

    Route::delete('staff/{id}/delete_image', [
        'as' => 'admin_delete_staff',
        'uses' => 'Admin\StaffController@destroyImage',
        ]);

    Route::get('testi', [
        'as' => 'admin_texts',
        'uses' => 'Admin\PageTextsController@index',
        ]);

    Route::get('testi/{id}/modifica', [
        'as' => 'admin_edit_texts',
        'uses' => 'Admin\PageTextsController@edit',
        ]);

    Route::post('testi/{id}', [
        'as' => 'admin_update_texts',
        'uses' => 'Admin\PageTextsController@update',
        ]);

    Route::get('pagine', [
        'as' => 'admin_pages',
        'uses' => 'Admin\PagesController@index',
        ]);

    Route::get('pagine/{id}/modifica', [
        'as' => 'admin_edit_pages',
        'uses' => 'Admin\PagesController@edit',
        ]);

    Route::post('pagine/{id}', [
        'as' => 'admin_update_pages',
        'uses' => 'Admin\PagesController@update',
        ]);

    Route::delete('pagine/{id}/delete_image', [
        'as' => 'admin_delete_pages_image',
        'uses' => 'Admin\PagesController@destroyImage',
        ]);
});

Route::get('{slug}', 'PagesController@show');

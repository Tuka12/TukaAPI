<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::namespace('App\Http\Controllers')->group(function(){
    
    //get api -> fetch one or more records
    Route::get('users/{id?}','APIController@getUsers');
    
    //post api to add single user
    Route::post('add-users','APIController@addUsers');
    
    //post api to add Multipal users
    Route::post('add-multipal-users','APIController@multipalUsers');

    //put api Update one or more records //one website to another web site table update
    Route::put('update-users-details/{id}','APIController@updateUsersDetails');

    //PATCH API FOR USED SINGLE RECORDS OR SINGLE COLUMN NAME LIKE UPDATE ONLY USER NAME
    Route::patch('update-users-name/{id}','APIController@updateUsersName');

     //delete API for single user
     Route::delete('delete-users/{id}','APIController@deleteUser');

     //delete-users-with-json
     Route::delete('delete-users-with-json','APIController@deleteUserWithJson');

     //delete-multipal-users with param
     Route::delete('delete-multipal-users/{ids}','APIController@deleteMultipalUsers');

     //delete-multipal-users-json
     Route::delete('delete-multipal-users-json','APIController@deleteMultipalUsersJson');


});

Route::post('login', 'App\Http\Controllers\API\LoginControllerAPI@login');
Route::post('register', 'App\Http\Controllers\API\LoginControllerAPI@register');

Route::group(['middleware' => 'auth:api'], function(){

Route::post('details', 'App\Http\Controllers\API\LoginControllerAPI@details');

});

//next api
Route::apiResource('/products', App\Http\Controllers\ProductController::class);
Route::group(['prefix'=>'products'],function(){
    Route::apiResource('/{products}/reviews',App\Http\Controllers\ReviewController::class);
});
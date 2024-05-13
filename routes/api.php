<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);

});


// routes for movies
Route::group([],function ()  {
    Route::get('movies', [MovieController::class, "all"]);
    Route::get('movies/get/{id}', [MovieController::class, "getMovie"]);
    Route::post('movies/create', [MovieController::class, "addMovie"]);
    Route::put('movies/update/{id}', [MovieController::class, "update"]);
    Route::delete('movies/delete/{id}', [MovieController::class, "delete"]);
    Route::get('movies/get-by-genre/{genre_id}', [MovieController::class, "getMoviesByGenre"]);
});

// routes for users

Route::group([], function () {
    Route::get('users', [UserController::class, "all"]);
    Route::get('users/get/{id}', [UserController::class, "getUserById"]);
    Route::post('users/create', [UserController::class, "addUser"]);
    Route::put('users/update/{id}', [UserController::class, "updateUser"]);
    Route::delete('users/delete/{id}', [UserController::class, "deleteUser"]);
});
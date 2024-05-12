<?php

use App\Http\Controllers\MovieController;
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

Route::get('movies', [MovieController::class, "all"]);
Route::get('movies/get/{id}', [MovieController::class, "getMovie"]);
Route::post('movies/create', [MovieController::class, "addMovie"]);
Route::put('movies/update/{id}', [MovieController::class, "update"]);
Route::delete('movies/delete/{id}', [MovieController::class, "delete"]);
Route::get('movies/get-by-genre/{genre_id}', [MovieController::class, "getMoviesByGenre"]);

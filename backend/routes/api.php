<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\Authenticate;


//Rutas publicas que puede acceder cualquier persona
Route::post('register',[\App\Http\Controllers\AuthController::class, 'register']);
Route::post('login', [\App\Http\Controllers\AuthController::class, 'login']);

//Rutas protegidas que solo puedo acceder el usuario autentificado
Route::middleware('auth:sanctum')->group(function () {
    Route::get('user', [\App\Http\Controllers\AuthController::class, 'user']);
    Route::get('employee/{id}', [\App\Http\Controllers\employees::class, 'getEmployee']);
    Route::post('add', [\App\Http\Controllers\employees::class, 'add']);
    Route::get('get', [\App\Http\Controllers\employees::class, 'get']);
    Route::get('getPerPage', [\App\Http\Controllers\employees::class, 'getPerPage']);
    Route::put('update/{id}', [\App\Http\Controllers\employees::class, 'update']);
    Route::delete('delete/{id}', [\App\Http\Controllers\employees::class, 'delete']);
});

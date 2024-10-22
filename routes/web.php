<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('accueil');

Route::get('/monCompte.blade.php', [App\Http\Controllers\ConnexionController::class,'index'])->name('connexion');

Route::get('/inscription.blade.php', [App\Http\Controllers\InscriptionController::class,'index' ])->name('inscription');

Route::get('/activite.blade.php', function () {
    return view('activite');
})->name('activite');

Route::get('/mdpOublie.blade.php', function () {
    return view('mdpOublie');
})->name('mdpOublie');

Route::get('/parrainage.blade.php', function () {
    return view('parrainage');
})->name('parrainage');

Route::get('/restauration.blade.php', function () {
    return view('restauration');
})->name('restauration');


Route::post('/monCompte', [App\Http\Controllers\ConnexionController::class,'connexion'])->name('connexion.post');


Route::post('/inscription',[App\Http\Controllers\InscriptionController::class,'inscription'])->name('inscription.post');
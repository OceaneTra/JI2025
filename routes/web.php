<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('accueil');

Route::get('/monCompte.blade.php', function () {
    return view('monCompte');
})->name('connexion');

Route::get('/inscription.blade.php', function () {
    return view('inscription');
})->name('inscription');

Route::get('/activite.blade.php', function () {
    return view('activite');
})->name('activite');

Route::get('/parrainage.blade.php', function () {
    return view('parrainage');
})->name('parrainage');

Route::get('/restauration.blade.php', function () {
    return view('restauration');
})->name('restauration');


Route::post('/monCompte', function () {
    return view('monCompte');
})->name('connexion');

Route::post('/inscription', function () {
    return view('inscription');
})->name('inscription');
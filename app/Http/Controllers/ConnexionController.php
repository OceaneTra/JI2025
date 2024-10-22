<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ConnexionController extends Controller
{
     public function index()
    {
        return view('monCompte');
    }

    public function connexion(Request $requete):RedirectResponse{
        


        // Redirection vers la même page avec un message de succès
        return redirect()->route('accueil')->with('success', 'Connexion réussie !');
    }
}
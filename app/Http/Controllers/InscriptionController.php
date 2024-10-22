<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Licence1;
use App\Models\Licence3;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class InscriptionController extends Controller
{
    public function index()
    {
        return view('inscription');
    }

    // Fonction qui permet d'ajouter les utilisateurs dans la base de données en fonction de leur niveau
    public function inscription(Request $requete): RedirectResponse
    {
        // Validation des données
        $validatedData = $requete->validate([
            'nom' => 'required|string|max:60',
            'prenom' => 'required|string|max:60',
            'email' => 'required|string|max:191',
            'niveau' => 'required|string|max:15',
            'mdp' => 'required|string|max:225|min:8',
            'photoUser' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Correction du max
        ]);

        // Gestion de l'upload de l'image si présente
        $imagePath = null;
        if ($requete->hasFile('photoUser')) {
            $imagePath = $requete->file('photoUser')->store('assets/', 'public'); // Correction du stockage
        }

        // Insertion des utilisateurs dans la bd en fonction du niveau
        if ($requete->input('niveau') == 'l1') {
            $imagePath = $requete->file('photoUser')->store('assets/L1', 'public');
            
            $this->creerLicence1($validatedData, $imagePath);
        } elseif ($requete->input('niveau') == 'l3') {
            $imagePath = $requete->file('photoUser')->store('assets/L3', 'public');
            $this->creerLicence3($validatedData, $imagePath);
        } else {
            $imagePath = $requete->file('photoUser')->store('assets/etudiants', 'public');
            $this->creerEtudiant($validatedData, $imagePath);
        }

        // Redirection vers la même page avec un message de succès
        return redirect()->route('inscription')->with('success', 'Inscription réussie !');
    }

    private function creerLicence1(array $data, ?string $imagePath)
    {
        Licence1::create([
            'nom_L1' => $data['nom'],
            'prenom_L1' => $data['prenom'],
            'email_L1' => $data['email'],
            'nom_utilisateur' => $data['nom'] . " " . $data['prenom'],
            'niveau_L1' => $data['niveau'],
            'photo_L1' => $imagePath,
            'mot_de_passe_L1' => bcrypt($data['mdp']),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }

    private function creerLicence3(array $data, ?string $imagePath)
    {
        Licence3::create([
            'nom_L3' => $data['nom'],
            'prenom_L3' => $data['prenom'],
            'email_L3' => $data['email'],
            'nom_utilisateur' => $data['nom'] . " " . $data['prenom'],
            'niveau_L3' => $data['niveau'],
            'photo_L3' => $imagePath,
            'mot_de_passe_L3' => bcrypt($data['mdp']),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }

    private function creerEtudiant(array $data, ?string $imagePath)
    {
        Etudiant::create([
            'name' => $data['nom'] . " " . $data['prenom'],
            'email' => $data['email'],
            'password' => bcrypt($data['mdp']), // Utilisation du bcrypt pour sécuriser le mot de passe
            'photo' => $imagePath,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
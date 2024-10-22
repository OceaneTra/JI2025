<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}>">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inscription</title>
</head>

<body>

    <!--FORMULAIRE D'INSCRIPTION-->




    <form action="{{ route('inscription.post') }}" method="POST" enctype="multipart/form-data">
        @csrf

        <h2>Inscription</h2>

        <div class="photo">
            <input type="file" name="photoUser" id="photoUser" hidden required />
            <img src="" id="image-preview" alt="Aperçu de l'image" />
            <label for="photoUser">Cliquer pour insérer une photo</label>
        </div>
        <label for="nom">Nom</label>
        <input type="text" name=nom required>
        <label for="nom">Prénom</label>
        <input type="text" name=prenom required>
        <label for="nom">Email</label>
        <input type="emai" name=email required>
        <label for="niveau">Niveau</label>
        <select name="niveau" id="niveau" required>
            <option value="">Sélectionner votre niveau</option>
            <option value="l1">Licence 1</option>
            <option value="l2">Licence 2</option>
            <option value="l3">Licence 3</option>
            <option value="m1">Master 1</option>
            <option value="m2">Master 2</option>
        </select>
        <label for="mdp">Mot de passe</label>
        <input type="password" name="mdp" required>


        <input type="submit" name="inscription" id="inscription" value="inscription">

        <div>

            <p>Vous avez déjà un compte ? <a href="/monCompte.blade.php">Connectez-vous !</a></p>
            <a href="/">Aller à l'accueil</a>
        </div>
    </form>


    <!-- FIN DU FORMULAIRE D'INSCRIPTION-->





    <script>
        const entreeImage = document.getElementById("photoUser");
        const aperçuImage = document.getElementById("image-preview");
        aperçuImage.src = '/images/noimage.png';

        entreeImage.addEventListener("change", mettreAJourAperçuImage);

        function mettreAJourAperçuImage() {
            const fichier = entreeImage.files[0];
            const defaultImageURL =
                "/images/noimage.png"; // URL de l'image par défaut

            if (fichier) {
                const lecteur = new FileReader();
                lecteur.onload = function(evenement) {
                    aperçuImage.src = evenement.target.result;
                };
                lecteur.readAsDataURL(fichier);
                console.log("Image trouvé et affiché avec succès");
            } else {
                aperçuImage.src = defaultImageURL; // Afficher l'image par défaut si aucun fichier n'est sélectionné
                console.log("Image de base");
            }
        }
    </script>

</body>

</html>

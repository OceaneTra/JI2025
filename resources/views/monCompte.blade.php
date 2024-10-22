<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}>">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mon compte</title>
</head>

<body>

    <!--FORMULAIRE DE CONNEXION-->


    <form action="{{ route('connexion.post') }}" method="POST">
        @csrf
        <h2>Connexion</h2>
        <label for="nomUser">Nom d'utilisateur (nom complet)</label>
        <input type="text" name=nomUser required>
        <label for="mdpUser">Mot de passe</label>
        <input type="password" name="mdpUser" required>
        <a href="/mdpOublie.blade.php">Mot de passe oublié ?</a>
        <input type="submit" name="connexion" id="connexion" value="Connexion">

        <div>
            <p>Vous n'avez pas encore de compte ? <a href="/inscription.blade.php">Inscrivez-vous !</a></p>
            <a href="/">Aller à l'accueil</a>
        </div>
    </form>

</body>

</html>

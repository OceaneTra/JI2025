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


    <form action="" method="POST">
        <label for="nomUser">Nom d'utilisateur</label>
        <input type="text" name=nomUser>
        <label for="mdpUser">Mot de passe</label>
        <input type="password" name="mdpUser">
        <input type="submit" name="connexion" id="connexion" value="Connexion">
    </form>

</body>

</html>

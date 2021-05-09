<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sommaire</title>
</head>

<body>
    <h1>ECF Backend P7</h1>
    <?php
    if (isset($_SESSION['logged'])) {
    ?>
        <h2>Bonjour, <?php echo $_SESSION['firstname']; ?>, voici le sommaire :</h2>
    <?php
    } else {
    ?>
        <h2>Bonjour, visiteur voici le sommaire :</h2>
    <?php
    }
    ?>
    <ul>
        <li><a href="/login">Page de connexion</a></li>
    </ul>
    <ul>
        <li><a href="/user">Liste des utilisateurs</a></li>
    </ul>
    <ul>
        <li><a href="/project">Liste des projets</a></li>
    </ul>
    <form action="/logout" method="post">
        <?php
        if (isset($_SESSION['logged'])) { ?>
            <button type="submit" name="button_logout">Logout</button>
        <?php } ?>
    </form>
</body>

</html>
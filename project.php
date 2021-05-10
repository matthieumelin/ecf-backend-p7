<?php

include('connection.php');

session_start();

// user is not admin redirect to home page
if (!isset($_SESSION['logged']) && $_SESSION['role'] != 'ROLE_ADMIN') {
    header("Location: /");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des projets</title>
</head>

<body>
    <a href="/project/new">Créer un projet</a>
    <h1>Liste des projets :</h1>
    <ul>
        <?php
        global $connection;

        // check projects exists
        $query = mysqli_query($connection, "SELECT * FROM project");

        while ($row = mysqli_fetch_assoc($query)) :
        ?>
            <li style="margin: 30px 0 0;"><?= $row["id"] . " | ",
                                            $row["name"] . " | ",
                                            $row["description"]; ?>
                <a href="/project/<?= $row["id"] ?>">Voir</a>
                <a href="#">Modifier</a>
                <a href="#">Supprimer</a>
            </li>
        <?php
        endwhile;
        ?>
    </ul>
</body>

</html>
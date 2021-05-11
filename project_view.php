<?php
session_start();

include('connection.php');

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
    <title>Voir le projet #<?= $idProject ?></title>
</head>

<body>
    <h1>Projet #<?= $idProject ?></h1>

    <?php
    global $connection;

    // check project exists
    $query = mysqli_query($connection, "SELECT * FROM project WHERE id='$idProject'");
    $result = mysqli_fetch_array($query, MYSQLI_ASSOC);

    if ($result) {
    ?>
        <li><?= $result["id"] . " | ",
            $result["name"] . " | ",
            $result["description"]; ?>
            <a href="/project/<?= $idProject ?>/edit">Modifier</a>
            <a href="#">Supprimer</a>
        </li>
    <?php
    } else {
        header("Location: ../404.php");
    }
    ?>
</body>

</html>
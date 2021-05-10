<?php
session_start();

include('connection.php');

global $connection;

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
    <title>Modification du projet #<?= $idProject ?></title>
</head>

<body>
    <h1>Modification du projet #<?= $idProject ?></h1>

    <?php
    global $connection;

    // check project exists
    $query = mysqli_query($connection, "SELECT * FROM project WHERE id='$idProject'");
    $result = mysqli_fetch_array($query, MYSQLI_ASSOC);

    if ($result) {
    ?>
        <form action="project/<?= $idProject ?>/edit" method="post">
            <div style="display: flex; flex-direction: column; margin: 10px 0 0;">
                <label for="name">Nom :</label>
                <input type="text" name="name" id="name" placeholder="<?= $result["name"] ?>">
            </div>
            <div style="display: flex; flex-direction: column; margin: 10px 0 0;">
                <label for="description">Description :</label>
                <textarea name="description" id="description" cols="30" rows="10" placeholder="<?= $result["description"] ?>" style="resize: vertical; min-height: 200px;"></textarea>
            </div>
            <div style="margin: 10px 0 0;">
                <button type="submit" name="button_save">Sauvegarder</button>
            </div>
        </form>
    <?php
    } else {
        header("Location: ../404.php");
    }
    ?>
</body>

</html>
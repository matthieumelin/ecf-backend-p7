<?php

session_start();

include('connection.php');

global $connection;

// user is not admin redirect to home page
if (!isset($_SESSION['logged']) && $_SESSION['role'] != 'ROLE_ADMIN') {
    header("Location: /");
    exit;
}

// button project new is pressed
if (isset($_POST["button_project_new"])) {
    $name = $_POST["name"];
    $description = $_POST["description"];

    // check credentials is not empty
    if ($name && $description) {
        global $connection;

        // check project exist
        $name = stripcslashes($name);
        $description = stripcslashes($description);
        $name = mysqli_real_escape_string($connection, $name);
        $description = mysqli_real_escape_string($connection, $description);
        $query = mysqli_query($connection, "INSERT INTO project(name, description) VALUES('$name', '$description')");
        $result = mysqli_fetch_array($query, MYSQLI_ASSOC);

        if ($result) {
            echo "Projet créer avec succès.";
        } else {
            echo "Projet déjà existant.";
        }
    } else {
        echo "Un ou plusieurs champ(s) invalide(s).";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Création d'un projet</title>
</head>

<body>
    <form action="/project/new" method="post">
        <div style="margin: 10px 0 0; display: flex; flex-direction: column">
            <label for="name">Nom</label>
            <input type="text" name="name" id="name">
        </div>
        <div style="margin: 10px 0 0; display: flex; flex-direction: column">
            <label for="description">Description</label>
            <textarea name="description" id="description" cols="30" rows="10"></textarea>
        </div>
        <div style="margin: 10px 0 0;">
            <button type="submit" name="button_project_new">Créer un nouveau projet</button>
        </div>
        <?php
        global $connection;

        // check user exist
        $query = mysqli_query($connection, "SELECT * FROM user");
        ?>
        <div style="margin: 10px 0 0;">
            Utilisateurs:
            <?php while ($row = mysqli_fetch_assoc($query)) : ?>
                <div style="margin: 5px 0 0; display: flex; align-items: center;">
                    <input type="checkbox" name="user" id="user">
                    <label for="user"><?php echo $row["firstname"] . $row["lastname"]; ?></label>
                </div>
            <?php endwhile; ?>
        </div>
    </form>
</body>

</html>
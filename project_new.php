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
    if (isset($name) && isset($description) && !empty($_POST["user"])) {
        global $connection;

        $user = $_POST["user"];

        $name = stripcslashes($name);
        $description = stripcslashes($description);

        $name = mysqli_real_escape_string($connection, $name);
        $description = mysqli_real_escape_string($connection, $description);

        // check project exist
        $query_project_exist = mysqli_query($connection, "SELECT * FROM project WHERE name='$name'");
        $row = mysqli_fetch_row($query_project_exist);

        // project don't exist
        if ($row == 0) {
            // create project
            $query = mysqli_query($connection, "INSERT INTO project(name, description) VALUES('$name', '$description')");

            if ($query) {
                // TODO: deux jointures a mettre
                $query_project_user = mysqli_query($connection, "SELECT project.id FROM project 
                LEFT JOIN project_user ON project.id=project_user.project_id");

                echo "Projet créer avec succès.";
            }
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
    <h1>Créer un projet :</h1>
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
            <?php foreach ($query as $row) : ?>
                <div style="margin: 5px 0 0; display: flex; align-items: center;">
                    <input type="checkbox" name="user[]" id="user[]" value="<?php echo $row["id"]; ?>">
                    <label for="user"><?php echo $row["firstname"] . " " . $row["lastname"]; ?></label>
                </div>
            <?php endforeach; ?>
        </div>
    </form>
</body>

</html>
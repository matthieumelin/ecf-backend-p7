<?php

session_start();

include('connection.php');

// user is not admin redirect to home page
if ($_SESSION['role'] != 'ROLE_ADMIN') {
    header("Location: /");
    exit;
}

function listProjects()
{
    global $connection;

    // check user exist
    $query = mysqli_query($connection, "SELECT * FROM project");

    while ($row = mysqli_fetch_assoc($query)) {
        echo $row["id"] . " | ",
        $row["name"] . " | ",
        $row["description"] . " <br />\n";
    }
}

listProjects();
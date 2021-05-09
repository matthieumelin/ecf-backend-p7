<?php

session_start();

// logout button is pressed
if ($_SESSION['logged'] == true && isset($_POST["button_logout"])) {
    // unset all the session variables
    $_SESSION = array();

    // destroy the session
    session_destroy();

    // redirect to home page
    header("Location: /");
    exit;
}

<?php

$url = "";

if (isset($_GET["url"])) {
    $url = $_GET["url"];
}

switch ($url) {
    case 'login':
        require 'login.php';
        break;
    case 'project':
        require 'project.php';
        break;
    case 'project/new':
        require 'project_new.php';
        break;
    case 'logout':
        require 'logout.php';
        break;
    default:
        require 'home.php';
        break;
}
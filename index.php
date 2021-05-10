<?php

$url = "";

if (isset($_GET["url"])) {
    $url = implode("/", array_filter(explode("/", $_GET["url"])));
}

if ($url == "") {
    require 'home.php';
} elseif ($url == "login") {
    require 'login.php';
} elseif ($url == "project") {
    require 'project.php';
} elseif ($url == "project/new") {
    require 'project_new.php';
} elseif ($url == "logout") {
    require 'logout.php'; 
}
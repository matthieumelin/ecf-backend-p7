<?php

$url = "";

if (isset($_GET["url"])) {
    $url = implode("/", array_filter(explode("/", $_GET["url"])));
}

if ($url == "") {
    require "home.php";
} elseif ($url == "login") {
    require "login.php";
} elseif ($url == "logout") {
    require "logout.php";
} elseif ($url == "project") {
    require "project.php";
} elseif ($url == "project/new") {
    require "project_new.php";
} elseif (preg_match("#project/([0-9]+)/edit#", $url, $params)) {
    $idProject = $params[1];
    require "project_edit.php";
} elseif (preg_match("#project/([0-9]+)#", $url, $params)) {
    $idProject = $params[1];
    require "project_view.php";
} else {
    require "404.php";
}

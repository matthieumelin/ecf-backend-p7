<?php

// connect to sql database
global $connection;

$connection = mysqli_connect("localhost", "root", "123", "ecf_p1_db");

if (mysqli_connect_errno()) {
    die("Failed to connect with MySQL: " . mysqli_connect_error());
}
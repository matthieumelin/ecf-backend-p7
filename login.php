<?php
include('./connection.php');

session_start();

// check user is already logged
if (isset($_SESSION['logged'])) {
    header("Location: /");
    exit;
}

// button login is pressed
if (isset($_POST["button_login"])) {
    $email = $_POST["email"];
    $password = $_POST["password"];

    // check if email and password is not empty
    if ($email && $password) {
        global $connection;

        $email = stripcslashes($email);
        $password = stripcslashes($password);
        $email = mysqli_real_escape_string($connection, $email);
        $password = mysqli_real_escape_string($connection, $password);

        // check user exist
        $query = mysqli_query($connection, "SELECT * FROM user WHERE email = '$email'");
        $result = mysqli_fetch_array($query, MYSQLI_ASSOC);

        if ($result) {
            // verify entry password match with hashed password in database
            if (password_verify($password, $result["password"])) {
                // create user session
                $_SESSION['logged'] = true;
                $_SESSION['id'] = $result['id'];
                $_SESSION['firstname'] = $result['firstname'];
                $_SESSION['role'] = $result['roles'];

                // check role and redirect to specific url
                switch ($result["roles"]) {
                    case "ROLE_TEACHER":

                        break;
                    case "ROLE_STUDENT":
                        break;
                    case "ROLE_CLIENT":
                        break;
                    default:
                        break;
                }
                // redirect to home page
                header("Location: /");
            } else {
                echo "Bad password";
            }
        } else {
            echo "User don't exists.";
        }
    } else {
        echo "Invalid username and password";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>

<body>
    <form action="/login" method="post">
        <div>
            <label for="email">E-mail</label>
            <input type="email" name="email" id="email">
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
        </div>
        <div>
            <button type="submit" name="button_login">Login</button>
        </div>
    </form>
</body>

</html>
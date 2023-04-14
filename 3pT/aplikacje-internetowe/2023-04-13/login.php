<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>
    
    <form action="./login.php" method="POST">
        Login: <input type="text" name="login">
        Hasło: <input type="password" name="pwd">
        <input type="submit" value="Zaloguj">
    </form>

    <?php

        ini_set("display_errors",1);
        session_start();

        if(isset($_POST['login'])&&isset($_POST['pwd'])){
            $_SESSION['login'] = $_POST['login'];
            $_SESSION['pwd'] = $_POST['pwd'];
        }

        if(isset($_SESSION['login']) && isset($_SESSION['pwd'])){
            $login = $_SESSION['login'];
            $pwd = $_SESSION['pwd'];
            $conn=new mysqli('localhost','ryba','','sesja');
            $q = "SELECT * FROM `USER` WHERE `login`='$login' && `haslo`='$pwd'";
            if($conn->query($q)->num_rows==1){
                // echo "Jest!";
                $conn->close();
                header('Location: ./');
            }else{
                echo "Spróbuj ponownie";
            };
            $conn->close();
        }


    ?>

</body>
</html>
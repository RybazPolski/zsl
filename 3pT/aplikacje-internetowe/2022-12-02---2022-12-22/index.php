<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona główna</title>
</head>
<body>
    <?php
        session_start();
        if(isset($_POST['wyloguj'])){
            unset($_SESSION['login']);
            unset($_SESSION['pass']);
            header("Location: logowanie.php");
        }

        if(!isset($_SESSION['login'])&&!isset($_SESSION['pass'])){
            header('Location: logowanie.php');
        }else{
            $login = htmlentities($_SESSION['login'],ENT_QUOTES);
            $pass = htmlentities($_SESSION['pass'],ENT_QUOTES);
            require_once('dbaccess.php');
            $conn = new mysqli($dbadr,$dbuser,$dbpass,$db);
            $res = $conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login' && `pass` LIKE '$pass';");
            if(!$res->num_rows){
                $conn->close();
                header('Location: logowanie.php');
            };
            $obj = $res->fetch_object();
            echo "<h1>Witaj $obj->name $obj->surname!</h1>";
            $conn->close();  
    
    ?>
        <iframe width="1200" height="675" src="https://www.youtube.com/embed/dQw4w9WgXcQ?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen ></iframe><br>
        <a href="./zmianaHasla.php">Zmień hasło</a>
        <form action="./index.php" method="POST"><input type="submit" value="Wyloguj" name="wyloguj"></form>
    <?php
        }
    ?>
</body>
</html>
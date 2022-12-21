<?php
    session_start();
    if(isset($_SESSION['login'])&&!isset($_SESSION['pass'])){
        $login = htmlentities($_SESSION['login'],ENT_QUOTES);
        $pass = htmlentities($_SESSION['pass'],ENT_QUOTES);
        require_once('dbaccess.php');
        $conn = new mysqli($dbadr.$dbuser,$dbpass,$db);
        if($conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login' && `pass` LIKE '$pass'")->num_rows){
            $conn->close();
            header('Location: index.php');
        };
        $conn->close();        
    }   
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>
    <form action="./logowanie.php" method="POST">
        <label for="login">Login (e-mail):</label><br><input type="text" name="login"><br>
        <label for="pass">Hasło:</label><br><input type="password" name="pass"><br>
        <input type="submit" value="Zaloguj" name="submit"><br>
        Nie masz konta? <a href="./rejestracja.php">Zarejestruj się!</a>
    </form>
    <?php
        if(isset($_POST['login'])&&!empty($_POST['login'])&&isset($_POST['pass'])&&!empty($_POST['pass'])){
            $login = htmlentities($_POST['login'],ENT_QUOTES);
            $pass = htmlentities($_POST['pass'],ENT_QUOTES);

            if(!filter_var($login,FILTER_VALIDATE_EMAIL)){
                echo "<span style=color:red>Niepoprawny adres email!</span>";
            }else{
                require_once('dbaccess.php');
                $conn = new mysqli($dbadr,$dbuser,$dbpass,$db);
                if(!$conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login'")->num_rows){
                    echo "<span style=color:red>Użytkownik o podanym adresie e-mail nie istnieje!</span>";
                }elseif($conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login'")->num_rows>1){
                    echo "<span style=color:red>Błąd bazy danych! skontaktuj się z administratorem.</span>";
                }elseif(!password_verify($pass,$conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login'")->fetch_object()->pass)){
                    echo "<span style=color:red>Błędne hasło!</span>";
                }else{
                    $_SESSION['login'] = $login;
                    $_SESSION['pass'] = crypt($pass,"md5");
                    $conn->close();
                    header('Location: index.php');
                }
                $conn->close();
            }
        }
    ?>
</body>
</html>
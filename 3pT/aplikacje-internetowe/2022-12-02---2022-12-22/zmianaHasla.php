<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zmiana hasła</title>
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
            $conn->close();  
    
    ?>
        <form action="./zmianaHasla.php" method="POST">
            <label for="pass">Podaj stare hasło:</label><br><input type="password" name="pass"><br>
            <label for="pass1">Nowe hasło:</label><br><input type="password" name="pass1"><br>
            <label for="pass2">Powtórz nowe hasło:</label><br><input type="password" name="pass2"><br>
            <input type="submit" name="confirm" value="Zmień hasło">
        </form>
    <?php
        }

        if(isset($_POST['confirm'])){
            function checkPOST($names){
                foreach($names as $v){
                    if(!isset($_POST[$v])||empty($_POST[$v])){return false;};
                }
                return true;
            }
            if(!checkPOST(['pass','pass1','pass2'])){
                echo "<span style=color:red>Uzupełnij wszystkie pola!</span>";
            }else{
                require_once 'dbaccess.php';
                $conn = new mysqli($dbadr,$dbuser,$dbpass,$db);
                $login = htmlentities($_SESSION['login'],ENT_QUOTES);
                $pass = htmlentities($_POST['pass'],ENT_QUOTES);
                if(!password_verify($pass,$conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login'")->fetch_object()->pass)){
                    echo "<span style=color:red>Błędne hasło!</span>";
                }elseif($_POST['pass1']!=$_POST['pass2']){
                    echo "<span style=color:red>Podane hasła nie są takie same!</span>";
                }else{
                    $pass = crypt(htmlentities($_POST['pass1'],ENT_QUOTES),"md5");
                    if(!$conn->query("UPDATE `users` SET `pass`='$pass' WHERE `login`='$login'")){
                        echo "<span style=color:red>Błąd bazy danych! skontaktuj się z administratorem.</span>";
                    }else{
                        $_SESSION['pass'] = $pass;
                        echo "<span style=color:green>Hasło zostało zmienione pomyślnie.</span>";
                        mail($login,"Zmiana hasła","Witaj, $obj->name $obj->surname! Hasło do twojego konta zostało zmienione. Jeżeli to nie ty za tym stoisz, bierz kij basebolowy i wiesz co robić.");
                    };
                }
                $conn->close();
            }
                
        }
    ?>
    <br><a href="index.php">< Powrót</a>
</body>
</html>
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
    <title>rejestracja</title>
</head>
<body>
    <form action="./rejestracja.php" method="POST">
        <label for="name">Imię:</label><br><input type="text" name="name"><br>
        <label for="surname">Nazwisko:</label><br><input type="text" name="surname"><br>
        <label for="login1">E-mail:</label><br><input type="email" name="login1"><br>
        <label for="login2">Powtórz E-mail:</label><br><input type="email" name="login2"><br>
        <label for="pass1">Hasło:</label><br><input type="password" name="pass1"><br>
        <label for="pass2">Powtórz hasło:</label><br><input type="password" name="pass2"><br>
        <input type="submit" value="Zarejestruj się" name="submit"><br>
        Masz już konto? <a href="./logowanie.php">Zaloguj się!</a>
    </form>
    <?php
        function checkPOST($names){
            foreach($names as $v){
                if(!isset($_POST[$v])||empty($_POST[$v])){return false;};
            }
            return true;
        }
        
        if(isset($_POST['submit'])){
            if(!checkPOST(["name","surname","login1","login2","pass1","pass2"])){
                echo "<span style=color:red>Uzupełnij wszystkie pola!</span>";
            }elseif($_POST['login1']!=$_POST['login2']){
                echo "<span style=color:red>Podane adresy e-mail nie są takie same!</span>";
            }elseif($_POST['pass2']!=$_POST['pass2']){
                echo "<span style=color:red>Podane hasła nie są takie same!</span>";
            }elseif(!filter_var($_POST['login1'],FILTER_VALIDATE_EMAIL)){
                echo "<span style=color:red>Niepoprawny adres email!</span>";
            }else{
                $login = htmlentities($_POST['login1'],ENT_QUOTES);
                $pass = crypt(htmlentities($_POST['pass1'],ENT_QUOTES),"md5");
                $name = htmlentities($_POST['name'],ENT_QUOTES);
                $surname = htmlentities($_POST['surname'],ENT_QUOTES);
                require_once 'dbaccess.php';
                $conn = new mysqli($dbadr,$dbuser,$dbpass,$db);
                if($conn->query("SELECT * FROM `users` WHERE `login` LIKE '$login'")->num_rows){
                    echo "<span style=color:red>Użytkownik o podanym adresie e-mail już istnieje!</span>";
                }else{
                    if(!$conn->query("INSERT INTO `users`(`login`,`pass`,`name`,`surname`) VALUES ('$login','$pass','$name','$surname')")){
                        echo "<span style=color:red>Błąd bazy danych! skontaktuj się z administratorem.</span>";
                    }else{
                        mail($login,"Rejestracja w serwisie","Witaj, $name $surname! Twoje konto zostało pomyślnie założone.");
                        $_SESSION['login'] = $login;
                        $_SESSION['pass'] = $pass;
                        $conn->close();        
                        header('Location: index.php');
                    }
                }
                $conn->close();        
            }
        }
    ?>
</body>
</html>
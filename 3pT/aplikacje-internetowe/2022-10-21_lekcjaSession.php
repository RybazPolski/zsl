<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sesja</title>
</head>
<body>
    <!--

        PLIK OD OLAFA WIŚNIEWSKIEGO 
        nie jest to zadanie od niego ściągnięte, po prostu pliki z samym logowaniem z lekcji 21.10 zostawiłem na dysku, który sformatowałem nie kopiując najnowszych plików

    -->
    <form method="GET">
        <?php
        $logout = 10;
        session_start();
        ini_set('error_reporting', E_ALL);
        if(isset($_COOKIE['login'])&&isset($_COOKIE['haslo']))
        {
            $log = $_COOKIE['login'];
            $pas = $_COOKIE['haslo'];
        }
        else
        {
            $log = "";
            $pas = "";
        }
        if(!isset($_GET['login'])||!isset($_GET['pass'])||$_GET['login'] != "admin"||$_GET['pass'] != "admin")
        {
                $login = $_GET['login'];
                $pass = $_GET['pass'];
                
                if($login != "admin"||$pass != "admin")
                {
        echo "Login: <input type='text' name='login' value='$log'><br>
        Haslo: <input type='password' name='pass' value='$pas'><br>
        Zapamiętaj dane<input type='checkbox' name='check'><br>
        <input type='submit' value='zaloguj'>";
                }
            }
        ?>
    </form>
    <?php
    if(!isset($_SESSION['loggedIn'])){
        if(isset($_GET['login'])&&isset($_GET['pass']))
        {
            $login = $_GET['login'];
            $pass = $_GET['pass'];
            
            if($login == "admin"&&$pass == "admin")
            {
                if(isset($_GET['check']))
                {
                    setcookie("login",$login,time()+3600);
                    setcookie("haslo",$pass,time()+3600);
                }
                else
                {
                    setcookie("login","",time()-3600);
                    setcookie("haslo","",time()-3600);
                }
                echo "<a href='https://www.youtube.com/watch?v=dQw4w9WgXcQ'>super ściśle tajne</a>";
                $_SESSION['loggedIn'] = time();
                echo "<br>Wylogowanie nastąpi o ".date("H:i:s",$_SESSION['loggedIn']+($logout)).", czyli w ciągu ".$logout-(time()-$_SESSION['loggedIn'])." sekund od chwili wejścia na stronę";
            }
            else
            {
                echo "Nieprawidłowe dane";
            }   
        }
    }elseif(time()-$_SESSION['loggedIn']<$logout){
        echo "<a href='https://www.youtube.com/watch?v=dQw4w9WgXcQ'>super ściśle tajne</a>";
        echo "<br>Wylogowanie nastąpi o ".date("H:i:s",$_SESSION['loggedIn']+$logout).", czyli w ciągu ".$logout-(time()-$_SESSION['loggedIn'])." sekund od chwili wejścia na stronę";
    }else{
        unset($_SESSION['loggedIn']);
        header("Location: ./2022-10-21_lekcjaSession.php");
    };
    
    
    ?>
    
</body>
</html>
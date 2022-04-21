<?php
session_start();
if(isset($_GET['akcja'])&&$_GET['akcja']=='wyloguj'){
    unset($_SESSION['zalogowany']);
}
if(isset($_POST['login'])&&isset($_POST['pass'])&&$_POST['login']=='admin'&&$_POST['pass']=='admin'){
    $_SESSION['zalogowany'] = 1;
}
if(isset($_POST['login'])&&isset($_POST['pass'])&&$_POST['login']=='user'&&$_POST['pass']=='user'){
    $_SESSION['zalogowany'] = 2;
}
if(!isset($_SESSION['zalogowany'])){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        Login: <input type="text" name="login" value="admin"><br>
        Hasło: <input type="password" name="pass" value="admin"><br>
        <input type="submit" value="Zaloguj">
    </form>
</body>
</html>
<?php
}else{
    if($_SESSION['zalogowany'] == 1){
        echo "Witaj na stronie panelu administracyjnego, administratorze!<br>";
    }else{
        echo "Witaj na stronie, ".$_POST['login']."!<br>";
    }
    echo "<a href='logowanie.php?akcja=wyloguj'>wyloguj</a>";
}
?>
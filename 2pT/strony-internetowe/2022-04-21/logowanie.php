<?php
session_start();
if(isset($_GET['akcja'])&&$_GET['akcja']=='wyloguj'){
    unset($_SESSION['zalogowany']);
}
if(isset($_POST['login'])&&isset($_POST['pass'])){
    $conn = new mysqli('localhost','root','','users');
    $res = $conn->query("SELECT * FROM `users` WHERE `login`='".$_POST['login']."' AND `password`=PASSWORD('".$_POST['pass']."')");
    if($res->num_rows==1){
        while($obj = $res->fetch_object()){
            $_SESSION['zalogowany'] = $obj->id;
            $_SESSION['imie'] = $obj->name;
            $_SESSION['surimie'] = $obj->surname;
            $_SESSION['uprawnienia'] = $obj->permissions;
        }
    }
    $conn->close();
   
    
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
    if($_SESSION['uprawnienia'] == 1){
        echo "Witaj na stronie panelu administracyjnego, ".$_SESSION['imie']." ".$_SESSION['surimie']."!<br>";
    }else{
        echo "Witaj na stronie, ".$_SESSION['imie']." ".$_SESSION['surimie']."!<br>";
    }
    echo "<a href='logowanie.php?akcja=wyloguj'>wyloguj</a>";
}
?>

<!-- INSERT INTO `users`(`name`, `surname`, `login`, `password`, `permissions`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]') -->
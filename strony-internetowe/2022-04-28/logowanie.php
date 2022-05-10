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
    echo "<a href='logowanie.php?akcja=wyloguj' style='float:right;'>wyloguj</a>";
    if($_SESSION['uprawnienia'] == 1){
        echo "<h1>Witaj na stronie panelu administracyjnego, ".$_SESSION['imie']." ".$_SESSION['surimie']."!</h1>";
    }else{
        echo "<h1>Witaj na stronie, ".$_SESSION['imie']." ".$_SESSION['surimie']."!</h1>";
    }

    $conn = new mysqli('localhost','root','','Lokalizator');
    $res = $conn->query('SELECT `Miasto`,`Adres`,TIME_FORMAT(`Otwarcie`,"%H:%i") AS `Otwarcie`,TIME_FORMAT(`Zamkniecie`,"%H:%i") AS `Zamkniecie` FROM `miejsca`');
    echo "<p>";
    while($obj = $res->fetch_object()){
        echo "<br><strong style='color:red'>Znam miasto: </strong>";
        echo "<strong style='color:blue'>".$obj->Miasto."</strong>";
        echo "<strong style='color:red'> i jego adres: </strong>";
        echo "<strong style='color:blue'>".$obj->Adres."</strong>";
        echo "<strong style='color:red'> otwarty w godzinach: </strong>";
        echo "<strong style='color:blue'>".$obj->Otwarcie."-".$obj->Zamkniecie."</strong>";
    }
    echo "</p>";

    if($_SESSION['uprawnienia'] == 1){
        ?>
        
        <p>
        <form action="./add.php" method="POST">
            <label>Podaj miasto: </label><input type="text" name="city" required><br>
            <label>Podaj adres: </label><input type="text" name="adress" required><br>
            <label>Podaj godziny otwarcia: </label><input type="text" name="hours" required><br>
            <input type="submit" value='Dodaj lokalizację'>
        </form>
        </p>
        
        
        <?php
    }
}

?>

<!-- INSERT INTO `users`(`name`, `surname`, `login`, `password`, `permissions`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]') -->
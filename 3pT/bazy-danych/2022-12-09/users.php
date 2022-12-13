<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styl4.css">
    <title>Panel administratora</title>
</head>
<body>
    <div class="baner"><h3>Portal Społecznościowy - panel administratora</h3></div>
    <div class="lewy">
        <h4>Użytkownicy</h4>
        <?php
            $conn = new mysqli('localhost','root','','dane4');
            $res = $conn->query("SELECT id, imie, nazwisko, rok_urodzenia, zdjecie FROM `osoby` LIMIT 30;");
            while($obj = $res->fetch_object()){
                $age = date('Y')-$obj->rok_urodzenia;
                echo "$obj->id. $obj->imie $obj->nazwisko, $age lat<br>";
            }
        ?>
        <a href="settings.html">Inne ustawienia</a>
    </div>
    <div class="prawy">
        <h4>Podaj id użytkownika</h4>
        <form action="users.php" method="post">
            <input type="number" name="id"><button>ZOBACZ</button>
        </form>
        <hr>
        <?php
            if(isset($_POST["id"])&&!empty($_POST["id"])){
                $id = $_POST["id"];
                $obj = $conn->query("SELECT imie, nazwisko, rok_urodzenia, opis, zdjecie, nazwa FROM `osoby` INNER JOIN `hobby` ON `osoby`.`Hobby_id`=`hobby`.`id` WHERE `osoby`.`id` = $id")->fetch_object();
                echo "<h2>$id. $obj->imie $obj->nazwisko</h2>";
                echo "<img src='$obj->zdjecie' alt='$id'>";
                echo "<p>Rok urodzenia: $obj->rok_urodzenia</p>";
                echo "<p>Opis: $obj->opis</p>";
                echo "<p>Hobby: $obj->nazwa</p>";
            }
            $conn->close();
        ?>
    </div>
    <footer>Stronę wykonał: Julian Rybarczyk</footer>
</body>
</html>
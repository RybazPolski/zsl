<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styl4.css">
    <title>Panel administratora</title>
</head>
<body>
    <div class="baner"></div>
    <div class="lewy">
        <?php
            $conn = new mysqli('localhost','root','windows','dane4');
            $res = $conn->query("SELECT id, imie, nazwisko, rok_urodzenia, zdjecie FROM `osoby` LIMIT 30;");
            while($obj = $res->fetch_object()){
                $age = date('Y')-$obj->rok_urodzenia;
                echo "$obj->id. $obj->imie $obj->nazwisko, $age lat<br>";
            }
        ?>
    </div>
    <div class="prawy"></div>
    <footer></footer>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zapytanie 3</title>
</head>
<body>
    <?php
        $conn = mysqli_connect("localhost","root","","egzamin");
        $q = "SELECT `zdjecia`.`nazwaPliku`,`wycieczki`.`cel` FROM `zdjecia` INNER JOIN `wycieczki` ON `zdjecia`.`id`=`wycieczki`.`zdjecia_id` WHERE `wycieczki`.`cena`>1000";
        $result = mysqli_query($conn,$q);

        while($record=mysqli_fetch_array($result)){
            echo "<img src='".$record["nazwaPliku"]."'><br>Zrobiono w: ".$record["cel"]."<br><br>";
        }
    ?>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Dodaj lokalizację</title>
</head>
<body>
<strong style="color:blue;">Nie znalazłam adresu!</strong>
    </p>
        <form action="./add.php" method="POST">
            <label>Podaj miasto: </label><input type="text" name="city" required><br>
            <label>Podaj adres: </label><input type="text" name="adress" required><br>
            <label>Podaj godziny otwarcia: </label><input type="text" name="hours" required><br>
            <input type="submit" value='Dodaj lokalizację'>
        </form>
    </p>
    <p>
    <?php
        $conn = mysqli_connect('localhost','root','','Lokalizator');
        mysqli_set_charset($conn,'utf8');
        echo "<span style='color:blue'>W bazie istnieją również lokalizacje:</span>";

        $q = 'SELECT `Miasto`,`Adres`,TIME_FORMAT(`Otwarcie`,"%H:%i") AS `Otwarcie`,TIME_FORMAT(`Zamkniecie`,"%H:%i") AS `Zamkniecie` FROM `miejsca`';
        $res = mysqli_query($conn,$q);
    
        while($rec = mysqli_fetch_array($res)){
            echo "<br><strong style='color:red'>Znam miasto: </strong>";
            echo "<strong style='color:blue'>".$rec['Miasto']."</strong>";
            echo "<strong style='color:red'> i jego adres: </strong>";
            echo "<strong style='color:blue'>".$rec['Adres']."</strong>";
            echo "<strong style='color:red'> otwarty w godzinach: </strong>";
            echo "<strong style='color:blue'>".$rec['Otwarcie']."-".$rec['Zamkniecie']."</strong>";
        }
        mysqli_close($conn);
    ?>
    </p>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    
        require "access.php";


        mysqli_set_charset($connection,"utf8") or die ("Błąd zapytania");

        $q = "SELECT * FROM `Dane` WHERE 1";
        $result = mysqli_query($conn,$q);
        while($record = mysqli_fetch_assoc($result)){
            echo $record["imie"]." ".$record["nazwisko"]." z klasy ".$record["klasa"]."<br>";
        }

        mysqli_close($conn);

    ?>
</body>
</html>
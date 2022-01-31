<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Szkoła Ponadgimnazjalna</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="banner">
        <h1>Oceny uczniów: język polski</h1>
    </div>
    <div class="lewy">
        <h2>Lista uczniów:</h2>
        <ol>
        <?php
            $conn = mysqli_connect("127.0.0.1","root","","szkola");
            $q1 = "SELECT `imie`,`nazwisko` FROM `uczen`";
            $q2 = "SELECT `imie`,`nazwisko` FROM `uczen` WHERE `id`=2";
            $q3 = "SELECT `ocena` FROM `ocena` WHERE `id`=2";
            $q4 = "SELECT AVG(`ocena`) AS `srednia` FROM `ocena` WHERE `uczen_id`=2 AND `przedmiot_id`=1";
            $res1 = mysqli_query($conn,$q1);
            while($rec1=mysqli_fetch_array($res1)){
                echo "<li>".$rec1['imie']." ".$rec1['nazwisko']."</li>";
            };
        ?>

        </ol>
    </div>
    <div class="prawy">
        <br>
        <h2>
            Uczeń: 
            <?php
                $res2 = mysqli_query($conn,$q2);
                while($rec2=mysqli_fetch_array($res2)){
                    echo $rec2['imie']." ".$rec2['nazwisko'];
                };
            ?> 
        </h2>
        <br>
        <p>
            Średnia ocen z polskiego:
            <?php
                $res4 = mysqli_query($conn,$q4);
                while($rec4=mysqli_fetch_array($res4)){
                    echo $rec4['srednia'];
                };
            ?>
        </p>
    </div>
    <footer>
        <h3>Zespół Szkół ponadgimnazjalnych</h3>
        <p>Stronę opracował: Julian Rybarczyk</p>
    </footer>
</body>
</html>
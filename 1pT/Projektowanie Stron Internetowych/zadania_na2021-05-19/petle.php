<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pętle</title>
</head>
<body>

    <form method="GET">
        Podaj liczbę miesięcy: <input type="number" name="x">zł<br>
        Podaj odkładaną kwotę: <input type="number" name="y">zł<br>
        <input type="submit" name="submit" value="Potwierdź"><br>
    </form>

    <?php
    // zad1
        echo "<br>zadanie 1: <br>";
        $i = 1;
        do{
            echo $i." ";
            $i++;
        }while($i<=10);
        echo "<br>";

    //zad2
        echo "<br>zadanie 2: <br>";
        $i = 10;
        do{
            echo $i." ";
            $i--;
        }while($i>=1);
        echo "<br>";

    //zad3
        echo "<br>zadanie 3: <br>";
        $suma = 0;

        for($i = 1; $i<=10; $i++){
            $suma=$suma+$i;
        };
        echo $suma;
        echo "<br>";

    //zad4 
        echo "<br>zadanie 4: <br>";
        $i = 2;
        do{
            echo $i." ";
            $i+=2;
        }while($i<=10);
        echo "<br>";

    //zad5
        echo "<br>zadanie 5: <br>";

        $x = $_GET['x'];
        $y = $_GET['y'];

        for($i=1;$i<=$x;$i++){
            $kwota = ($y + $kwota)*1.08;
        };
        echo "Kwota: ".round($kwota,2)."zł<br>";
        echo "Zysk: ".round(($kwota-$x*$y),2)."zł<br>";
    //zad6
        echo "<br>zadanie 6: <br>";
        $suma = 0;
        $element = 5;
        for($i=1;$i<=100;$i++){
            $suma = $suma+$element;
            $element=$element+10;
        };
        echo $suma."<br>";    

    // zadanie interaktywne 7
        echo "<br>zadanie interaktywne 7: <br>";
        for($i=0, $j=3; $i<20; $i++, $j*=2){
            echo $j." ";
        };
        echo "<br>";

    // zadanie interaktywne 8
        echo "<br>zadanie interaktywne 8: <br>";
        $i=0;
        $j=4;
        while($i<20){
            echo $j." ";
            $i++;
            $j+=5;
        }
    ?>
</body>
</html>
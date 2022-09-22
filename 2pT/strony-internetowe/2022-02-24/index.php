<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nasz sklep komputerowy</title>
    <link rel="stylesheet" href="styl8.css">
</head>
<body>


    <section class="menu">
        <a href="./index.php">Główna</a>
        <a href="./procesory.html">Procesory</a>
        <a href="./ram.html">RAM</a>
        <a href="./grafika.html">Grafika</a>
    </section>
    <section class="logo">
        <h2>Podzespoły komputerowe</h2>    
    </section>

    <section class="main">
        <h1>Dzisiejsze promocje</h1>
        <table>
            <tr><th>NUMER</th><th>NAZWA PODZESPOŁU</th><th>OPIS</th><th>CENA</th></tr>

            <?php

                $conn = mysqli_connect('localhost','root','','sklep');
                $q = 'SELECT `id`,`nazwa`,`opis`,`cena` FROM `podzespoly` WHERE `cena`<1000';
                $res = mysqli_query($conn,$q);
                while($rec = mysqli_fetch_assoc($res)){
                    echo "<td>".$rec['id']."</td><td>".$rec['nazwa']."</td><td>".$rec['opis']."</td><td>".$rec['cena']."</td></tr>";
                }

            ?>

        </table>
    </section>

    <footer><img src="./podzespoly_pliki/scalak.jpg" alt="promocje na procesory"></footer>
    <footer><h4>Nasz Sklep Komputerowy</h4><p>Współpracujemy z hurtownią <a href="http://www.edata.pl/" target="_blank">edata</a></p></footer>
    <footer><br>zadzwoń: 601 602 603</footer>
    <footer><br>Stronę wykonał: Julian Rybarczyk</footer>
</body>
</html>
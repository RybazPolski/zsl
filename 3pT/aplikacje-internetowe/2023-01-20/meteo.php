<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prognoza pogody Poznań</title>
    <link rel="stylesheet" href="styl4.css">
</head>
<body>
    <div class="bLeft"><p>maj, 2019 r.</p></div>
    <div class="bMid"><h2>Prognoza pogody Poznań</h2></div>
    <div class="bRight"><img src="./pliki3/logo.png" alt="prognoza"></div>
    <div class="left"><a href="./kwerendy.txt">Kwerendy</a></div>
    <div class="right"><img src="./pliki3/obraz.jpg" alt="Polska, Poznań"></div>
    <div class="main"><table>
        <tr><th>Lp.</th><th>DATA</th><th>NOC - TEMPERATURA</th><th>DZIEŃ - TEMPERATURA</th><th>OPADY [mm/h]</th><th>CIŚNIENIE [hPa]</th></tr>
        <?php
            $conn = new mysqli('localhost','root','','prognoza');
            $res = $conn->query("SELECT * FROM `pogoda` WHERE `miasta_id` = 2");
            $i=0;
            while($obj = $res->fetch_object()){
                echo "<tr><td>$i</td><td>$obj->data_prognozy</td><td>$obj->temperatura_noc</td><td>$obj->temperatura_dzien</td><td>$obj->opady</td><td>$obj->cisnienie</td></tr>";
            }
        ?>
    </table></div>
    <footer><p>Stronę wykonał: 12345678901</p></footer>
</body>
</html>
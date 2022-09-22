<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gromady kręgowców</title>
    <link rel="stylesheet" href="./style12.css">
</head>
<body>
    <div class="header">
        <div class="menu">
            <a href="./gromady-ryby.html">gromada ryb</a>
            <a href="./gromady-ptaki.html">gromada ptaków</a>
            <a href="./gromady-ssaki.html">gromada ssaków</a>
        </div>
        <div class="logo">
            <h2>GROMADY KRĘGOWCÓW</h2>
        </div>        
    </div>    

    <div class="content">
        <div class="left">
            <?php
                $conn = new mysqli("localhost","root","","baza");
                $res = $conn->query('SELECT `zwierzeta`.`id`,`Gromady_id`,`gatunek`,`wystepowanie` FROM `zwierzeta` INNER JOIN `gromady` ON `zwierzeta`.`Gromady_id`=`gromady`.`id` WHERE `nazwa`="ptaki" OR `nazwa`="ssaki";');
                while($obj = $res->fetch_object()){
                    echo "<p>$obj->id. $obj->gatunek</p>";                
                    echo "<p>Występowanie: $obj->wystepowanie. gromada ".($obj->Gromady_id==4?"ptaki":"ssaki")."</p>";  
                    echo "<hr>";              
                }
                $conn->close();
            ?>
        </div>
        <div class="right">
            <h1>PTAKI</h1>
            <ol>
                <?php
                $conn = new mysqli("localhost","root","","baza");
                $res = $conn->query('SELECT `gatunek`,`obraz` FROM `zwierzeta` INNER JOIN `gromady` ON `zwierzeta`.`Gromady_id`=`gromady`.`id` WHERE `nazwa`="ptaki"');
                while($obj = $res->fetch_object()){
                    echo "<li><a href='$obj->obraz'>$obj->gatunek</a></li>";           
                }
                $conn->close();

                ?>
            </ol>
            <img src="./materialy4/sroka.jpg" alt="Sroka zwyczajna, gromada ptaki">

        </div>
    </div>
    <footer>Stronę o kręgowcach przygotował: Julian Rybarczyk</footer>
</body>
</html>
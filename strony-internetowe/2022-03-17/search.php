<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wyniki wyszukiwania</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <strong>
    <?php
        session_start();
        if(isset($_POST['city'])||isset($_SESSION["city"])){
            $city = isset($_POST['city']) ? $_POST['city'] : $_SESSION['city'];
            $conn = mysqli_connect('localhost','root','','Lokalizator');
            mysqli_set_charset($conn,'utf8');
            $q = 'SELECT `Miasto`,`Adres`,TIME_FORMAT(`Otwarcie`,"%H:%i") AS `Otwarcie`,TIME_FORMAT(`Zamkniecie`,"%H:%i") AS `Zamkniecie`, IF(`Otwarcie`<=NOW()&&`Zamkniecie`>NOW(),"Teraz otwarty","Teraz zamknięty") AS `otwarty` FROM `miejsca` WHERE `Miasto`="'.$city.'"';
            $res = mysqli_query($conn,$q);
            if(mysqli_num_rows($res)){
                $rec = mysqli_fetch_array($res);
                echo "<span style='color:blue'>Najbliższa lokalizacja: </span>";
                echo "<span style='color:red'>".$rec['Miasto'].", ".$rec['Adres'].", ".$rec['Otwarcie']."-".$rec['Zamkniecie']."</span> <span style='color:blue'>".$rec['otwarty']."</span>";
                echo "<br>";
                echo "<form action='./index.php'><button style='margin-left:225px;margin-top:10px'>Powrót</button></form>";
                echo "<br>";
                echo "<span style='color:blue'>W bazie istnieją również lokalizacje:</span>";

                $q = 'SELECT `Miasto`,`Adres`,TIME_FORMAT(`Otwarcie`,"%H:%i") AS `Otwarcie`,TIME_FORMAT(`Zamkniecie`,"%H:%i") AS `Zamkniecie` FROM `miejsca`';
                $res = mysqli_query($conn,$q);
                
                while($rec = mysqli_fetch_array($res)){
                    echo "<br><span style='color:red'>Znam miasto: </span>";
                    echo "<span style='color:blue'>".$rec['Miasto']."</span>";
                    echo "<span style='color:red'> i jego adres: </span>";
                    echo "<span style='color:blue'>".$rec['Adres']."</span>";
                    echo "<span style='color:red'> otwarty w godzinach: </span>";
                    echo "<span style='color:blue'>".$rec['Otwarcie']."-".$rec['Zamkniecie']."</span>";
                }
                mysqli_close($conn);
                session_destroy();
            }else{
                mysqli_close($conn);
                session_destroy();
                header("Location: create.php");
            }
        }
    ?>
    </strong>
</body>
</html>
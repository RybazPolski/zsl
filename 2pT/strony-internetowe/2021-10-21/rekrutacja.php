<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rekrutacja</title>
    <style>
        table, th, td{
            border: 1px solid black;
            border-collapse: collapse;
        }
        div{
            width: auto;
            float: left;
            margin: 1%;
        }
    </style>
</head>
<body>
    <?php
        $conn = mysqli_connect("localhost","root","","rekrutacja-php");

// zadanie 1
        $q = 'SELECT `imie`,`nazwisko`,`płeć` FROM `kandydaci` WHERE `płeć`="k"';
        $res = mysqli_query($conn,$q);
        echo "<div><h1>Kobiety</h1><table><tr><th>imię</th><th>nazwisko</th><th>płeć</th></tr>";
        while($rec=mysqli_fetch_array($res)){
            echo "<td>".$rec["imie"]."</td>"."<td>".$rec["nazwisko"]."</td>"."<td>".$rec["płeć"]."</td></tr>";
        }
        echo "</table><hr><div>";

// zadanie 2
        $q = 'SELECT `imie`,`nazwisko`,`językobcy` FROM `kandydaci` WHERE `językobcy`<=50';
        $res = mysqli_query($conn,$q);
        echo "<div><h1>Nie więcej niż 50pkt z języka obceko</h1><ul>";
        while($rec=mysqli_fetch_array($res)){
            echo "<li>".$rec["imie"]." ".$rec["nazwisko"]." wynik: ".$rec["językobcy"]."</li>";
        }
        echo "</ul><hr></div>";

// zadanie 3        
        $q = "SELECT `imie`,`nazwisko`,`językobcy` FROM `kandydaci` WHERE językobcy=100;";
        $res = mysqli_query($conn,$q);
        echo "<div><h1>100pkt z języka obceko</h1><ul>";
        while($rec=mysqli_fetch_array($res)){
            echo "<li>".$rec["imie"]." ".$rec["nazwisko"]." wynik: ".$rec["językobcy"]."</li>";
        }
        echo "</ul><hr></div>";
        
// zadanie 4
        $q = "SELECT `imie`,`nazwisko`,`płeć` FROM `kandydaci` WHERE `imie` LIKE 'a%'  ORDER BY `kandydaci`.`nazwisko` ASC";
        $res = mysqli_query($conn,$q);
        echo '<div><h1>Osoby na "A"</h1><ol>';
        while($rec=mysqli_fetch_array($res)){
            echo "<li>".$rec["imie"]." ".$rec["nazwisko"]." wynik: ".$rec["językobcy"]."</li>";
        }
        echo "</ol><hr></div>";
        
// zadanie 5
        $q = "SELECT `imie` FROM `kandydaci` WHERE `imie` LIKE '%r'  ORDER BY `kandydaci`.`nazwisko` ASC";
        $res = mysqli_query($conn,$q);
        echo '<div><h1>Osoby na "A"</h1><ol>';
        while($rec=mysqli_fetch_array($res)){
            echo "<li>".$rec["imie"]."</li>";
        }
        echo "</ol><hr></div>";        
        
        
        $q = "SELECT COUNT(`idosoby`) AS `l` FROM `kandydaci` WHERE `płeć` LIKE 'k'";
        $res = mysqli_query($conn,$q);
        echo '<div><h1>Liczba kobiet: </h1>';
        while($rec=mysqli_fetch_array($res)){
            echo $rec["l"];
        }
        echo "<hr></div>";        
        
        mysqli_close($conn);
    ?>
</body>
</html>
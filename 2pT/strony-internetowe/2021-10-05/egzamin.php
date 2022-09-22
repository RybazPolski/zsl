<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biuro podróży</title>
    <style>
        table:not(.galeria), td:not(.galeria), th:not(.galeria){
            border: 2px solid black;
            border-collapse: collapse;
        }
        table.galeria{
            width: max-content;
            display: block;
            margin: auto;
        }
        img{
            width: 126px;
            height: 126px;
            object-fit: cover;
            margin: 5px;
        }
        img:hover{
            margin: 0px;
            border: 5px solid rgb(210,180,140);
        }
    </style>
</head>
<body>
    <?php
        $conn = mysqli_connect("localhost","root","","egzamin");
        
        
        $q = "SELECT `nazwaPliku`,`podpis` FROM `zdjecia` ORDER BY `podpis` ASC";
        $result = mysqli_query($conn,$q);

        if(mysqli_num_rows($result)>0){
            $i=1;
            echo "<table class='galeria'><tr>";
            while($record = mysqli_fetch_row($result)){
                echo "<td class='galeria'><img src='".$record[0]."' title='".$record[1]."'></td>";
                if($i%3==0){
                    echo "</tr><tr>";
                };
                $i++;
            }
            echo "</tr></table>";
        };
        
        $q = "SELECT `id`,`dataWyjazdu`,`cel`,`cena` FROM `wycieczki` WHERE `dostepna`=1";
        $result = mysqli_query($conn,$q);

        if(mysqli_num_rows($result)>0){
            echo "<table><tr><th>id</th><th>Data Wyjazdu</th><th>Cel</th><th>Cena</th></tr>";
            while($record = mysqli_fetch_array($result)){
                echo "<tr><td>".$record['id']."</td><td>".$record['dataWyjazdu']."</td><td>".$record['cel']."</td><td>".$record['cena']."zł</td></tr>";
            }
            echo "</table>";
        };

        mysqli_close($conn);
    ?>
</body>
</html>
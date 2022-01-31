<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularze</title>
    <style>
        table, tr, td, th{
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <?php
        $conn = mysqli_connect("localhost","root","","rekrutacja3");
        $q = "SELECT `kierunek` FROM `zgloszenia` GROUP BY `kierunek`";
        $res = mysqli_query($conn,$q);
        echo "<form action='rekrutacja3.php' method='GET'>";
        while($rec=mysqli_fetch_array($res)){
            echo "<input type='radio' name='kierunek' value='".$rec['kierunek']."'>".$rec['kierunek']."<br>";
        }
        echo "<input type='submit' value='Wyświetl'></form>";
        mysqli_close($conn);


        if(isset($_GET['kierunek'])&&!empty($_GET['kierunek'])){
            $kier = $_GET['kierunek'];
            $conn = mysqli_connect("localhost","root","","rekrutacja3");
            $q = "SELECT `idosoby` FROM `zgloszenia` WHERE `kierunek` = '$kier'";
            $res = mysqli_query($conn,$q);
            echo "<table><tr><th>Id osoby</th></tr>";
            while($rec=mysqli_fetch_array($res)){
                echo "<tr><td>".$rec["idosoby"]."</td></tr>";
            }
            echo "</table>";
        }else{
            echo "<span style='color: blue;'>Wybierz kierunek</span>";
        };
    ?>

</body>
</html>
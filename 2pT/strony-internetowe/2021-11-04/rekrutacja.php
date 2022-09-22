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
    <form action="rekrutacja.php" method="GET">
        Osoby na literę: <input type="text" name="char" maxlenght="1"><br>
        <input type="submit" value="Zatwierdź">
    </form>

    <?php
        if(isset($_GET['char'])&&!empty($_GET['char'])){
            $char = $_GET['char'];
            $conn = mysqli_connect("localhost","root","","Rekrutacja");
            $q = "SELECT `imie`,`nazwisko` FROM `kandydaci` WHERE `imie` LIKE '".$char."%';";
            $res = mysqli_query($conn,$q);
            echo "<table><tr><th>Imię</th><th>Nazwisko</th></tr>";
            while($rec=mysqli_fetch_array($res)){
                echo "<tr><td>".$rec["imie"]."</td><td>".$rec["nazwisko"]."</td></tr>";
            }
            echo "</table>";
        }else{
            echo "<span style='color: red;'>Nie podano litery!</span>";
        };
    ?>

</body>
</html>
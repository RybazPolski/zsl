<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
</head>
<body>
    <?php
        $conn = mysqli_connect('localhost','michal','zaq1','uprawnienia');
        $q = "SELECT UPPER(`Nazwisko`) AS `Nazwisko` FROM `osoba`";
        $res = mysqli_query($conn,$q);
        while($rec=mysqli_fetch_array($res)){
            echo $rec['Nazwisko']."<br>";
        }
    ?>


</body>
</html>
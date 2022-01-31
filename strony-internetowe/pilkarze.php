<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pilkarze</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="pilkarze.php" method="POST">
        Wybierz pozycję: <select name="pozycja">
            <?php
            
                $conn = mysqli_connect("localhost","root","","pilkarze");
                $q = 'SELECT * FROM `pozycja`';
                $res = mysqli_query($conn,$q);
                while($rec = mysqli_fetch_array($res)){
                    echo "<option value='".$rec['id']."'>".$rec['nazwa']."</option>";
                }

            ?>
        </select>
        <input type="submit" value="Zobacz" name="submit">
    </form>
    <div>
        <?php
            if(isset($_POST['submit'])){
                $pozycja = $_POST['pozycja'];
                $q = 'SELECT * FROM `zawodnik` WHERE `pozycja_id`='.$pozycja;
                $res = mysqli_query($conn,$q);
                    while($rec = mysqli_fetch_array($res)){
                        echo $rec['imie']." ".$rec['nazwisko']."<br>";
                    }
            }
            mysqli_close($conn);
        ?>
    </div>
</body>
</html>
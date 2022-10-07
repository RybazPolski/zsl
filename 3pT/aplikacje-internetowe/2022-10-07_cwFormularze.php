<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania formularze</title>
</head>
<body>
    <form method="post">
        <input type="date" name="date"> 
        <?php
        if(isset($_POST['date'])&&!empty($_POST['date'])){
            echo strtotime($_POST['date']);
        };
        ?>
        <br><input type="num" name="time"> 
        <?php
        if(isset($_POST['time'])&&!empty($_POST['time'])){
            echo date("d.m.Y h:i:s",$_POST['time']);
        };
        ?>
        <br><input type="submit" value="Konwertuj">
        </form>
</body>
</html>
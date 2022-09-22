<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Powtorka</title>
    <style>
        table, td, th{
            border: 2px solid black; border-collapse:collapse;
        }
    </style>
</head>
<body>
    <form action="./index.php" method="POST">
        Imię: <input type="text" name="name"><br>
        Klasa:<br>
        <input type="radio" name="class" value="1">1 klasa<br>
        <input type="radio" name="class" value="2">2 klasa<br>
        <input type="radio" name="class" value="3">3 klasa<br>
        Kolor: <select name="color">
            <option value="red">czerwony</option>
            <option value="green">zielony</option>
            <option value="blue">niebieski</option>
        </select><br>
        <input type="submit">
    </form>
    <?php
        
        if(isset($_POST['name'])&&!empty($_POST['name'])&&isset($_POST['class'])&&!empty($_POST['class'])&&isset($_POST['color'])&&!empty($_POST['color'])){
            $name = $_POST['name'];
            $class = $_POST['class'];
            $color = $_POST['color'];
            echo "<span style='color:$color;'>$name, klasa $class</span>";
            $date = date("Y-m-d");
            $conn = new mysqli('localhost','root','','Powtorka');
            $conn->query("INSERT INTO `dane`(`Id`, `Imie`, `Klasa`, `Kolor`, `Data`) VALUES (null,'$name','$class','$color','$date')");
            $conn->close();
        }
        echo "<br><br><a href='./skrypt.php'>Wyświetl tylko tabelę<a><br>";
        include 'skrypt.php';
    ?>

</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operatory</title>
</head>
<body>
    
    <form action="operatory.php" method="GET">
        <input type="text" placeholder="Wprowadź liczbę a" name="a">
        <input type="text" placeholder="Wprowadź liczbę b" name="b">
        <input type="text" placeholder="Wprowadź liczbę c" name="c">
        <input type="submit" name="button" value="Wyślij">
    </form>
    <br>

    <?php
        $i=8; $a=0;
        while($i)
        {
        $a=$a+2;
        $i--;
        };
        echo $a;
    ?>



</body>
</html>
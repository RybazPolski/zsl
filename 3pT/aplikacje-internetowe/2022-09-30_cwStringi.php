<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania stringi</title>
</head>
<body>
    <?php
        $me = "Julian Rybarczyk";
        echo explode(" ",$me)[1];
        echo "<br>";

        $mail = "julorybarczyk@gmail.com";
        echo explode("@",$mail)[1];
        echo "<br>";
        echo htmlspecialchars("<h1>Lorem Ipsum</h1><p>dolor sit amet, consectetur adipiscing elit.</p>");
        
        function isPalindrom($s){return $s==strrev($s)?1:0;}

        echo "<br>";
        echo isPalindrom("kajak");
        echo "<br>";
        echo isPalindrom("kajmak");
    ?>
</body>
</html>
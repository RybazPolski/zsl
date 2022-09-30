<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania tablice</title>
</head>
<body>
    <?php
        $products = ["Mleko" => 3.58, "Maslo" => 8.14, "Motocykl" => 15999, "Lego" => 219.99, "Bananas" => 4.20];
        print_r($products);
        echo "<br>";
        ksort($products);
        print_r($products);
        echo "<br>";
        arsort($products);
        print_r($products);
        echo "<br>";
        
    ?>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BMI</title>
</head>
<body>
    <?php
    
        $q1 = 'SELECT `informacja`,`wart_min`,`wart_max` FROM `bmi` ';
        $q2 = "INSERT INTO `wynik`(`bmi_id`, `data_pomiaru`, `wynik`) VALUES ('$bmi_id','$nowDate','$wynik')";
        
    ?>
</body>
</html>
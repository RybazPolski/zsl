<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularz</title>
</head>

<body>
    <div id="pliki_i_Formularze">
    <?php
        if(!file_exists("plik.txt")){
            echo "Plik nie istnieje :<";
        }else{
            echo "Plik istnieje :>";
        };
    ?>
    </div>
</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formsy</title>
    
</head>
<body>
    <form action="2021-09-23(2).php" method="POST">
        
        <select name="kielbasa">
            <option disabled="disabled">Wybierz kiełbasę</option>
            <!-- <option>Biała 10cm</option>
            <option>Biała 15cm</option>
            <option>Biała 20cm</option>
            <option>Biała 25cm</option>
            <option>Biała 30cm</option>
            <option>Śląska 10cm</option>
            <option>Śląska 15cm</option>
            <option>Śląska 10cm</option>
            <option>Śląska 25cm</option>
            <option>Śląska 30cm</option>
            <option>Frankfuterka 10cm</option>
            <option>Frankfuterka 15cm</option>
            <option>Frankfuterka 20cm</option>
            <option>Frankfuterka 25cm</option>
            <option>Frankfuterka 30cm</option> -->
            <option>Biała</option>
            <option>Śląska</option>
            <option>Frankfuterska</option>
        </select>

        

        <input type="submit" value="Złurz zamuwienie"><br>
    </form>

    <?php
    
        if(!empty($_POST['kielbasa'])){
            $kielbasa = $_POST['kielbasa'];
            switch($kielbasa){
                case "Biała":
                    echo "
                    <style>
                        body{
                            background-image: url(biala.jpg);
                            background-size: 131%;
                            background-position-x: center;
                        }
                    </style>
                    "       ;
                    $kolor='white';
                    break;
                case "Śląska":
                    echo "
                    <style>
                        body{
                            background-image: url(slaska.jpg);
                            background-size: 131%;
                            background-position-x: center;
                        }
                    </style>
                    "       ;
                    $kolor='chocolate';
                    break;                
                case "Frankfuterska":
                    echo "
                    <style>
                        body{
                            background-image: url(frankfuterki.jpg);
                            background-size: 131%;
                            background-position-x: center;
                        }
                    </style>
                    "       ;
                    $kolor='brown';
                    break;                
            }
            echo "<span style=color:$kolor;>Julian Rybarczyk</span>";
        }
        

    ?>
</body>
</html>
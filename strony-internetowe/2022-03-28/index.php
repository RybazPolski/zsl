<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BMI</title>
    <link rel="stylesheet" href="./styl3.css">
</head>
<body>
    <section class="logo">
        <img src="./z3/wzor.png" alt="wzór BMI">
    </section>
    <section class="banner">
        <h1>Oblicz swoje BMI</h1>
    </section>
    <section class="main">
        <h2>Podaj wagę i wzrost</h2>
        <table>
            <tr><th>Interpretacja BMI</th><th>Wartość minimalna</th><th>Wartość maksymalna</th></tr>
            <?php
                $conn = mysqli_connect('localhost','root','','bmi');
                $q1 = 'SELECT `informacja`,`wart_min`,`wart_max` FROM `bmi` ';
                $res = mysqli_query($conn,$q1);
                while($rec = mysqli_fetch_array($res)){
                    echo "<tr><td>".$rec[0]."</td><td>".$rec[1]."</td><td>".$rec[2]."</td></tr>";
                };
            ?>
        </table>
    </section>
    <span class="leftright">
        <section class="left">
            <form method="POST" action="./index.php">
                <label for="weight">Waga:</label><input name="weight" type="number" min="1"><br>
                <label for="height">Wzrost w cm:</label><input name="height" type="number" min="1"><br>
                <input type="submit" value="Oblicz i zapamiętaj wynik">
            </form>
            <?php
            
            
            if(isset($_POST['weight'])&&!empty($_POST['weight'])&&isset($_POST['height'])&&!empty($_POST['height'])){
                $weight = $_POST['weight'];
                $height = $_POST['height'];
                $bmi = $weight/($height*$height)*10000;
                $bmi = round($bmi);

                switch(false){
                    case $bmi>=0&&$bmi<=18:
                        $id = 1;
                        break;
                    case $bmi>=19&&$bmi<=25:
                        $id = 2;
                        break;
                    case $bmi>=26&&$bmi<=30:
                        $id = 3;
                        break;
                    case $bmi>=31&&$bmi<=100:
                        $id = 4;
                        break;
                    
                }
                switch(true){
                    case $bmi>=0&&$bmi<=18:
                        $id = 1;
                        break;
                    case $bmi>=19&&$bmi<=25:
                        $id = 2;
                        break;
                    case $bmi>=26&&$bmi<=30:
                        $id = 3;
                        break;
                    case $bmi>=31&&$bmi<=100:
                        $id = 4;
                        break;
                    
                }

//          Daję dwa switche, ponieważ raz mi działa z false, raz z true, dziwne...

                $q2 = "INSERT INTO `wynik`(`bmi_id`,`data_pomiaru`, `wynik`) VALUES ($id,'".date("Y-m-d")."','$bmi')";
                mysqli_query($conn,$q2);
                // echo $q2;
                echo "Twoja waga $weight; Twój wzrost $height<br>BMI wynosi: $bmi";
            }
            mysqli_close($conn);

        ?>
        </section>
        <section class="right">
            <img src="./z3/rys1.png" alt="ćwiczenia">
        </section>
    </span>
    <footer>Autor: Julian Rybarczyk <a href="./kwerendy.txt">Zobacz kwerendy</a></footer>

    
</body>
</html>
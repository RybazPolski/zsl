<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    ini_set("display_errors",1);
        session_start();

        if(isset($_POST['login'])&&isset($_POST['pwd'])){
            $_SESSION['login'] = $_POST['login'];
            $_SESSION['pwd'] = $_POST['pwd'];
        }

        if(isset($_SESSION['login']) && isset($_SESSION['pwd'])){
            $login = $_SESSION['login'];
            $pwd = $_SESSION['pwd'];
            $conn=new mysqli('localhost','ryba','','sesja');
            $q = "SELECT * FROM `USER` WHERE `login`='$login' && `haslo`='$pwd'";
            if($conn->query($q)->num_rows!=1){
                $conn->close();
                header('Location: ./login.php');

            }else{
                $user = mysqli_fetch_object($conn->query($q));
                echo "Witaj $user->imie $user->nazwisko. Twoja rola to $user->rola.<br>";
            };
        }else{
            $conn->close();
            header('Location: ./login.php');
        }
    ?>
    <a href="./logout.php">Wyloguj</a>
    <br>
    <form method="GET">
        <select name="kolor">
            <option value="all" selected>wszystkie</option>
            <?php
                $kolory = $conn->query("SELECT DISTINCT `kolor` FROM `samochody`");
                while($obj = mysqli_fetch_object($kolory)){
                    echo "<option value='$obj->kolor'>$obj->kolor</option>";
                }
            ?>
        </select>
        <input type="submit" value="wyświetl">
    </form>
            <table>
                <?php
                    if(isset($_GET['kolor'])&&$_GET['kolor']!='all'){
                        $auta = $conn->query("SELECT * FROM `samochody` WHERE `kolor` LIKE '".$_GET['kolor']."'");
                    }else{
                        $auta = $conn->query("SELECT * FROM `samochody`");
                    }
                    $delete = "";
                    echo "<tr><th>Marka</th><th>Model</th><th>Rocznik</th><th>Kolor</th><th>Stan</th>";
                    if($user->rola=="Korzeń"){
                        echo "<th></th>";
                    };
                    echo "</tr>";
                    while($obj = mysqli_fetch_object($auta)){
                        if($user->rola=="Korzeń"){
                            $delete="<td><a href='./deleteCar.php?id=$obj->id'>Usuń</a></td>";
                        };
                        echo "<tr><td>$obj->marka</td><td>$obj->model</td><td>$obj->rocznik</td><td>$obj->kolor</td><td>$obj->stan</td>$delete</tr>";
                    }
                ?>
            </table>
       <br>
       <?php
       
            if($user->rola=="Korzeń"){
                ?>
                    <form method="POST" action="addCar.php">
                        <h2>Dodaj nowy samochód</h2>
                        <label for="addMarka">Marka: </label><input type="text" name="addMarka"><br>
                        <label for="addModel">Model: </label><input type="text" name="addModel"><br>
                        <label for="addRocznik">Rocznik: </label><input type="number" name="addRocznik"><br>
                        <label for="addKolor">Kolor: </label><input type="text" name="addKolor"><br>
                        <label for="addStan">Stan: </label><input type="text" name="addStan"><br>
                        <input type="submit" value="Dodaj" name="addCar">
                    </form>
                <?php

            }
            $conn->close();

       ?>         
</body>
</html>
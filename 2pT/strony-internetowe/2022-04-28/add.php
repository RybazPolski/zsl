<?php

    if(!isset($_POST["city"])||empty($_POST["city"])||!isset($_POST["adress"])||empty($_POST["adress"])||!isset($_POST["hours"])||empty($_POST["hours"])){
        header("Location: logowanie.php");
    }else{
        $city = $_POST['city']; 
        $adress = $_POST['adress'];
        $hours = $_POST['hours'];
        $hours = explode("-",$hours);
        $open = $hours[0]; 
        $closed = $hours[1]; 
        echo "Miasto: $city<br>Adres: $adress<br>Otwarcie: $open<br>Zamknięcie: $closed";
        $conn = mysqli_connect('localhost','root','','Lokalizator');
        mysqli_set_charset($conn,'utf8');
        $q = "INSERT INTO `miejsca`(`Miasto`,`Adres`,`Otwarcie`,`Zamkniecie`) VALUES ('$city','$adress','$open','$closed')";
        
        if(!mysqli_query($conn,$q)){
            echo mysqli_error($conn);
            mysqli_close($conn);
            // header("Location: create.php");
        }else{
            mysqli_close($conn);
            session_start();
            $_SESSION['city'] = $city;
            header("Location: logowanie.php");
        }
    }


?>
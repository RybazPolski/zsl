<?php

ini_set("display_errors",1);
session_start();

if(isset($_SESSION['login']) && isset($_SESSION['pwd'])){
    $login = $_SESSION['login'];
    $pwd = $_SESSION['pwd'];
    $conn=new mysqli('localhost','ryba','','sesja');
    $q = "SELECT * FROM `USER` WHERE `login`='$login' && `haslo`='$pwd'";
    if($conn->query($q)->num_rows==1){
        $user = mysqli_fetch_object($conn->query($q));
        if($user->rola=="Korzeń"){
            if(isset($_POST['addCar'])){
                $conn->query("INSERT INTO `samochody`(`marka`,`model`,`rocznik`,`kolor`,`stan`) VALUES ('".$_POST['addMarka']."','".$_POST['addModel']."',".$_POST['addRocznik'].",'".$_POST['addKolor']."','".$_POST['addStan']."')");
                header("Location: ./");
            };
        }
    }
}
$conn->close();
header('Location: ./index.php');


?>
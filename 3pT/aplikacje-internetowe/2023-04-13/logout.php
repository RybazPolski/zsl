<?php
    session_start();
    unset($_SESSION['login']);
    unset($_SESSION['pwd']);
    header('Location: ./login.php');
?>
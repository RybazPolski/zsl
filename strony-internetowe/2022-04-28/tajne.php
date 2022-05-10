<?php
session_start();
if(isset($_SESSION['zalogowany'])){
    echo 'jest dostęp :)';
}else{
    echo 'brak dostępu :(';
}
?>
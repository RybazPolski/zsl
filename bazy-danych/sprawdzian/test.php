<?php

    $conn = mysqli_connect('localhost','antek05B','zaq1','itaka');
    $q = "ALTER TABLE `osoby` DROP COLUMN `1234`";
    echo mysqli_error($conn);
    mysqli_query($conn,$q);
    mysqli_close($conn);

?>

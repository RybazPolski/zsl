<?php

    $to = "julianryba@interia.pl";
    $from = "no.reply@porn.hub.pl";
    $fromName = "Automatic Response";
    $subject = "Aktywacja konta $to";
    $message = "Potwierdź aktywację konta podając następujący kod: <b>JPII2137</b> pod adresem <a href='ryba.epizy.com/poligon'>https://porn.hub.pl/account-activation</a>";
    $headers = "From: \"$fromName\" <$from>";
    // /*
    echo mail("<$to>",$subject,$message,$headers) ? "Success" : "Failure";
    echo "<br>";
    // */



?> 
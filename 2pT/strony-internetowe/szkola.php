<?php
    $conn = mysqli_connect("localhost","root","","szkola1");
    $q = "SELECT *, year(`data_urodzenia`) AS `rok` FROM `uczniowie`";
    $res = mysqli_query($conn,$q);
    echo "<table><tr><th>ID</th><th>Imie</th><th>Nazwisko</th><th>Klasa</th><th>Data urodzenia</th><th>Które urodziny</th></tr>";
    while($rec=mysqli_fetch_array($res)){
        echo "<tr><td>".$rec['Id']."</td><td>".$rec['imie']."</td><td>".$rec['nazwisko']."</td><td>".$rec['klasa']."</td><td>".$rec['data_urodzenia']."</td><td>".date('Y')-$rec['rok']."</td></tr>";

        
    }
    echo "</table>";
?>
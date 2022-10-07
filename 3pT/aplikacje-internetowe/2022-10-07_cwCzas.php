<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania czas</title>
</head>
<body>
    <?php
        $start = time();
        for($i=1;$i<=999999999;$i++){
        };
        $czas = time()-$start;
        echo "Generowanie strony trwało ".$czas." sekund<br>";

        echo date("d.m.Y h:i")."<br>";
        echo date("d.m.Y h:i",time()+strtotime("+3 month"))."<br>";

        function sameDay($t1, $t2){
            if(date("d.m.Y",$t1)==date("d.m.Y",$t2)){
                return true;
            }else{
                return false;
            }
        }
    ?>
</body>
</html>
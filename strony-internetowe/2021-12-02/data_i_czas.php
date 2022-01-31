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

    function miesiac($m){
        switch($m){
            case 1:
                return "stycznia";
                break;
            case 2:
                return "lutego";
                break;
            case 3:
                return "marca";
                break;
            case 4:
                return "kwietnia";
                break;
            case 5:
                return "maja";
                break;
            case 6:
                return "czerwca";
                break;
            case 7:
                return "lipca";
                break;
            case 8:
                return "sierpnia";
                break;
            case 9:
                return "września";
                break;
            case 10:
                return "października";
                break;
            case 11:
                return "listopada";
                break;
            case 12:
                return "grudnia";
                break;
            default:
                return date('M');
                break;
        }
    }

    echo "Dzisiaj jest: ".date('d')." ".miesiac(date('m'))." ".date('Y');
    ?>
</body>
</html>
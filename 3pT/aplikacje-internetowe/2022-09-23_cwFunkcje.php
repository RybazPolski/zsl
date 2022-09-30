<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania funkcje</title>
</head>
<body>
    <?php

        //zadanie 1
        function lie(){
            echo "Bardzo lubię PHP<br>";
        }
        for($i=0;$i<10;$i++){
            lie();
        }

        //zadanie 2
        function primeLess100($n){
            if($n<100 && $n>1){
                if($n==2){
                    return 1;
                }else{
                    for($i=2;$i<$n;$i++){
                        if($n%$i==0){
                            return 0;
                        }
                    }
                    return 1;
                }
            }else{
                return 0;
            }
        }

        echo "99 -> ".primeLess100(99)."<br>";
        echo "1 -> ".primeLess100(1)."<br>";
        echo "100 -> ".primeLess100(100)."<br>";
        echo "101 -> ".primeLess100(101)."<br>";
        echo "2 -> ".primeLess100(2)."<br>";
        echo "13 -> ".primeLess100(13)."<br>";
        echo "39 -> ".primeLess100(39)."<br>";
    ?>
</body>
</html>
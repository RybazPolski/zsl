<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formsy</title>
</head>
<body>
    <form action="2021-09-23.php" method="POST">
        A: <input name="a" type="number"><br>
        B: <input name="b" type="number"><br>
        <input type="submit" value="Wyświetl ciąg"><br>
    </form>

    <?php
    
    if(!empty($_POST['a'])&&!empty($_POST['b'])){
        $a = $_POST['a'];
        $b = $_POST['b'];


        if($a>$b){
            for(;$a>=$b;$b++){
                echo "$b; ";
            }
        }else{
            for(;$b>=$a;$a++){
                echo "$a; ";
            }
        }

        $a = $_POST['a'];
        $b = $_POST['b'];
        echo "<br>";

        if($a>$b){
            do{
                echo "$b; ";
                $b++;
            }while($a >= $b);    
        }else{
            do{
                echo "$a; ";
                $a++;
            }while($b >= $a);
    
        }

        $a = $_POST['a'];
        $b = $_POST['b'];
        echo "<br>";

        if($a>$b){
            while($a >= $b){
                echo "$b; ";
                $b++;
            };    
        }else{
            while($b >= $a){
                echo "$a; ";
                $a++;
            };
    
        }

    }else{
        echo "<span style='color:red;'>Czy podano wszystkie wartości?</span>";;
    }
    
    
    ?>
</body>
</html>
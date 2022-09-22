<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>While</title>
</head>
<body>
    <!-- <form action="2021-10-04.php" method="$_GET">
        Podaj znak:<br><input type="text" name="string"><br><br>
        Podaj ilość:<br><input type="number" name="repeat"><br><br>
        <input value="Potwierdź" type="submit"> 
    </form> -->
    
    <?php
        // if(!empty($_GET["string"])){
        //     @$string=$_GET["string"];
        // }

        // if(!empty($_GET["repeat"])){
        //     @$repeat=$_GET["repeat"];
        // }
        // $i = 1;

        // while($i<=$repeat){
        //     echo "$i. $string<br>";
        //     $i++;
        // }
        
        // $i = 1;

        // do{
        //     echo "$i. $string<br>";
        //     $i++;
        // }while($i<=$repeat);

        do{
            $random = rand(0,10);
            echo $random."<br>";
        }while($random!=0);
    
    ?>
</body>
</html>
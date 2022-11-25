<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Powtórka</title>
</head>
<style>
    table, tr,th, td{
        border:1px solid black; border-collapse: collapse;
    }
    th{
        background-color: #dddddd;
    }
    .chess tr td{
        height: 30px;
        width: 30px;
    }
</style>
<body>

    <?php
    ini_set('display_errors', 1);
        /*
        $a = 15;
        echo $a."<br>";
        echo (-$a)."<br>";
        echo ($a+3)."<br>";
        echo ($a-5)."<br>";
        echo ($a*2)."<br>";
        echo ($a/5)."<br>";
        echo ($a%2)."<br>";
        echo ($a**3)."<br>";
        echo "Wartość zmiennej \$a wynosi: $a i już się nie zmieni.<br>";
        */


        /*
        $n1 = 12; $n2 = 4; $n3 = 31; $bday = "1988-10-20"; $char = "1";

        echo "Liczba $n1 jest ".(!$n1%2?"parzysta":"nieparzysta")."<br>";
        echo "Liczba $n1 ".($n1%$n2?"nie":"")." jest podzielna przez $n2<br>";
        echo "Liczba $n1 jest ".($n1<0?"ujemna":($n1==0?"równa 0":"dodatnia"))."<br>";
        echo max([$n1,$n2,$n3])."<br>";
        $bday = strtotime($bday);
        $minAdult = strtotime('+18 years', $bday);
        echo (time()>$minAdult ? "pełnoletni":"niepełnoletni")."<br>";
        echo (ctype_lower($char)? "mała litera":(ctype_upper($char)? "wielka litera":(ctype_alnum($char)? "cyfra":"inny znak")))."<br>";
        */

        /*
        for($i=1;$i<=10;$i++){
            echo "$i ";
        };
        echo "<br>";
        for($i=10;$i>=1;$i--){
            echo "$i ";
        };
        echo "<br>";
        $sum = 0;
        for($i=1;$i<=10;$i++){
            $sum+=$i;
        };
        echo "$sum<br>";
        for($i=1;$i<=10;$i++){
            echo $i*2 ." ";
        };
        echo "<br>";
        $X = 12;
        $Y = 3000;
        $bal = 0;
        for($i=1;$i<=$X;$i++){
            $bal+=$Y;
            $bal *=1.08;
        };
        echo "$bal<br>";
        */
        
        /*
        $sum1 = 0;
        for($i=1;$i<=100;$i++){
            $sum1+= 5+(10*($i-1));
        };
        echo "$sum1<br>";

        $X = 3; $Y = 3; $Z = 1;
        $sum2 = 0;
        for($i=1;$i<=$Y;$i++){
            if($X>0){
                $sum2 += $X;
                $X -= $Z;
            }
        };
        echo "$sum2<br>";

        $N = 10; $X = 5; $Y=10;
        $sum3 = 0;
        for($i=1;$i<=$N;$i++){
            echo $X+($Y*($i-1))." ";
        };
        echo "<br>";     
        
        $X = 3; $silnia=1;
        while($X>1){
            $silnia *= $X;
            $X--;
        };
        echo "$silnia<br>";     
        */
        /*
        $tab1 = [7,3,1,6,9,5,4,10,2,2];
        echo $tab1[4]."<br>";
        $tab1[6] = 12;
        print_r($tab1);
        echo "<br>";
        $tab2 = new ArrayObject($tab1);
        print_r($tab2);
        $tab3 = new ArrayObject($tab1);
        foreach($tab3 as $i => &$el){
            $el = $tab1[$i]+$tab2[$i];
        }
        print_r($tab3);
        foreach($tab2 as $i => &$el){
            $el = $tab1[sizeOf($tab1)-$i-1];
        }
        print_r($tab2);
        */
        
        /*
        $tab1 = array_fill(0,100,0);
        foreach($tab1 as $i => &$el){
            $el = 3 + ($i-1)*3;
        };
        print_r($tab1); echo "<hr>";
        foreach($tab1 as $i => &$el){
            $el = 2**($i+1);
        };
        print_r($tab1); echo "<hr>";
        $avg = 0;
        foreach($tab1 as $i => &$el){
            $avg += $el;
        };
        echo $avg/sizeof($tab1)."<hr>";
        $count = 0;
        foreach($tab1 as $i => &$el){
            $el%512 ?: $count++;
        };
        echo $count."<hr>";
        foreach($tab1 as $i => &$el){
            echo $i%2 ? "$el ":"";
        };
        echo $count."<hr>";
        $a = 313;
        $closest = 2;
        foreach($tab1 as $i => &$el){
            $closest = abs($el-$a)<abs($closest-$a)? $el : $closest;
        };
        echo $closest."<hr>";
        */

        function STRARSZY($bday1,$bday2){
            $diff = strtotime($bday1)-strtotime($bday2);
            if($diff<0){
                echo "Pierwsza osoba jest starsza<br>";
            }else if($diff>0){
                echo "Druga osoba jest starsza<br>";
            }else{
                echo "Są w tym samym wieku<br>";
            }
        }
        STRARSZY("2006-10-28","1988-10-20");

        function SZYFR($str){
            $szyfred = "";
            for($i = 0;$i<strlen($str);$i++){
                if(ctype_alpha($str[$i])){
                    $newChar = chr(ord($str[$i])+2);
                    
                    if(ord($newChar) > 122 || (ord($newChar) > 90 && ord($newChar) < 97)){
                        $newChar = chr(ord($newChar)-26);
                    }
                    $szyfred .= $newChar;
                }else{
                    $szyfred .= $str[$i];
                }
            }
            return $szyfred;
        }

        function DESZYFR($str){
            $szyfred = "";
            for($i = 0;$i<strlen($str);$i++){
                if(ctype_alpha($str[$i])){
                    $newChar = chr(ord($str[$i])-2);
                    
                    if(ord($newChar) < 65 || ord($newChar) < 97 && ord($newChar) > 90){
                        $newChar = chr(ord($newChar)+26);
                    }
                    $szyfred .= $newChar;
                }else{
                    $szyfred .= $str[$i];
                }
            }
            return $szyfred;
        }
        echo SZYFR("xyz");
        echo "<br>";
        echo DESZYFR(SZYFR("xyz"));
        ?> 
</body>
</html>

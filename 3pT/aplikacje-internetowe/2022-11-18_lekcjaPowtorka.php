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

use function PHPSTORM_META\map;

        echo "I'll learn PHP<br>";
        echo "C:\\xampp\\htdocs<br>";
        echo "<hr>";
    ?>
        <form>
        Podaj imie: <input type="text" name="imie"> <input type="submit" value="Prześlij">
        </form>
    <?php
        if(isset($_GET['imie'])){
            echo "Imie: ".$_GET['imie'];
        }
        echo "<hr>";
        $imie = "Stefan";
        $pensja = 4600;
        ?>
        <table style='border:1px solid black; border-collapse: collapse;'>
            <tr style='border:1px solid black; border-collapse: collapse;'><td style='color:blue'>Imię</td><td style='color:red'>Pensja</td></tr>
            <tr style='border:1px solid black; border-collapse: collapse;'><td style='color:blue'><?php echo $imie; ?></td><td style='color:red'><?php echo $pensja;?></td></tr>
        </table>
        <?php
        echo "<hr>";
        $n = 27;
        for($i=40; $i>=10; $i-=10){
            if($n > $i){
                echo "$n większe od $i";
                break;
            }
        }
        echo "<hr>";
        $a = [6,3];
        $b = [3,2];
        $c = [12,6];
        $d = [6,4];
        $ab = ($b[0]-$a[0])/($b[1]-$a[1]);
        $cd = ($d[0]-$c[0])/($d[1]-$c[1]);
        if($ab == $cd){
            echo "Równoległe";
        }else{
            echo "Równoległen't";
        }
        echo "<hr>";
        // class Circle{
        //     var $r, $S;
        //     function __construct($r, $S)
        //     {
        //         $this->r=$r;
        //         $this->S=$S;
        //     }
        // }
        // $k1 = new Circle(1, 20);
        // $k2 = new Circle(1, 20);
        // if(abs($k1->S-$k2->S)==abs($k1->r-$k2->r))
        echo "A z resztą, walić to :)";
        echo "<hr>";
        for($i=1,$str="abc";$i<=5;$i++,$str++){
            echo "$str<br>";
        };

        echo "<hr>";
        $lines = file("https://google.com");
        foreach ($lines as $line){
            echo htmlspecialchars($line)."<br>";
        }
        echo "<hr>";
    ?>
    <table>
        <?php
            for($i=0;$i<=10;$i++){
                echo "<tr>";
                if(!$i){
                    for($j=0;$j<=10;$j++){
                        if(!$j){echo "<th></th>";}else{echo "<th>".$j."</th>";}
                    }  
                }else{
                    for($j=0;$j<=10;$j++){
                        if(!$j){
                            echo "<th>".($i)."</th>";
                        }else{
                            echo "<td>".$j*$i."</td>";
                        }
                    }
                }
                echo "</tr>";
            }
            
        ?>
    </table>
    <table class=".chess">
        <?php
            echo "<hr>";
            for($i=1;$i<=300;$i++){
                echo "<tr>";
                for($j=1;$j<=300;$j++){

                    echo "<td style='height:30px;width:30px;background-color:";
                    echo (($i+$j)%2)?"black":"white";
                    echo "'></td>";
                } 
                echo "</tr>";
            }
        ?>
    </table>
    <?php
        echo "<hr>";
        function isPrime($num){
            if($num!=2){
                for($i=2;$i<=sqrt($num);$i++){
                    if($num%$i==0){
                        return false;
                    }
                }
            }
            return true;
        }
        $n = 10;
        for($j=1,$i=1;$i<=$n;$i++){
            $j++;
            while(!isPrime($j)){
                $j++;
            }
            echo $j."<br>";
        }
        echo "<hr>";
        
        $len = 23;
        $all = [2, 3, 4, 7, 8, 45, 60, 77];
        $odd = [];
        $j = 0;
        $i = 0;
        while($i<$len){
            if($all[$j%count($all)]%2==1){
                $odd[$i] = $all[$j%count($all)];
                $i++;
            }
            $j++;
        }   
        print_r($odd);
        echo "<hr>";
        $tab = array("Bartek"=>"3","Jakub"=>"1","Wojtek"=>"4","Adam"=>"2");
        $tabs = [$tab,$tab,$tab,$tab];
        ksort($tabs[0]);
        krsort($tabs[1]);
        asort($tabs[2]);
        arsort($tabs[3]);
        print_r($tabs[0]);
        echo "<br>";
        print_r($tabs[1]);
        echo "<br>";
        print_r($tabs[2]);
        echo "<br>";
        print_r($tabs[3]);
        echo "<hr>";
        
        function randOf($arr){
            return $arr[rand(1,count($arr))-1];
        };
        function randPwd(){
            $pwd = "";
            $pwd.=randOf(range('A','Z`'));
            for($i=0;$i<5;$i++){
                $pwd.=randOf(range('a','z'));
            }
            for($i=0;$i<3;$i++){
                $pwd.=randOf(range(0,9));
            }
            for($i=0;$i<2;$i++){
                $pwd.=randOf(array_merge(range("!","/"),range(":","@"),range("[","`"),range("{","~")));
            }
            return str_shuffle($pwd);
        }
        echo randPwd();
        
        echo "<hr>";
        class Calculator{
            var $a, $b;
            function __construct($a,$b){
                $this->a = $a;
                $this->b = $b;
            }
            function add(){
                return $this->a+$this->b;
            }
            function sub(){
                return $this->a-$this->b;
            }
            function mul(){
                return $this->a*$this->b;
            }
            function div(){
                return $this->b==0?"error":$this->a/$this->b;
            }
        }
        $calc = new Calculator(12,4);
        echo $calc->add()."<br>";
        echo $calc->sub()."<br>";
        echo $calc->mul()."<br>";
        echo $calc->div()."<br>";

        echo "<hr>";
        class Tablica{
            var $tab;
            function __construct($tab){
                $this->tab=$tab;
            }
            function up(){
                sort($this->tab);
                print_r($this->tab);
            }
            function down(){
                rsort($this->tab);
                print_r($this->tab);
               
            }    
        }
        $tab = range(1,20);
        shuffle($tab);
        $tablica = new Tablica($tab);
        print_r($tablica->tab);
        echo "<br>";
        $tablica->up();
        echo "<br>";
        $tablica->down();
        echo "<hr>";
    ?>
    <form>
        <input type="date" name="date"><input type="submit" value="Czy to weekend?" name="weekend">
    </form>
    <?php
        if(isset($_GET['date'])&&!empty($_GET['date'])&&isset($_GET['weekend'])){
            $day = date('D',strtotime($_GET['date']));
            echo $day=="Sat"||$day=="Sun"?"Tak":"Nie";
        };
        echo "<hr>";
        $str1 = "Test";
        $str2 = "est";
        if(str_ends_with($str1,$str2)) echo "true";

        echo "<hr>";
        $str = "Python jest lepszy niż PHP";
        echo $str."<br>";
        // echo strtr("Python jest lepszy niż PHP","PHP","Python");
        $str = str_replace("Python","Py7h0n",$str);
        echo $str."<br>";
        $str = str_replace("PHP","Python",$str);
        echo $str."<br>";
        $str = str_replace("Py7h0n","PHP",$str);
        echo $str."<br>";
        ?>
</body>
</html>

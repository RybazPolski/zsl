<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania obiekty</title>
</head>
<body>
    <?php
        class Person{
            var $name, $surname, $age, $balance;

            function __construct($name='Mirosław', $surname='Szyper', $age=35, $balance=45000)
            {
                $this->name=$name;
                $this->surname=$surname;
                $this->age=$age;
                $this->balance=$balance;
            }

            function setAge($age){
                $this->age=$age;
            }
            function setBalance($balance){
                $this->balance=$balance;
            }

            function showData(){
                echo "<div>Imię i nazwisko: $this->name $this->surname<br>Wiek: $this->age<br>Stan konta: $this->balance<div><br>";
            }

            function Kowalski_premia(){
                if($this->surname=="Kowalski"){
                    $this->setBalance($this->age*1000);
                }
            }   
        }
        
        $szyper = new Person();
        $szyper->showData();
        $szyper->setBalance(50000);
        $szyper->showData();

        $kowalski = new Person("Jan","Kowalski",20,15000);
        $kowalski->showData();
        $kowalski->setAge(21);
        $kowalski->Kowalski_premia();
        $kowalski->showData();
?>
</body>
</html>
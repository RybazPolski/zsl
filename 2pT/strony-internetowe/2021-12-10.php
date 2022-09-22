<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularz</title>
</head>

<body>
    <form method="POST">
        Jak cię zwą? <br>> <input type="text" name="imie"><br> Jaka twa godność, towarzyszu? <br>> <input type="text" name="nazwisko"><br>
        <input type="submit" name="submit" value="Tak się zwę.">
    </form>
    <div id="formSecurity">
        <?php

            function formSet($name){
                if(isset($_POST[$name]) && !empty($_POST[$name])){
                    return true;
                }else{
                    return false;
                }
            };

            if(formSet("imie") && formSet("nazwisko")){
                $imie = $_POST['imie'];
                $nazwisko = $_POST['nazwisko'];
                echo "Witaj $imie $nazwisko";
            }else if(isset($_POST['imie']) && !empty($_POST['imie'])){
                $imie = $_POST['imie'];
                echo "Witaj $imie niepełnomówny!";
            }else if(isset($_POST['nazwisko']) && !empty($_POST['nazwisko'])){
                $nazwisko = $_POST['nazwisko'];
                echo "Witaj $nazwisko niepełnomówny!";
            }else{
                echo "Witaj niemy!";
            }
            
        ?>
    </div>
    <div id="pliki_i_Formularze">
        
    </div>
</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>
    <form method="post">
        <label for="login">login: </label><input type="text" name="login"><br>
        <label for="pwd1">hasło: </label><input type="password" name="pwd1"><br>
        <label for="pwd2">powtórz hasło: </label><input type="password" name="pwd2"><br>
        <input type="submit" value="Zapisz" name="submit">
    </form>
    <?php
        function checkField($name){
            return (isset($_POST[$name])&&!empty($_POST[$name]));
        }

        $conn = new mysqli('localhost','root','windows','psy');
        
        if(isset($_POST['submit'])){
            if(!checkField('login')||!checkField('pwd1')||!checkField('pwd2')){
                echo "<p>wypełnij wszystkie pola</p>";
            }elseif($conn->query("SELECT `id` FROM `uzytkownicy` WHERE `login`='".htmlentities($_POST['login'],ENT_QUOTES)."'")->num_rows){
                echo "<p>login występuje w bazie danych, konto nie zostało dodane</p>";
            }elseif($_POST['pwd1']!=$_POST['pwd2']){
                echo "<p>hasła nie są takie same, konto nie zostało dodane</p>";
            }else{
                if($conn->query("INSERT INTO `uzytkownicy`(`login`,`haslo`) VALUES ('".htmlentities($_POST['login'],ENT_QUOTES)."','".sha1($_POST['pwd1'])."')")){
                    echo "<p>Konto zostało dodane</p>";
                }
            }
        }
        
        $conn->close();

    ?>
</body>
</html>
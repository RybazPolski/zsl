<!--

‒ Napisany w języku PHP
‒ Skrypt łączy się z serwerem bazy danych na localhost, użytkownik root bez hasła, baza danych
o nazwie psy
‒ Po wykonaniu operacji na bazie danych skrypt zamyka połączenie z serwerem
‒ Skrypt obsługuje błędy danych formularza i wyświetla komunikaty w paragrafie (akapicie):
‒ „wypełnij wszystkie pola”, jeżeli nie wypełniono przynajmniej jednego pola formularza
‒ „login występuje w bazie danych, konto nie zostało dodane”, jeżeli podany login znajduje się
w bazie danych, do sprawdzenia należy posłużyć się zapytaniem 3
‒ „hasła nie są takie same, konto nie zostało dodane”, jeżeli hasła wpisane do pola „hasło” oraz
pola „powtórz hasło” różnią się
‒ W przypadku poprawnych danych skrypt
‒ Szyfruje hasło algorytmem US Secure Hash Algorithm 1
‒ Wysyła do bazy danych zapytanie 2 zmodyfikowane w ten sposób, że w polach login i haslo są
wpisane dane pobrane z formularza (hasło powinno być zaszyfrowane)
‒ Wyświetla w paragrafie komunikat „Konto zostało dodane”

-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>
    <form action="./2022-11-07_logowanie.php" method="post">
        <label for="login">Login:</label><br><input type="text" name="login"><br>
        <label for="pwd1">Hasło:</label><br><input type="password" name="pwd1"><br>
        <label for="pwd2">Powtórz hasło:</label><br><input type="password" name="pwd2"><br>
        <input type="submit" value="Zapisz" name="submit">
    </form>
    <?php
        function checkField($name){
            return (isset($_POST[$name])&&!empty($_POST[$name]));
        }

        $conn = new mysqli('localhost','root','windows','psy');
        
        if(isset($_POST['submit'])){
            if(!checkField('login')||!checkField('pwd1')||!checkField('pwd2')){
                echo "<p style='color:red;'>wypełnij wszystkie pola</p>";
            }elseif($conn->query("SELECT `id` FROM `uzytkownicy` WHERE `login`='".htmlentities($_POST['login'],ENT_QUOTES)."'")->num_rows){
                echo "<p style='color:red;'>login występuje w bazie danych, konto nie zostało dodane</p>";
            }elseif($_POST['pwd1']!=$_POST['pwd2']){
                echo "<p style='color:red;'>hasła nie są takie same, konto nie zostało dodane</p>";
            }else{
                if($conn->query("INSERT INTO `uzytkownicy`(`login`,`haslo`) VALUES ('".htmlentities($_POST['login'],ENT_QUOTES)."','".sha1($_POST['pwd1'])."')")){
                    echo "<p style='color:green;'>Konto zostało dodane</p>";
                }else{
                    echo "<p style='color:red;'>błąd techniczny, konto nie zostało dodane</p>";
                }
            }
        }
        
        $conn->close();

    ?>
</body>
</html>

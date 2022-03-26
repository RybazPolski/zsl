<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lokalizator</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <h1>Cześć, jestem Lokalizatorem!</h1>
    <p style="color:blue;">Powiem ci jaki jest adres najbliższego szukanego punktu w Twoim mieście.</p>
    <form action="./search.php" method="POST">
        <label style="color: gray;">Tutaj wpisz miasto.</label><br>
        <input id="search" type="text" name="city" required><br>
        <button style="margin-left:10px;">Sprawdź</button>
    </form>

</body>
</html>
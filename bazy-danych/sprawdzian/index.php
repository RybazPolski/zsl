<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <?php
    
        $conn = mysqli_connect('localhost','root','','itaka');
        $q = "SELECT `imie`,`nazwisko` FROM `osoby` WHERE `imie` NOT LIKE '%a%'";
        $res = mysqli_query($conn,$q); 
        while($rec = mysqli_fetch_row($res)){
            $imie = $rec[0];
            $nazwisko = $rec[1];
            echo "<h3>imie:$imie nazwisko:$nazwisko</h3>";
        }
        mysqli_close($conn);
    ?>
</body>
</html>
<style>
        table, td, th{
            border: 2px solid black; border-collapse:collapse;
        }
    </style>
<?php
$conn = new mysqli('localhost','root','','Powtorka');
$res = $conn->query("SELECT * FROM `dane`");
echo "<table><tr><th>Id</th><th>Imie</th><th>Klasa</th><th>Kolor</th><th>Data</th></tr>";
while($obj = $res->fetch_object()){
    echo "<tr><td>$obj->Id</td><td>$obj->Imie</td><td>$obj->Klasa</td><td>$obj->Kolor</td><td>$obj->Data</td></tr>";
}
echo "</table>";
$conn->close();

?>
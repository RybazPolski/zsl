<?php
	setcookie("YouLookFamiliar","E",time()+3600);
	if(!isset($_COOKIE['YouLookFamiliar'])){
		echo "<p><i>Dzień dobry! Sprawdź regulamin naszej strony</i></p>";
	}else{
		echo "<p><strong>Miło nam, że znowu nas odwiedziłeś</strong></p>";
		setcookie("YouLookFamiliar","E",time()+3600);
	}


	$conn = new mysqli('localhost','root','','samoloty');
	
	$res = $conn->query("SELECT `id`,`nr_rejsu`,`czas`,`kierunek`,`status_lotu` FROM `odloty` ORDER BY `czas` DESC;");
	
	echo "<table style='border:1px solid black'>";
	while($obj = $res->fetch_object()){
		echo "<tr><td>$obj->id</td><td>$obj->nr_rejsu</td><td>$obj->czas</td><td>$obj->kierunek</td><td>$obj->status_lotu</td></tr>";
	};
	echo "</table>";
	

?>
<html>
	<head>
		<meta charset='utf8'>
		<title>Rybarczyk</title>
		<style>
			.f1{
				font-family: Arial;
			}
			.f2{
				font-family: Ani;
			}
			.f3{
				font-family: "Bitstream Charter";
			}
		</style>
	</head>
	<body>
		<h2>Dzisiejsze promocje</h2>
		<table>
			<tr><th>NUMER</th><th>NAZWA PODZESPOŁU</th><th>OPIS</th><th>CENA</th></tr>
			<?php
				$conn = new mysqli("localhost","root","","sklep");
				$res = $conn->query("SELECT `id`,`nazwa`,`opis`,`cena` FROM `podzespoly` WHERE `cena`<1000");
				while($obj = $res->fetch_object()){
					$obj->nazwa = strtoupper($obj->nazwa); 
					$obj->opis = strtolower($obj->opis); 
					echo "<tr><td>$obj->id</td><td>$obj->nazwa</td><td>$obj->opis</td><td>$obj->cena</td></tr>";
				};
				$conn->close();
			?>
		</table>
		<hr>
		<form>
			<input type='text' name='name' placeholder='Wprowadź imię'><br>
			<input type='radio' name='font' value='1'>Arial<br>
			<input type='radio' name='font' value='2'>Ani<br>
			<input type='radio' name='font' value='3'>Bitstream Charter<br>
			<input type='submit'><br>
		</from>
		<?php
			if(isset($_GET['name'])&&!empty($_GET['name'])&&isset($_GET['font'])&&!empty($_GET['font'])){
				echo "<span class='f".$_GET['font']."' style='color:red;'>".$_GET['name']."</span><br>";
				echo substr($_GET['name'],0,3);
			}
		?>
		<hr>
		<?php
			$date = date("Y-m-d");
			$time = date("H:i:s");
			echo "Dzisiaj jest $date, godzina $time";
		?>
	</body>
</html>

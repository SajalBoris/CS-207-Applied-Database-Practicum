<?php
	include('config.php');
	$sql1 = "CREATE VIEW NearByShops AS SELECT * FROM shop_list WHERE ABS(latX - $_SESSION['latX']) <= 0.1 AND ABS(latY - $_SESSION['latY']) <= 0.1";
	
	
?>

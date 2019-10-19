<?php
	include('session.php');
?>

<html>

	<style>
		a.button
		{
			-webkit-appearance: button;
			-moz-appearance: button;
			appearance: button;
		
			text-dexoration: none;
			color: initial;
		}
	</style>

	<head>
	</head>
	
	<body>
		<h2>Yay! You have successfully logged in <?php echo $login_session; ?></h2>
		<p><a href = "viewshop.php">View Shops</a></p>
		<p><a href = "logout.php">Sign Out</a></p>
	</body>
</html>

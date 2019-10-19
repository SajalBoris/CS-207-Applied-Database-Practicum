<?php
	include('config.php');
	session_start();
	
	$uid = $_POST['user_id'];
	$password = $_POST['pass'];
	
	$sql = "SELECT user_id FROM users WHERE user_id = '$uid' AND pass = '$password'";
	//echo $sql;
	$result = mysqli_query($db, $sql);
	
	$count = mysqli_num_rows($result);
	
	if($count == 1)
	{
		$_SESSION['login_user'] = $uid;
		
		header("location: viewshop.php");
	}
	else
	{
		header("location: ShopkeeperLogin.html");
	}
?>
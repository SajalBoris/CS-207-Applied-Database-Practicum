<?php
	include('session.php');
	$owner = $login_session;
	$name = $_POST['sname'];
	$addr = $_POST['addr'];
	$latX = $_POST['lat'];
	$latY = $_POST['lng'];
	$sid = mysqli_num_rows(mysqli_query($db, "SELECT * FROM shops_table"));
	$query = "INSERT INTO shops_table(Shop_id, Shop_Name, addr, lat, lng, owner) VALUES('$sid', '$name', '$addr', '$latX', '$latY', '$owner')";
	mysqli_query($db, $query);
	$query = "CREATE TABLE tabl".(string)($sid)."(product_id INT, qty INT, tag INT NOT NULL, sold INT NOT NULL)";
	mysqli_query($db, $query);

	$sql = "CREATE TABLE oid".(string)($sid)."(order_id INT NOT NULL PRIMARY KEY, status INT NOT NULL, timestamp DEFAULT CURRENT_TIMESTAMP)";
	mysqli_query($db, $sql);

	$sql = "CREATE TABLE ordershop".(string)($sid)."(order_id INT NOT NULL, product_id INT NOT NULL, qty INT NOT NULL)";
    mysqli_query($db, $sql);

	header("Location:viewshop.php");
?>
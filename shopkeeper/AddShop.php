<?php
	include('session.php');
    $name = $_POST['shop_name'];
    $phno = $_POST['phno'];
    $addr = $_POST['addr'];
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
	$sid = mysqli_num_rows(mysqli_query($db, "SELECT * FROM shops_table"));
    $query = "INSERT INTO shops_table(Shop_id, Shop_name, owner, addr, phno, lat, lng) VALUES('$sid', '$name', '$login_session', '$addr', '$phno', '$lat', '$lng')";
   // echo $query;
    mysqli_query($db, $query);
    $sql = "CREATE TABLE tabl".(string)$sid."( ".
    "product_id INT NOT NULL, ".
    "qty INT NOT NULL); ";
    mysqli_query($db, $sql);
	header("Location:welcome.php");
?>

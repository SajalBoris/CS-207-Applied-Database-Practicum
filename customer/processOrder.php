<?php
    include('config.php');
    session_start();
    $phno = $_POST['phno'];
    $order_id = mt_rand(1, 100000000);
    $table_name = "oid".(string)($_SESSION['shop_id']);
    $sql = "INSERT INTO $table_name(order_id, status) VALUES('$order_id', '1')";
    $res = mysqli_query($db, $sql);
    $table_name = "ordershop".(string)($_SESSION]'shop_id']);
    $cookie = $_COOKIE['orderlist'];
    $cookie = stripslashes($cookie);
    $cartItems = json_decode($cartItems, true);
    $cnt = count($cartItems);
    for($i = 0; $i < $cnt; $i++)
    {
        $pid = $cartItems[$i]['id'];
        $qty = $cartItems[$i]['qty'];
        $sql = "INSERT INTO $table_name(order_id, product_id, qty) VALUES('$order_id', '$pid', '$qty')";
        mysqli_query($db, $sql);
    }
    $table_name = "globalorders";
    $sid = $_SESSION['shop_id'];
    $sql = "INSERT INTO $table_name(order_id, phno, shop_id, order_status) VALUES('$order_id', '$phno', '$sid', '1')";
    mysqli_query($db, $sql);
?>

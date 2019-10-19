<?php
    include('session.php');
    $order_id = $_POST['order_id'];
    $sid = $_SESSION['shop_id'];
    $table_name = "oid".(string)($sid);
    $sql = "UPDATE $table_name SET status = 2 WHERE order_id = $order_id";
    mysqli_query($db, $sql);
    $sql = "UPDATE globalorders SET order_status = 2 WHERE order_id = $order_id";
    mysqli_query($db, $sql);
    header("Location: currentOrders.php");
?>
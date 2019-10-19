<?php
    include('session.php');
    $order_id = $_POST['order_id'];
    $sid = $_SESSION['shop_id'];
    $pkey = $_POST['pkey'];
    $table_name = "oid".(string)($sid);
    $sql = "SELECT pkey FROM globalorders WHERE order_id  = $order_id";
    $res = mysqli_query($db, $sql);
    $row = mysqli_fetch_array($res);
    $rk = $row['pkey'];
    echo $rk;
    echo $pkey;
    if((string)$rk == (string)$pkey) 
    {
        echo "here1";
        $table_name = "ordershop".($sid);
        $sql = "SELECT * FROM $table_name WHERE order_id = $order_id";
        $res = mysqli_query($db, $sql);
        while($row = mysqli_fetch_array($res))
        {
            $pid = $row['product_id'];
            $tn = "tabl".(string)($sid);
            $qtyChange = $row['qty'];
            $sql = "UPDATE $tn SET qty = qty - $qtyChange, sold = sold + $qtyChange WHERE product_id = $pid";
            mysqli_query($db, $sql);
        }
        $table_name = "oid".(string)($sid);
        $sql = "UPDATE $table_name SET status = 3 WHERE order_id = $order_id";
        mysqli_query($db, $sql);
        $sql = "DELETE FROM globalorders WHERE order_id = $order_id";
        mysqli_query($db, $sql);
        header("Location: currentOrders.php");
    }
    else{
        header("Location: currentOrders.php");
        
    }
    
?>
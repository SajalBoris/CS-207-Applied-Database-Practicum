<?php
    include('session.php');
    $sid = $_SESSION['shop_id'];
    $table_name = "oid".(string)($sid);
    $sql = "SELECT order_id FROM $table_name WHERE status = 1";
    $res = mysqli_query($db, $sql);
    while($row = mysqli_fetch_row($res))
    {
        $order_id = $row['order_id'];
        $table_name = "ordershop".(string)($sid);
        $sql = "SELECT product_id FROM $table_name WHERE order_id = $order_id";
        $res2 = mysqli_query($db, $sql);
        echo "<table>";
        while($row = mysqli_fetch_row($res2))
        {
            $sql = "SELECT product_name FROM product_table WHERE product_id = $row['product_id']";
            $res3 = mysqli_query($db, $sql);
            $row2 = mysqli_fetch_array($res3);
            echo "<tr><td>$row2['product_name']</td></tr>";
        }
        echo "</table>";
    }
?>

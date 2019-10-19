<?php
    include('config.php');
    $phno = $_POST['phno'];
    $sql = "SELECT * FROM globalorders WHERE phno = $phno GROUP BY order_status";
    $res = mysqli_query($db, $sql);
    while($row = mysqli_fetch_array($res))
    {
        $table_name = "ordershop".(string)($row['shop_id']);
        $oid = $row['order_id'];
        $sql = "SELECT product_id, qty FROM $table_name WHERE order_id = $oid";
        $res2 = mysqli_query($db, $sql);
        echo "<table>";
        while($row2 = mysqli_fetch_array($res2))
        {
            $pid = $row2['product_id'];
            $sql = "SELECT product_name FROM product_table WHERE product_id = $pid";
            $res3 = mysqli_query($db, $sql);
            $row3 = mysqli_fetch_array($res3);
            $pn = $row3['product_name'];
            $qty = $row2['qty'];
            echo "<tr><td>$pn</td><td>$qty</td></tr>";
        }
        echo "</table>";
    }
?>

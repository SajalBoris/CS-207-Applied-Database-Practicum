<?php
    include('config.php');
    $sid = $_GET['id'];
    $table_name = "tabl".(string)($sid);
    $sql = "SELECT * FROM $table_name WHERE 1";
    $result = mysqli_query($db, $sql);

    $sql2 = "SELECT Shop_Name FROM $shops_table WHERE Shop_id = $sid";
    $result3 = mysqli_query($db , $sql2);
    $shopname = mysqli_fetch_array($result3)['Shop_Name'];

    if($result == false) 
    {
        echo "No rows found<br/>";
    }
    else
    {
        echo "<table>";
        while($row = mysqli_fetch_array($result))
        {
            $sql2 = "SELECT product_name FROM Product_Table WHERE product_id = ".$row['product_id'];
            $result2 = mysqli_query($db, $sql2);
            $row2 = mysqli_fetch_array($result2);
            $pn = $row2['product_name'];
            echo "<tr><td>".$pn."</td><td>".$row['qty']."</td></tr>";
        }
        echo "</table>";
    }
?>
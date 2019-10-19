<?php
    include('config.php');
    $cookie = $_COOKIE['orderlist'];
    $cookie = stripslashes($cookie);
    $cartItems = json_decode($cookie, true);
    $cnt = count($cartItems);
    echo "<table>";
    for($i = 0; $i < $cnt; $i++)
    {
       // echo $cartItems[$i]['id']." ".$cartItems[$i]['qty'];
        $pid = $cartItems[$i]['id'];
        $sql = "SELECT product_name FROM product_table WHERE product_id = $pid";
        $res = mysqli_query($db, $sql);
        $row = mysqli_fetch_array($res);
        $pn = $row['product_name'];
        echo "<tr>";
        echo "<td>".$pn."</td><td>".$cartItems[$i]['qty']."</td>";
        echo "</tr>";
    }
    echo "</table>";
    /*$arr = $_COOKIE['orderlist'];
    $_SESSION['orderlist'] = $arr;
    echo "<table>";
    foreach($_COOKIE['orderlist'] as $x => $x_value)
    {
        echo "<tr><td>$x</td><td>$x_value</td></tr>";
    }
    echo "</table>";*/
?>

<html>
    <a href = "processOrder.php">Checkout</a>
</html>

<?php
    include('config.php');
    /*$sql = "SELECT * FROM shops_table";
    $res = mysqli_query($db, $sql);
    $start = mysqli_num_rows($res) - 1;
    $min = 31.7741977;
    $max = 76.9856429;
    for($i = $start; $i < 150; $i++) 
    {
        $name = "user".(string)($i);
        $sn = "shop".(string)($i);
        $phno = mt_rand(1, 1000000);
        $addr = "some address".(string)($i);
        $lat = mt_rand(($min-0.01)*1000000, ($min+0.01)*1000000)/1000000;
        $lng = mt_rand(($max-0.01)*1000000, ($max+0.01)*1000000)/1000000;
        $sid =$i;
        $query = "INSERT INTO shops_table(Shop_id, Shop_name, owner, addr, phno, lat, lng) VALUES('$sid', '$sn', '$name', '$addr', '$phno', '$lat', '$lng')";
        mysqli_query($db, $query);
        $sql = "CREATE TABLE tabl".(string)$sid."( ".
        "product_id INT NOT NULL, ".
        "qty INT NOT NULL); ";
        mysqli_query($db, $sql);
    }
    //storelocator.php?lat=31.7741977&lng=76.9856429&radius=11*/
    /*for($i = 1; $i < 5; $i++)
    {
        $sql = "CREATE TABLE oid".(string)($i)."(order_id INT NOT NULL PRIMARY KEY, status INT NOT NULL)";
        mysqli_query($db, $sql);
    }*/
/*for($i = 5; $i < 150; $i++)
{
    $sql = "CREATE TABLE ordershop".(string)($i)."(order_id INT NOT NULL, product_id INT NOT NULL, qty INT NOT NULL)";
    mysqli_query($db, $sql);
}*/
for($i = 5; $i < 150; $i++)
{
    $table_name = "oid".(string)($i);
    $sql = "ALTER TABLE $table_name ADD timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() AFTER status";
    mysqli_query($db, $sql);
}
?>
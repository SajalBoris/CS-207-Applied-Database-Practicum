<?php
    include('config.php');
    $userLatX = $_POST['latX'];
    $userLatY = $_POST['latY'];
    $sql = "CREATE VIEW [Nearby Shops] AS SELECT shop_id, latX, latY FROM shops_table WHERE ABS('$userLatX' - latX) <= 0.1 AND ABS('$userLatY' - latY) <= 0.1";
    mysqli_query($db, $sql);
    $itemCount = $_POST['itemCount'];
    $boolArray = array();
    for($i = 0; $i < $itemCount; $i++)
    {
        
    }
?>

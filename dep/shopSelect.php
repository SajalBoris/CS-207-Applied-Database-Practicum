<?php
    include('config.php');
    $sql = "SELECT shop_id, shop_name, lat, lng, ( 3959 * acos( cos( radians('%s') ) * 
    cos( radians( lat ) ) * cos( radians( lng ) - radians('%s') ) + sin( radians('%s') ) * sin( radians( lat ) ) ) ) AS distance FROM shops HAVING distance < '%s' ORDER BY distance LIMIT 0 , 20";
?>

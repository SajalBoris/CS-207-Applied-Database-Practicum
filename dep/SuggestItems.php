<?php
    include('session.php');
    $name = $login_session;
    $item_name = $_POST['item_name'];
    $sql = "INSERT INTO suggested_items(uid, item_name) VALUES('$name', '$item_name')";
    mysqli_query($db, $sql);
?>

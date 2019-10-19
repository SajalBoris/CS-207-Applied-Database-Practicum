<?php
    session_start();
    $_SESSION['pid'] = $_POST['pid'];
    //echo $_SESSION['pid'];
    header('Location: showMap.php');
?>
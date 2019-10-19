<?php
include('session.php');
//echo $_SESSION['shop_id'];
?>
<html>
    <body>
        <form action = "AddItems.php" method = "POST">
            <input type = "text" name = "product_name" value = "Enter Product Name">
            <br/>
            <input type = "Submit" value = "Go!">
        </form>
    </body>
</html>

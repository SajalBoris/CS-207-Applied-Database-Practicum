<?php
    include('session.php');
    $sid = $_SESSION['shop_id'];
    //  echo $sid;
    $table_name = "oid".(string)($sid);
    $sql = "SELECT order_id , status FROM $table_name WHERE status = 1 OR status = 2";
    $res = mysqli_query($db, $sql);
    
?>


<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>Current Orders </title>

    <!-- Bootstrap core CSS -->
    <link href="./bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./dashboard.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  </head>

  <body>
  <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="http://getbootstrap.com/docs/4.0/examples/dashboard/#">Dashboard</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</header>

    <div class="container-fluid">
      <div class="row">
      <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="viewshop.php">Your Shops <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="analytics.php">Analytics</a>
        </li>
      </ul>

      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="currentOrders.php">Current Orders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Registerr.php">Add new Shop</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.php">Log Out</a>
        </li>
      </ul>
    </nav>

        <div role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Order List</h1>
             
             
                    <?php 
                            
                            while($row = mysqli_fetch_array($res))
                            {
                                $order_id = $row['order_id'];
                                $table_name = "ordershop".(string)($sid);
                                $sql = "SELECT product_id,qty FROM $table_name WHERE order_id = $order_id";
                                $res2 = mysqli_query($db, $sql);
                                //echo "<table>";
                                //echo $order_id;
                                    dispOrder($order_id , $res2 , $db , $row['status']);
                                //echo "</table>";
                            }

                    ?>


            </div>
            </div>
                        </div>
      
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="./popper.min.js"></script>
    <script src="./bootstrap.min.js"></script>
  
</body></html>

<?php

    function dispOrder($order_id  , $res2 , $db , $status)
    {
?>

                            <div style="border-top: 1px solid #eee;" class="panel panel-default">
                                <div class="panel-heading"> Order Id :  <?php echo $order_id; ?>  </div>
                                <?php
                                    if($status == 2)
                                    {
                                        ?>
                                        <div class = "panel-heading">
                                    <form action="po2.php" METHOD="POST">
                                    <input type="hidden" name="order_id" value="<?php echo $order_id ?>">
                                    <td><input placeholder="Customers Key" required="" name="pkey" style = "display: block; width: 10%; height: 34px; padding: 6px 12px;font-size: 14px; line-height: 1.42857143; color: #555;background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;" type="text" New Product="" value=" "><br></td>
                                    <td><input style = "background-color: #007bff ; color : #fff " class="btn btn-lg btn-default" type="submit" value = "Verify key" ></td>
                                    </form>
                                </div>

                                <?php
                                    }

                                    else
                                    {
                                        ?>
                                        <form action="po1.php" METHOD="POST">
                                        <input type="hidden" name="order_id" value="<?php echo $order_id; ?>">
                                        <input style = "background-color: #007bff ; color : #fff " class="btn btn-lg btn-default" type="submit" value = "Confirm Order" >
                                        </form>
                                        <?php
                                    }
                                ?>
                                <div class="table-responsive">
                                    <table style="border-bottom: 1px solid #eee;" class="table table-striped">
                                        <thead>
                                            <tr>
                                            <th>Product Id</th>
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                while($row = mysqli_fetch_array($res2))
                                                {
                                                    $ppp = $row['product_id'];
                                                    $qty = $row['qty'];
                                                    $sql = "SELECT product_name FROM product_table WHERE product_id = $ppp";
                                                    $res3 = mysqli_query($db, $sql);
                                                    $row2 = mysqli_fetch_array($res3);
                                                    $pnn = $row2['product_name'];
                                                    //echo "<tr><td>$pnn</td></tr>";
                                                    dispRow($ppp , $pnn , $qty);
                                                }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


<?php
    }

    function dispRow($product_id , $product_name , $qty)
    {
?>
            <tr>
                <td>  <?php echo $product_id; ?>  </td>
                <td>  <?php echo $product_name; ?>  </td>
                <td>  <?php echo $qty; ?>  </td>
            </tr>

<?php
    }
?>
<?php
    include('session.php');

    $sql = "";
    $go = 0;
    if(isset($_POST['grp'])) $go = 1;
    $so = $_POST['sort'];
    if($so == 1) $so = 0;
    else $so = 1;
    $table_name = "tabl".(string)($_SESSION['shop_id']);
    if($so == 0 && $go == 0) $sql = "SELECT product_id, qty, sold AS ts FROM $table_name ORDER BY ts";
    else if($so == 0 && $go == 1) $sql = "SELECT tag AS product_id, SUM(qty) AS qty, SUM(sold) AS ts FROM $table_name GROUP BY tag ORDER BY ts";
    else if($so == 1 && $go == 0) $sql = "SELECT product_id, qty, sold AS ts FROM $table_name ORDER BY ts DESC";
    else $sql = "SELECT tag AS product_id, SUM(qty) AS qty, SUM(sold) AS ts FROM $table_name GROUP BY tag ORDER BY ts DESC";
    
    //echo $sql;
    $res = mysqli_query($db, $sql);


?>
<!-- saved from url=(0052)http://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>ADA - Analytics Results</title>

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

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Analytics Results</h1>


          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                <?php 
                    if($go === 1)
                    {
                        ?>
                            <th>Tag</th>
                    <?php
                    }
                    if($go === 0)
                    {
                        ?>
                            <th>Product Id</th>
                            <th>Product Name</th>
                    <?php
                    }
                ?>
                  
                  <th>Quantity</th>
                  <th>Items Sold</th>
                </tr>
              </thead>
              <tbody>

              <?php
                
                                while($row = mysqli_fetch_array($res))
                                {
                                    $pid = $row['product_id'];
                                    //echo $pid;
                                    $qty = $row['qty'];
                                    //echo $qty;
                                    $sq = $row['ts'];
                                    $query = "SELECT product_name FROM product_table WHERE product_id = $pid";
                                    //echo $query;
                                    $res2 = mysqli_query($db, $query);
                                    $row2 = mysqli_fetch_array($res2);
                                    $pn = $row2['product_name'];
                                    //display($pid, $pn, $qty, $sq);
                                    if($go === 1)
                                    {
                                        echo "<tr><td>".$row['product_id']."</td><td>".$qty."</td><td>".$sq."</td></tr>";
                                    }
                                    
                                    else
                                    {
                                        echo "<tr><td>".$pid."</td><td>".$pn."</td><td>".$qty."</td><td>".$sq."</td></tr>";
                                    }
                                }
              ?>
              </tbody>
            </table>
          </div>

            <div class="row" >
            <div class="col-md-4"></div>
            <div sclass = "col-md-4"> 
              <form class="form-inline mt-2 mt-md-0" action="AddItems.php" method="POST" >
              <span><input name="product_name" class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button></span>
            </form>
            </div>
            <div class="col-md-4"></div>
            </div>

        </main>
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
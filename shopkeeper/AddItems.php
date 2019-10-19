<?php
    include('session.php');
?>
<!-- saved from url=(0052)http://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>ADA</title>

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

<!--    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="http://getbootstrap.com/docs/4.0/examples/dashboard/#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://getbootstrap.com/docs/4.0/examples/dashboard/#">Settings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://getbootstrap.com/docs/4.0/examples/dashboard/#">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://getbootstrap.com/docs/4.0/examples/dashboard/#">Help</a>
        </li>
      </ul>
      <!--<form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>--
    </div> -->
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
          <h1>Inventory</h1>

         <!-- <section class="row text-center placeholders">
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <div class="text-muted">Something else</div>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </section>-->

          <!--<h2>Section title</h2>-->
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Product Id</th>
                  <th>Product Name</th>
                  <th>Add to Inventory</th>
                  <!--<th>Item Sold</th>-->
                </tr>
              </thead>
              <tbody>

              <?php
                

                if(!isset($_SESSION['shop_id']))
                {
                  echo "Shop id not found!";
                }
                else
                {
                    $pn = $_POST['product_name'];
                    $sql = "SELECT product_id, product_name FROM product_table WHERE product_name LIKE '%".$pn."%'";
                    $res = mysqli_query($db, $sql);
                    if(mysqli_num_rows($res) == 0)
                    {
                        echo "Your search did not match any of the existing items in our database<br/>";
                        echo "<p><a href = \"SuggestItem.html\">Suggest new item</a></p>";
                    }
                    else
                    {
                        while($row = mysqli_fetch_array($res))
                        {
                            ?>
                                <?php //echo $row['product_name']." ";
                               echo "<tr><td>".$row['product_id']."</td><td>".$row['product_name']."</td>";
                               ?>
                               <form action="updateShopRecord.php" METHOD="POST">
                               <input type="hidden" name="pid" value="<?php echo $row['product_id'] ?>">
                               <input type="hidden" name="qty" value="0" >
                               <td><input style = "background-color: #007bff ; color : #fff " class="btn btn-lg btn-default" type="submit" value = "Add To Shop" ></td>
                               </form>
                        </tr>
                               <?php
                        }
                    }

                    ///////////////
                  /*$table_name = "tabl".(string)$_SESSION['shop_id'];
                  $sql = "SELECT * FROM $table_name WHERE 1";
                  $result = mysqli_query($db, $sql);
                  
                  while($row = mysqli_fetch_array($result))
                  {
                    echo "<tr>";
                    $sql2 = "SELECT product_name FROM Product_Table WHERE product_id = ".$row['product_id'];
                    $result2 = mysqli_query($db, $sql2);
                    $row2 = mysqli_fetch_array($result2);
                    $pn = $row2['product_name'];
                    echo "<td>".$row['product_id']."</td><td>".$pn."</td><td>I am price</td><td>".$row['qty']."</td>";
                    ?><form action="updateShopRecord.php" METHOD="POST">
                    <input type="hidden" name="pid" value="<?php echo $row['product_id'] ?>">
                    <td><input name="qty" style = "display: block; width: 50%; height: 34px; padding: 6px 12px;font-size: 14px; line-height: 1.42857143; color: #555;background-color: #fff; background-image: none; border: 1px solid #ccc; border-radius: 4px;" type="text" New Product="" value=" "><br></td>
                    <td><input style = "background-color: #007bff ; color : #fff " class="btn btn-lg btn-default" type="submit" value = "Update" ></td>
                    </form>
                    <?php
                    echo "</tr>";
                  }     
                }//*///////////
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
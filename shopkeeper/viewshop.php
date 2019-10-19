<?php
    include('session.php');
    $_SESSION['shop_id'] = NULL;
    $sql = "SELECT * FROM shops_table WHERE owner = '$login_session'";
    $result = mysqli_query($db, $sql);
    
    //echo "<p><a href = \"AddShop.html\">Add Shop</a></p>";
?>

<!-- saved from url=(0052)http://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">

    <title>ADA - Your Shops</title>

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
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" href="Registerr.php">Add new Shop</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout.php">Log Out</a>
            </li>
          </ul>
        </nav>

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Your Shops</h1>


          <!--<h2>Section title</h2>-->
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Shop Id</th>
                  <th>Shop Name</th>
                  <th>Go to Shop</th>
                  <!--<th>Item Sold</th>-->
                </tr>
              </thead>
              <tbody>

              <?php
                
                while($row = mysqli_fetch_array($result))
                {

                   echo "<tr><td>".$row['Shop_id']."</td><td>".$row['Shop_Name']."</td>";
                   ?>
                        <form action="AllProductsDisplay.php" METHOD="POST">
                        <input type="hidden" name="secret_field" value="<?php echo $row['Shop_id'] ?>">
                        <td><input style = "background-color: #007bff ; color : #fff " class="btn btn-lg btn-default" type="submit" value = "Go to Shop" ></td>
                        </form>
                        </tr>
                   <?php
                    }
                      
                ?>

              </tbody>
            </table>
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
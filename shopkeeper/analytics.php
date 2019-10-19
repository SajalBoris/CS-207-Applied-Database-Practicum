<?php
    include('session.php');
    //$_SESSION['shop_id'] = NULL;
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

    <title>ADA - Analytics</title>

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
          <h1>Analytics </h1>
        <div class="container" >
        <div class="row>">
        <div class = "panel panel-default" style ="margin-left: 15%">
            <div class="panel-body">
                <form class="form-horizontal" action="analyticsResults.php" method="post">
                <fieldset>
                <div class="form-group">
                <label class="col-md-4 control-label" for="selectbasic"><h5>Sort Type</h5></label>
                <div class="col-md-4">
                    <select id="selectbasic" name="sort" class="form-control" require="">
                    <option value="1">Ascending</option>
                    <option value="2">Descending</option>
                    </select>
                </div>
                </div>

                <!-- Multiple Checkboxes -->
                <div class="form-group">
                <label class="col-md-4 control-label" for="checkboxes">Group by Tags</label>
                <div class="col-md-4">
                    <div class="checkbox">
                        <label for="checkboxes-0">
                        <input type="checkbox" name="grp" id="checkboxes-0" value="1">
                        Yes
                        </label>
                    </div>
                </div>
                </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                <span class="col-md-4" align = "center">

                    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Generate Analytics</button>
                </span>
                </div>

                </fieldset>
                </form>
            </div>
        </div>
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
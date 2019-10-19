<?php
    session_start();
    include('config.php');
    $sid = $_GET['id'];
    $_SESSION['shop_id'] = $sid;
    $table_name = "tabl".(string)($sid);
    $sql = "SELECT * FROM $table_name WHERE 1";
    $result = mysqli_query($db, $sql);

    $message  = "No more results to display!";

    $sql2 = "SELECT Shop_Name FROM shops_table WHERE Shop_id = $sid";
    $result3 = mysqli_query($db , $sql2);
    $cat = (mysqli_fetch_array($result3));
    $shopname = $cat['Shop_Name'];  
?>


<html lang="en">
  <head>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="jquery.cookie.js"></script>
    <script src="addcart.js"></script>
    <title>Search Results</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel = "stylesheet" href = "ItemDisplay.css">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  </head>

  <body>

    <nav class="navbar navbar-fixed-top navbar-bootsnipp animate" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div class="animbrand">
            <a class="navbar-brand animate" href="index.html" style="margin-top: 20px; color: #FFFFFF;">Advanced Shopping Assistant</a>
          </div>
        </div>

      <form class = "nav navbar-form navbar-left">
        <div id="custom-search-input">
          <div class="input-group col-md-12">
            <input type="text" class="  search-query form-control" placeholder="Search for Item" />
            <span class="input-group-btn">
              <button type="button" class="btn btn-danger">
                <span class=" glyphicon glyphicon-search"></span>
              </button>
            </span>
          </div>
        </div>
      </form>

        <div id = "Links">
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
	          <ul class="nav navbar-nav navbar-right">
	          <li><a href="index.html" style ="background-color: transparent !important;color: #FFFFFF;"><h4><span class="glyphicon glyphicon-home"></span> Home</h4></a></li>
	          <li><a href="showMap.html" style ="background-color: transparent !important;color: #FFFFFF;"><h4><span class="glyphicon glyphicon-map-marker"></span> Find Shop</h4></a></li>
	          <li><a href="cart.php" style ="background-color: transparent !important;color: #FFFFFF;"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h4></a></li>
	          </ul>
	        </div>
        </div>
      </div>
    </nav>

    <div id= "bod">

    <div class = "container">  
      <div class = "row">
      	<div id = "row2">
        	<h3><small><i>Search Results:</i></small></h3>
        </div>
      </div>
    </div>  

    <div class = "container">
    
    
        <?php
            if(mysqli_num_rows($result) == false) 
            {
                $message = "Your search did not return any results :( ";
                //echo "No rows found<br/>";
            }
            else
            {
                //echo "<table>";
                while($row = mysqli_fetch_array($result))
                {
                    $sql2 = "SELECT product_name FROM Product_Table WHERE product_id = ".$row['product_id'];
                    $result2 = mysqli_query($db, $sql2);
                    $row2 = mysqli_fetch_array($result2);
                    $pn = $row2['product_name'];
                    //echo "<tr><td>".$pn."</td><td>".$row['qty']."</td></tr>";
                    displayItem($pn , $shopname , $row['product_id']);
                }
                //echo "</table>";
            }
        ?>
    
        <!-- This marks each display unit which needs to be replicated-->
    
        <?php 
            function displayItem($pn,$shopname,$prod)
            {
        ?>
          <div class = "row">
            <div id = "custom_item_display_unit">
    
              <div class="panel panel-default">
                <div class="panel-body">
    
                  <div class = "col-md-2">
                    <img class="img-responsive" src="http://placehold.it/200x250" width = "100%" height = "100%">
                  </div>
    
                  <div class = "col-md-4">
                    <div class = "row">
                      <div class ="col-md-12">
                        <div  id = "product-details">
                          <h2 class="product-name"><strong><?php echo $pn ?></strong></h2>
                         <h3><small><?php echo $shopname; ?></small></h3> 
                        </div>  
                      </div>
                    </div>  
                  </div>
    
                  <div class = "col-md-4">
                    <div class ="row">
                      <div class ="col-md-12">
                        <h1><span id ="mapmarker" class="glyphicon glyphicon-map-marker"></span></h1>
                      </div>
                    </div>
                    <div class ="row">
                      <div class ="col-md-12">
                       <!-- <h3 id = "shopdist"><small>Shop distance</small></h3>-->
                      </div>
                    </div>  
                  </div>  
    
                  <div class = "col-md-2">
                    <div class = "row">
                      <div class = "col-md-12">
                        <h3><small>Quantity:    <input type="number" name="<?php echo $prod; ?>" min="1" max="10" id = "Quantity" ></small></h3>
                      </div>  
                    </div>
                    <div class = "row">
                      <div class = "col-md-12">
                        <button type="button" class="btn btn-info btn-sm" id = "addtocart" onclick = "addToCart(<?php echo $prod ?>);">
                          <h5><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART </h5>  
                        </button>
                      </div>
                    </div>  
                  </div>
                </div>
              </div>  
            </div>
          </div>
    
        <?php
            }
        ?>

    </div>

    <div class = "container">  
    <div class = "row">
      <h3 align="center"><small><i><?php echo $message ?></i></small></h3>
    </div>
  </div>  

    </div>

  <footer class = "foot">
    <div class="container">
        <div class="row">
            <h3 class="footertext"></h3>
            <br>
              <div class="col-md-4">
                <center>
                  <img src="http://icons.iconarchive.com/icons/graphicloads/100-flat/256/cart-remove-icon.png" class="img-circle" alt="..." width="100px" height="100px">
                  <br>
                  <h4 class="footertext" style="color:#FFF"><b>Shop</b></h4>
                  <p class="footertext" style="color:#FFF">Search for items at nearby shops<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="https://cdn1.iconfinder.com/data/icons/flat-world-currency-1/432/Flat_Currency_Rupee-128.png" class="img-circle" alt="..." width="100px" height="100px">
                  <br>
                  <h4 class="footertext" style="color:#FFF"><b>Pay</b></h4>
                  <p class="footertext" style="color:#FFF">Pay online<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://downloadicons.net/sites/default/files/shopping-bag-icon-67528.png" class="img-circle" alt="..." width="100px" height="100px">
                  <br>
                  <h4 class="footertext" style="color:#FFF"><b>Collect</b></h4>
                  <p class="footertext" style="color:#FFF">Collect your order when it's ready<br>
                </center>
              </div>
            </div>
            <div class="row">
              <center><p class="footertext" style="color: black;"">Copyright CS207</p></center></p>
                <p><center style="color: #FFF;">Akai Amru Boris Ani</center>
            </div>
        </div>
    </div>  
  </footer>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
  </body>

</html>

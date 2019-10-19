<?php
session_start();
    include('config.php');
    $cookie = $_COOKIE['orderlist'];
    $cookie = stripslashes($cookie);
    $cartItems = json_decode($cookie, true);
	$cnt = count($cartItems);
	$sid = $_SESSION['shop_id'];
		
	$sql2 = "SELECT Shop_Name FROM shops_table WHERE Shop_id = $sid ";
    $result3 = mysqli_query($db , $sql2);
    $cat = (mysqli_fetch_array($result3));
    $shopname = $cat['Shop_Name'];
    $c = 0;

    for($i=0 ; $i< $cnt ; $i++)
    {
        $c = $c + $cartItems[$i]['qty'];
    }
?>


<html lang="en">
  <head>
    <title>Shopping Cart</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
		<script src="jquery.cookie.js"></script>
		<script>
			function removeFromCart(id)
			{
				var cook = $.cookie('orderlist');
				var arr = JSON.parse(cook);
				var length = arr.length;
				var found = false;
		
				for(var i=0;i<length ; i++)
				{
						if(arr[i].id === id)
						{
								arr[i].qty = 0;
								found = true;
								
						}
				}
				var json_str = JSON.stringify(arr);
				$.cookie('orderlist' ,  json_str);
				window.location = "cart.php";
			}
		</script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel = "stylesheet" href = "ShoppingCart.css">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>

  <body>

    <nav class="navbar navbar-fixed-top navbar-bootsnipp animate" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div class="animbrand">
            <a class="navbar-brand animate" href="index.php" style="margin-top: 20px; color: #FFFFFF;">Advanced Shopping Assistant</a>
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
	          <li><a href="showMap.html" style ="background-color: transparent !important; color: #FFFFFF;"><h4><span class="glyphicon glyphicon-map-marker"></span> Find Shop</h4></a></li>
	          </ul>

	        </div>
        </div>
      </div>
    </nav>

    <div id = "bod">
	  	<div class = "container">  
	      <div class = "row">
	      	<div id = "row2">
	      		<div class="col-md-offset-1">
	        		<h4><strong><i>Shopping Cart:</i></strong></h4>
	        	</div>
	        </div>
	      </div>
	    </div>  

	    <div id = "ProductDisplay">
			<div class="container">
			    <div class="row">
			        <div class="col-sm-12 col-md-10 col-md-offset-1">

			    	<div class = "panel panel-default">
			    	<div class ="panel-body">

            <?php

                if($c > 0)
                {
                ?>
                            <table class="table table-hover">
                                
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                        <th> </th>
                                    </tr>
                                </thead>

                                <tbody>
                    <?php
                }
            ?>

            <?php

                if($c > 0)
                {
                    for($i = 0; $i < $cnt; $i++)
                    {
                         // echo $cartItems[$i]['id']." ".$cartItems[$i]['qty'];
                            $pid = $cartItems[$i]['id'];
                            $ooo = $cartItems[$i]['qty'];
                            //echo "$ooo";
                            $sql = "SELECT product_name FROM product_table WHERE product_id = $pid";
                            $res = mysqli_query($db, $sql);
                            $row = mysqli_fetch_array($res);
                            $pn = $row['product_name'];
                            //echo "<tr>";
                            //echo "<td>".$pn."</td><td>".$ooo."</td>";
                            //echo "</tr>";

                            if($ooo>0)
                            {
                                dispCartItem($pn , $ooo , $shopname , $pid);
                            }
                    }
                }

            ?>
			                	<!--Replicate this row for more products-->
                                <?php 
									function dispCartItem($pn , $qty , $shopname , $id)
									{
								?>

                                    <tr>
                                        <td class="col-sm-8 col-md-6">
                                            <div class="media">
                                                <div class="media-left">
                                                    <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;">
                                                </div>	
                                                <div class="media-body">
                                                    <h4 class="media-heading"><?php echo $pn ?></h4>
                                                    <h5 class="media-heading"><?php echo $shopname ?></h5>
                                                </div>
                                            </div>
                                        </td>

                                        <td class="col-sm-1 col-md-1" style="text-align: center">
                                            <strong><?php echo $qty ?></strong>
                                        </td>

                                        <td class="col-sm-1 col-md-1 text-center"><strong>Per unit cost</strong></td>
                                        <td class="col-sm-1 col-md-1 text-center"><strong>Total cost</strong></td>
                                        <td class="col-sm-1 col-md-1">
                                            <button type="button" class="btn btn-danger" id="<?php echo $id; ?>" onclick="removeFromCart(<?php echo $id; ?>)">
                                                <span class="glyphicon glyphicon-remove"></span> Remove
                                            </button>
                                        </td>
                                    </tr>

                                <?php
                                    }
                                ?>
			                    <!---->

                        <?php 
                            if($c == 0)
                            {
                        ?>
                             <table class="table table-hover">
			                    <tr>
			                        <td>    <h4 align="center">There are no items in your Shopping Cart!</h4>	</td>
			                    </tr>

                                <tr align = "center">
                                    <td>    
                                        <button type="button" class="btn btn-info" onclick="window.location = 'customerItemsDisplay.php?id=<?php echo $sid ?>' ">
				                        <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping </button>	
                                    </td>
                                </tr>
                            </table>
                        <?php
                            }
                        ?>
                        <?php
                            if($c > 0)
                            {
                        ?>
			                    <tr>
			                        <td>   </td>
			                        <td>   </td>
			                        <td>   </td>
			                        <td><h3>Total</h3></td>
			                        <td class="text-right"><h3><strong>Total</strong></h3></td>
			                    </tr>
			                    <tr>
			                    	<form>
				                        <td>
				                           		<div class="input-group">
	  												<span class="input-group-addon" id="sizing-addon1">+91</span>
													<input type="text" class="form-control" placeholder="Enter your 10-digit mobile number" aria-describedby="sizing-addon1" maxlength ="10" style="width:75%;">
												</div>
											</td>
				                        <td>   </td>
				                        <td>   </td>
				                        <td>
				                        <button type="button" class="btn btn-info" onclick="window.location = 'customerItemsDisplay.php?id=<?php echo $sid ?>' ">
				                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
				                        </button></td>
				                        <td>
				                        	<button type="submit" class="btn btn-success">
				                            	Checkout <span class="glyphicon glyphicon-play"></span>
				                        	</button>
				                        </td>	
			                        </form>
			                    </tr>
			                </tbody>
			            </table>

                        <?php
                            }
                        ?>
                        <!-- - - - - -->
			            </div>
			            </div>
			        </div>
			    </div>
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
  
  </body>

</html>

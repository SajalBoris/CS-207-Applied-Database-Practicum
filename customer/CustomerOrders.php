<?php
    include('config.php');
    session_start();   
?>



<html lang="en">
  <head>
    <title>Your Orders</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel = "stylesheet" href = "CustomerOrders.css">
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

          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
            <ul class="nav navbar-nav navbar-right">
            <li><h3 style ="margin-top: 30px; color: #FFFFFF;">Your Orders</h3></li>
          </div>
      </div>
    </nav>


    <div id = "bod">
      <div class = "container">  
        <div class = "row">
          <div id = "row2">
            <div class="col-md-offset-1">
              <h4><strong><i>Orders:</i></strong></h4>
            </div>
          </div>
        </div>
      </div>  

      <div id = "Orders">
        <div class="container">

        <?php
                $phno = $_SESSION['phno'];
                $sql = "SELECT * FROM globalorders WHERE phno = $phno GROUP BY order_status";
                $res = mysqli_query($db, $sql);
                $green = "#4ac43c";
                $orange = "#f6b43f";
                $process = "Order Being Processed";
                $ready = "Order Ready!";
                

                while($row = mysqli_fetch_array($res))
                {
                    $table_name = "ordershop".(string)($row['shop_id']);
                    $oid = $row['order_id'];
                    $sql = "SELECT product_id, qty  FROM $table_name WHERE order_id = $oid";
                    $res2 = mysqli_query($db, $sql);

                    $message='';
                    $color = '';
                    $key =$row['pkey'];
                    
                    if($row['order_status'] == 2)
                    {
                        $message = $ready;
                        $color = $green;
                    }
                    else
                    {
                        $message = $process;
                        $color = $orange;
                    }
                    dispOrder($message , $table_name , $key , $res2 , $color , $db);
                }
        ?>

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
                <center><p class="footertext" style="color: black;">Copyright CS207</p></center></p>
                  <p><center style="color: #FFF;">Akai Amru Boris Ani</center>
              </div>
          </div>
      </div>  
    </footer>
  
  </body>
</html>


<?php   
    function dispProdRow($prod , $qty)
    {
?>
        <tr>
            <td style="text-align: center;">
                <?php echo $prod; ?>
            </td>
            <td style="text-align: center;">
                <?php echo $qty; ?>
            </td>
        </tr>
        
<?php
    }

    function dispOrder($message , $shop , $key , $res2 , $color,$db)
    {
?>
    
    <div class="row">
            <div class="col-sm-12 col-md-10 col-md-offset-1">
              <div class = "panel panel-success" style="background-color: white">
                <div class="panel-heading" style="text-align: center; background-color: <?php echo $color; ?>">
                  <h3 style="color: #FFF"><b><?php echo $message; ?></b></h3>
                </div>
                <div class ="panel-body">
                  <table class="table table-hover">                      
                    <thead>
                        <tr>
                            <th style="text-align: center;">
                              <h3 style="margin-bottom: 30px;"><b><?php echo $shop; ?></b></h3>
                            </th>
                            <th style="text-align: center;">
                              <a class="btn btn-danger btn-lg" href="#" role="button">Locate Shop On Map<br><span class=" glyphicon glyphicon-map-marker"></span></a>
                            </th>
                        </tr>                          
                        <tr>
                            <th style="text-align: center;">
                              <h4 style="margin-bottom: 30px;"><b>Confirmation Key: </b></h4>
                            </th>
                            <th style="text-align: center;">  
                              <h4 style="margin-bottom: 30px;"><b><?php echo $key; ?></b></h4>
                            </th>
                        </tr>                                                 
                        <tr>
                            <th style="text-align: center;">Product</th>
                            <th style="text-align: center;">Quantity</th>
                        </tr>
                    </thead>

                    <tbody>

                    <?php   
                        while($row2 = mysqli_fetch_array($res2))
                        {
                            $pid = $row2['product_id'];
                            $sql = "SELECT product_name FROM product_table WHERE product_id = $pid";
                            $res3 = mysqli_query($db, $sql);
                            $row3 = mysqli_fetch_array($res3);
                            $pn = $row3['product_name'];
                            $qty = $row2['qty'];
                            dispProdRow($pn , $qty);
                        }
                     ?>

                    </tbody>
                  </table>                  
                </div>
              </div>
            </div>
          </div>

<?php
    }
?>
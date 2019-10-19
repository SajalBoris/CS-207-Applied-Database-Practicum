<?php include('session.php') ?>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="stylesheet2.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src = "Java.js"></script>
        <title>ADA</title>
        <script>
            function getLocation() 
            {
                if (navigator.geolocation) 
                {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } 
                else 
                {
                    alert("Geolocation is not supported by this browser.");
                }
            }

            function showPosition(position) 
            {
                lat = position.coords.latitude;
                lng = position.coords.longitude;
                //alert("lat "+lat+"lng "+lng);
                document.getElementById('lat').value = lat;
                document.getElementById('lng').value = lng;
                //map.setCenter(new google.maps.LatLng(lat, lng));
            }

            
            window.onload = function()
            {
                
                getLocation();
                
            }
        </script>

    </head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="pr-wrap">
                    <div class="pass-reset">
                        <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
                    </div>
                </div>
                <div class="wrap">
                    <h3 class="form-title" align="cenetr">  Register Shop</h3>
                        <form class="login" align="center" action="register.php" method="post" >
                        <input type="text" placeholder="Name of Shop" name="sname" />
                        <input type="hidden" name="lat" id = "lat" value=""/>
                        <input type="hidden" name="lng" id = "lng" value=""/>
                        
                        <input type="text" placeholder="Phone Number" />
                        <input type="text" placeholder="Address" name="addr" />
                    
                        <input type="submit" value="Register Shop" class="btn btn-success btn-sm" />
                        </form>
                </div>
            </div>
        </div>
    </div>
</body>
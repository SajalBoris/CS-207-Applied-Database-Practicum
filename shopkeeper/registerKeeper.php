<html>
        <head>
            <link rel = " stylesheet" type="text/css" href="stylesheet2.css"/>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <title> ADA ShopKeepr registration </title>
        </head>
        <body>
        <script> src = "Java.js"></script>
        </body>
        </html>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="pr-wrap">
                        <div class="pass-reset">
                            <label>
                                Enter the email </label>
                            <input type="email" placeholder="Email" />
                            <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
                        </div>
                    </div>
                    <div class="wrap">
                        <p class="form-title">
                            Register</p>
                        <form class="login" action="shopKeeperRegister.php" method = "POST">
                        <input type="text" placeholder="user_id" name="user_id" />
                        <input type="password" placeholder="pass" name="pass" />
                        <input type="submit" value="Register" class="btn btn-success btn-sm" />
                        </form>
                    </div>
                </div>
            </div>
            
        </div>
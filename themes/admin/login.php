
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="smmpanels.store/fonts/icomoon/style.css">

    <link rel="stylesheet" href="smmpanels.store/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="smmpanels.store/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="smmpanels.store/css/style.css">

    <title>Admin Panel </title>
  </head>
  <body>
  

  
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="smmpanels.store/images/login.png" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Sign In</h3>
              <p class="mb-4">Admin Panel Access</p>
            </div>
               
      
                <?php if( $success ): ?>
          <div class="alert alert-success "><?php echo $successText; ?></div>
        <?php endif; ?>
           <?php if( $error ): ?>
          <div class="alert alert-danger "><?php echo $errorText; ?></div>
        <?php endif; ?>
          <form id="yw0" action="" method="post">                                                          <div class="form-group">
            <label for="exampleInputEmail1">USERNAME</label>
            <input class="form-control" name="username" id="AdminUsers_login" type="text" maxlength="300" />            </div>
            <div class="form-group">
                
              <label for="exampleInputPassword1">PASSWORD</label>
              <input class="form-control" name="password" id="AdminUsers_passwd" type="password" maxlength="300" />            </div>
            
 <?php if(  $_SESSION["recaptcha"]  ): ?>
            <div class="form-group">
              <div class="g-recaptcha" data-sitekey="<?php echo $settings["recaptcha_key"] ?>"></div>
            </div>
          <?php endif; ?>

            <div class="checkbox">
              <label>
                <input type="hidden" name="remember" value="1"> 
              </label>
            </div>
            <button type="submit" class="btn btn-block btn-primary">LOGIN</button>
            
          </form>     
          
          <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>

          </div>
    </div>
    
</div>
                </a>
              </div>
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="smmpanels.store/js/jquery-3.3.1.min.js"></script>
    <script src="smmpanels.store/js/popper.min.js"></script>
    <script src="smmpanels.store/js/bootstrap.min.js"></script>
    <script src="smmpanels.store/js/main.js"></script>
  </body>
</html>
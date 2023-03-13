<?php if($_SESSION["glycon_manager"] != "logined"): ?>

<!DOCTYPE html>
<html lang="en" <?php if($user['admin_theme'] == 2){ echo 'class="dark"'; } ?>>

    <head>
        <meta charset="utf-8">
        <link href="https://ig/images/favicon.png" rel="shortcut icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager</title>
        
      <style>
          .modal-body iframe {
    background: #f7f7f7;
}

.p-5 {
    padding: 3rem;
}

img.intro-y.mx-auto.w-16 {
    text-align: center;
    margin: auto;
    margin-bottom: 3rem;
}

.intro-y.auth {
    text-align: center;
}

.intro-y.auth__title.text-2xl.font-medium.text-center.mt-16 {
    font-size: 30px;
    font-weight: bold;
    color: #000000;
    margin-bottom: 3rem;
    font-family: Nunito;
}

input.intro-y.auth__input.input.input--lg.w-full.border.block {
    display: block;
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    -webkit-appearance: none;
    -moz-appearance: none;
    margin: auto;
    min-width: 350px;
    appearance: none;
    margin-bottom: 1rem;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

button.intro-y.button.button--lg.button--primary.w-full.xl\:mr-3 {
    display: inline-block;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: center;
    text-decoration: none;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    color: #fff;
    background-color: #3dd5f3;
    border-color: #25cff2;
    min-width: 375px;
    font-weight: b;
}
      </style>
    </head>
    <!-- END: Head -->
    <body>
        <div class="w-full min-h-screen p-5 md:p-20 flex items-center justify-center">
            <div class="intro-y auth">
                <img class="intro-y mx-auto w-16" alt="justanotherpanel.in" src="https://ol/images/logofooter.png" width="200" height="40">
                
                <div class="intro-y box px-5 py-8 mt-8">
                    <form method="post" action="/admin/manager/login">
                    <div class="intro-y">
                        <input type="hidden" class="intro-y auth__input input input--lg w-full border block" name="key" placeholder="OwnSMMPanel">
                    </div>
                    <div class="intro-y mt-5 xl:mt-8 text-center xl:text-left">
                        <button class="intro-y button button--lg button--primary w-full xl:mr-3">Go To Manager</button>
                    
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- BEGIN: JS Assets-->
        <script src="https://res.cloudinary.com/glycon/raw/upload/v1600016066/app_arjhlo_kuhi2u.js"></script>
        <!-- END: JS Assets-->
    </body>
</html>


<?php  else:

include 'manager.header.php';

if($e_route == "update"){ ?>
    <style>
    .alert-message
{
    margin: 20px 0;
    padding: 20px;
    border-left: 3px solid #eee;
}
.alert-message h4
{
    margin-top: 0;
    margin-bottom: 5px;
}
.alert-message p:last-child
{
    margin-bottom: 0;
}
.alert-message code
{
    background-color: #fff;
    border-radius: 3px;
}
.alert-message-success
{
    background-color: #F4FDF0;
    border-color: #3C763D;
}
.alert-message-success h4
{
    color: #3C763D;
}
.alert-message-danger
{
    background-color: #fdf7f7;
    border-color: #d9534f;
}
.alert-message-danger h4
{
    color: #d9534f;
}
.alert-message-warning
{
    background-color: #fcf8f2;
    border-color: #f0ad4e;
}
.alert-message-warning h4
{
    color: #f0ad4e;
}
.alert-message-info
{
    background-color: #f4f8fa;
    border-color: #5bc0de;
}
.alert-message-info h4
{
    color: #5bc0de;
}
.alert-message-default
{
    background-color: #EEE;
    border-color: #B4B4B4;
}
.alert-message-default h4
{
    color: #000;
}
.alert-message-notice
{
    background-color: #FCFCDD;
    border-color: #BDBD89;
}
.alert-message-notice h4
{
    color: #444;
}
</style>
     <div class="container">
            <div class="w-full md:w-full lg:w-3/4 p-6 mx-auto card shadow border p-5">
                <div class="intro-y text-xl font-medium fs-2">Panel Details</div>
                <div class="settings grid grid-cols-12 gap-6 mt-5  row">
                    <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Service : <?php echo countRow(["table"=>"services"]); ?><br><br>
                           Total Category : <?php echo countRow(["table"=>"categories"]); ?> <br><br>
                           Total Active Services : <?php echo countRow(["table"=>"services","where"=>["service_type"=>2]]); ?> <br><br>
                           Total Dactive Service : <?php echo countRow(["table"=>"services","where"=>["service_type"=>1]]); ?> 
                        </div>
                </div>
          <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Members : <?php echo countRow(["table"=>"clients"]); ?><br><br>
                           Uploaded Members : <?=$count9?> <br><br>
                           Members This Month : <?=$count?> <br><br>
                           Today's Members : <?=$count2?> 
                        </div>
                </div>
          <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Payments : <?php echo round($query['SUM(payment_amount)']); ?><br><br>
                           Total Spent : <?php echo round($query2['order_charge']); ?> <br><br>
                           Today's Earnings : <?=$kazanc2['SUM(payment_amount)'];?> <br><br>
                           Earnings This Month : <?=$kazanc['SUM(payment_amount)'];?> 
                        </div>
                </div>
          <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Orders : <?php echo countRow(["table"=>"orders"]); ?><br><br>
                           Order With API : <?php echo countRow(["table"=>"orders","where"=>["order_where"=>"api"]]); ?><br><br>
                          This Month's Order : <?=$count3?> <br><br>
                           Today's Orders : <?=$count4?> 
                        </div>
                </div>
          <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Support Request : <?php echo countRow(["table"=>"tickets"]); ?> <br><br>
                           Total Resolved : <?php echo countRow(["table"=>"tickets","where"=>["status"=>"closed"]]); ?>  <br><br>
                           Support Requests Today : <?=$count6?> <br><br>
                           This Month's Support Requests : <?=$count5?> 

                        </div>
                </div>
               <div class="col-md-4">
                        <div class="card shadow border p-2 mb-2" style="border-radius:10px;">
                           Total Interactions : <?php echo countRow(["table"=>"client_report"]); ?> <br><br>
                           Today's Interaction : <?=$count8?> <br><br>
                           This Month's Interaction : <?=$count7?> <br><br>
                           
                        </div>
                </div>
                  
            </div>
        </div>
                </div>
                

                
            </div>
        </div>
       

<?php }elseif($e_route == "guard"){ ?>
<style>
    .alert-message
{
    margin: 20px 0;
    padding: 20px;
    border-left: 3px solid #eee;
}
.alert-message h4
{
    margin-top: 0;
    margin-bottom: 5px;
}
.alert-message p:last-child
{
    margin-bottom: 0;
}
.alert-message code
{
    background-color: #fff;
    border-radius: 3px;
}
.alert-message-success
{
    background-color: #F4FDF0;
    border-color: #3C763D;
}
.alert-message-success h4
{
    color: #3C763D;
}
.alert-message-danger
{
    background-color: #fdf7f7;
    border-color: #d9534f;
}
.alert-message-danger h4
{
    color: #d9534f;
}
.alert-message-warning
{
    background-color: #fcf8f2;
    border-color: #f0ad4e;
}
.alert-message-warning h4
{
    color: #f0ad4e;
}
.alert-message-info
{
    background-color: #f4f8fa;
    border-color: #5bc0de;
}
.alert-message-info h4
{
    color: #5bc0de;
}
.alert-message-default
{
    background-color: #EEE;
    border-color: #B4B4B4;
}
.alert-message-default h4
{
    color: #000;
}
.alert-message-notice
{
    background-color: #FCFCDD;
    border-color: #BDBD89;
}
.alert-message-notice h4
{
    color: #444;
}
</style>

       <div class="container">
            <div class="w-full md:w-full lg:w-3/4 p-5 mx-auto card shadow border">
                <div class="intro-y text-xl font-medium fs-2">Protection Settings</div>
                <div class="settings grid grid-cols-12 gap-6 mt-5">
                    <div class="intro-y col-span-12">
                                   <?php if( $success ): ?>
 <div class="alert-message alert-message-success">
                <h4>Transaction Successful!</h4>
             
            </div>        <?php endif; ?>
           <?php if( $error ): ?>
          <div class="alert alert-danger "><?php echo $errorText; ?></div>
        <?php endif; ?>
                        <div class="intro-y box">
                            <form method="post" action="/admin/manager/guard">
             <div class="m*j*r">

              <label>Guard System</label>
              <select class="form-select" name="guard_system_status">
                <option value="2" <?php if( $settings["guard_system_status"] == 2 ): echo "selected"; endif; ?>>ACTIVE</option>
                <option value="1"  <?php if( $settings["guard_system_status"] == 1 ): echo "selected"; endif; ?>>DACTIVE</option>
              </select>
            </div>
            
        <hr>
        <div class="mt-3">

              <label>Service Erase Protection</label>
              <select class="form-select" name="guard_services_status">
                <option value="2"  <?php if( $settings["guard_services_status"] == 2 ): echo "selected"; endif; ?>>ACTIVE</option>
                <option value="1"  <?php if( $settings["guard_services_status"] == 1 ): echo "selected"; endif; ?>>DACTIVE</option>
              </select>
            </div>
        <div class="mt-3">

              <label>If Service Deletes</label>
              <select class="form-select" name="guard_services_type">
                <option value="2"  <?php if( $settings["guard_services_type"] == 2 ): echo "selected"; endif; ?>>Get All Your Powers</option>
                <option value="1"  <?php if( $settings["guard_services_type"] == 1 ): echo "selected"; endif; ?>>End Your Session</option>
              </select>
            </div>
<hr>
       <div class="mt-3">

              <label>Bulk Notification Protection</label>
              <select class="form-select" name="guard_notify_status">
                <option value="2"  <?php if( $settings["guard_notify_status"] == 2 ): echo "selected"; endif; ?>>ACTIVE</option>
                <option value="1"  <?php if( $settings["guard_notify_status"] == 1 ): echo "selected"; endif; ?>>DACTIVE</option>
              </select>
            </div>
        <div class="mt-3">

              <label>If Bulk Notification Is Sent</label>
              <select class="form-select" name="guard_notify_type">
                <option value="2"  <?php if( $settings["guard_notify_type"] == 2 ): echo "selected"; endif; ?>>Get All Your Powers</option>
                <option value="1"  <?php if( $settings["guard_notify_type"] == 1 ): echo "selected"; endif; ?>>End Your Session</option>
              </select>
            </div>
<hr>
       <div class="mt-3">

              <label>Authority Protection</label>
              <select class="form-select" name="guard_roles_status">
                <option value="2"  <?php if( $settings["guard_roles_status"] == 2 ): echo "selected"; endif; ?>>ACTIVE</option>
                <option value="1"  <?php if( $settings["guard_roles_status"] == 1 ): echo "selected"; endif; ?>>DACTIVE</option>
              </select>
            </div>
        <div class="mt-3">

              <label>If Authorization Is Issued</label>
              <select class="form-select" name="guard_roles_type">
                <option value="2"  <?php if( $settings["guard_roles_type"] == 2 ): echo "selected"; endif; ?>>Get All Your Powers</option>
                <option value="1"  <?php if( $settings["guard_roles_type"] == 1 ): echo "selected"; endif; ?>>End Your Session</option>
              </select>
            </div>
<hr>
       <div class="mt-3">

              <label>API Key Display <small>(It is encrypted in 6 different ways and is impossible to crack.)</small></label>
              <select class="form-select" name="guard_apikey_type">
                <option value="2"  <?php if( $settings["guard_apikey_type"] == 2 ): echo "selected"; endif; ?>>Show as encrypted</option>
                <option value="1"  <?php if( $settings["guard_apikey_type"] == 1 ): echo "selected"; endif; ?>>Show directly</option>
              </select>
            </div>
</div>
                            <button type="submit" class="btn btn-success mt-3">UPDATE SETTINGS</button>
                            </form>
                        </div>
                </div>
        </div>

<?php }elseif($e_route == "info"){ ?>
    
           
<?php }elseif($e_route == "details"){ ?>      

          
        

<?php } ?>

<?php include 'manager.footer.php'; endif; ?>
<?php

if(!isset($CRON_GUVENLIK)){
    echo "you cannot run cron file manually! For More Info Contact OwnSMMPanel.in";
    exit;
}
use PHPMailer\PHPMailer\PHPMailer;

$mail = new PHPMailer;
$smmapi   = new SMMApi();

$api_details = $conn->prepare("SELECT * FROM service_api ORDER BY RAND() LIMIT 1");
$api_details->execute(array());
$api_details = $api_details->fetchAll(PDO::FETCH_ASSOC);

foreach( $api_details as $api_detail ):
  $balance      = $smmapi->action(array('key' =>$api_detail["api_key"],'action' =>'balance'),$api_detail["api_url"]);
  if( !empty($balance->balance) && $settings["alert_apibalance"] == 2 && $api_detail["api_limit"] > $balance->balance  && $api_detail["api_alert"] == 2 ):
    if( $settings["alert_type"] == 3 ):   $sendmail = 1; $sendsms  = 1; elseif( $settings["alert_type"] == 2 ): $sendmail = 1; $sendsms=0; elseif( $settings["alert_type"] == 2 ): $sendmail=0; $sendsms  = 1; endif;
    echo $sendsms;
    if( $sendsms ):
      SMSUser($settings["admin_telephone"],$api_detail["api_name"]." current balance in your API named:".$balance->balance.$balance->currency);
    endif;
    if( $sendmail ):
      sendMail(["subject"=>"Provider balance notification.","body"=>$api_detail["api_name"]." current balance in your API named:".$balance->balance.$balance->currency,"mail"=>$settings["admin_mail"]]);
    endif;
    $update = $conn->prepare("UPDATE service_api SET api_alert=:alert WHERE id=:id ");
    $update->execute(array("id"=>$api_detail["id"],"alert"=>1));
  endif;
  if( $api_detail["api_limit"] < $balance->balance ):
    $update = $conn->prepare("UPDATE service_api SET api_alert=:alert WHERE id=:id ");
    $update->execute(array("id"=>$api_detail["id"],"alert"=>2));
  endif;

endforeach;
<?php

$title .= $languageArray["addfunds.title"];

if( $_SESSION["neira_userlogin"] != 1  || $user["client_type"] == 1  ){
    Header("Location:".site_url('logout'));
}

if($_SESSION["neira_userlogin"] == 1 ):
    if($settings["sms_verify"] == 2 && $user["sms_verify"] != 2){
        header("Location:".site_url('verify/sms'));
    }
    if($settings["mail_verify"] == 2 && $user["mail_verify"] != 2 ){
        header("Location:".site_url('verify/mail')); 
    }
    endif;


$paymentsList = $conn->prepare("SELECT * FROM payment_methods WHERE method_type=:type && id!=:id6 && id!=:id10 && id!=:id14 ORDER BY method_line ASC ");
$paymentsList->execute(array("type" => 2, "id6" => 6, "id10" => 10, "id14" => 14));
$paymentsList = $paymentsList->fetchAll(PDO::FETCH_ASSOC);

foreach ($paymentsList as $index => $payment) {
    $extra = json_decode($payment["method_extras"],true);
    $methodList[$index]["method_name"] = $extra["name"];
    $methodList[$index]["id"] = $payment["id"];
}

$PaytmQR = $conn->prepare("SELECT * FROM payment_methods WHERE id=:id ");
$PaytmQR->execute(array("id" => 14));
$PaytmQR = $PaytmQR->fetch(PDO::FETCH_ASSOC);
$PaytmQRimg = json_decode($PaytmQR['method_extras'], true);
$PaytmQRimage = $PaytmQRimg["merchant_key"];
$bankPayment  = $conn->prepare("SELECT * FROM payment_methods WHERE id=:id ");
$bankPayment-> execute(array("id"=>7 ));
$bankPayment = $bankPayment->fetch(PDO::FETCH_ASSOC);

$bankList   = $conn->prepare("SELECT * FROM bank_accounts");
$bankList -> execute(array( ));
$bankList   = $bankList->fetchAll(PDO::FETCH_ASSOC);

if( $_POST && $_POST["payment_bank"] ):

    foreach ($_POST as $key => $value):
        $_SESSION["data"][$key]  = $value;
    endforeach;

    $bank     = htmlentities($_POST["payment_bank"]);
    $amount   = htmlentities($_POST["payment_bank_amount"]);
    $gonderen = htmlentities($_POST["payment_gonderen"]);
    $method_id= 7;
    $extras   = json_encode($_POST);

    if( open_bankpayment($user["client_id"]) == 2  ){
        unset($_SESSION["data"]);
        $error    = 1;
        $errorText= $languageArray["error.addfunds.bank.limit"];
    }elseif( empty($bank) ){
        $error    = 1;
        $errorText= $languageArray["error.addfunds.bank.account"];
    }elseif( !is_numeric($amount) ){
        $error    = 1;
        $errorText=  $languageArray["error.addfunds.bank.amount"];
    }elseif( empty($gonderen) ){
        $error    = 1;
        $errorText=  $languageArray["error.addfunds.bank.sender"];
    }else{

        $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_method=:method, payment_create_date=:date, payment_ip=:ip, payment_extra=:extras, payment_bank=:bank ");
        $insert->execute(array("c_id"=>$user["client_id"],"amount"=>$amount,"method"=>$method_id,"date"=>date("Y.m.d H:i:s"),"ip"=>GetIP(),"extras"=>$extras,"bank"=>$bank ));
        if( $insert ){
            unset($_SESSION["data"]);
            $success    = 1;
            $successText= $languageArray["error.addfunds.bank.success"];
            if( $settings["alert_newbankpayment"] == 2 ):
                if( $settings["alert_type"] == 3 ):   $sendmail = 1; $sendsms  = 1; elseif( $settings["alert_type"] == 2 ): $sendmail = 1; $sendsms=0; elseif( $settings["alert_type"] == 1 ): $sendmail=0; $sendsms  = 1; endif;
                if( $sendsms ):
                    SMSUser($settings["admin_telephone"],"There is a new payment request with ID #".$conn->lastInsertId()." on Your Website.");
                endif;
                if( $sendmail ):
                    sendMail(["subject"=>"There is a new payment request.","body"=>"There is a new payment request with ID #".$conn->lastInsertId()." on Your Website.","mail"=>$settings["admin_mail"]]);
                endif;
            endif;
        }else{
            $error    = 1;
            $errorText= $languageArray["error.addfunds.bank.fail"];
        }
    }

elseif( $_POST && $_POST["payment_type"] ):

    foreach ($_POST as $key => $value):
        $_SESSION["data"][$key]  = $value;
    endforeach;
   
    if($_POST["paytmqr_orderid"] !="" ){
            $paytmqr_orderid = $_POST["paytmqr_orderid"];
        }

    if(!$user["first_name"]):
        $user["first_name"] = "Ad Soyad";
    endif;    

    if(!$user["telephone"]):
        $user["telephone"] = "05555555555";
    endif;    

    $method_id= $_POST["payment_type"];
    $amount   = htmlentities($_POST["payment_amount"]);
    $extras   = json_encode($_POST);
    $method   = $conn->prepare("SELECT * FROM payment_methods WHERE id=:id ");
    $method -> execute(array("id"=>$method_id));
    $method   = $method->fetch(PDO::FETCH_ASSOC);
    $extra    = json_decode($method["method_extras"],true);
    $paymentCode  = time();
    $amount_fee   = ($amount+($amount*$extra["fee"]/100)); // Komisyonlu tutar

    if( empty($method_id) ){
        $error    = 1;
        $errorText= $languageArray["error.addfunds.online.method"];
    }elseif( !is_numeric($amount) ){
        $error    = 1;
        $errorText= $languageArray["error.addfunds.online.amount"];
    }elseif( $amount < $method["method_min"] ){
        $error    = 1;
        $errorText= str_replace("{min}",$method["method_min"],$languageArray["error.addfunds.online.min"]);
    }elseif( $amount > $method["method_max"] && $method["method_max"] != 0 ){
        $error    = 1;
        $errorText= str_replace("{max}",$method["method_max"],$languageArray["error.addfunds.online.max"]);
    }
    
    else{
        if( $method_id == 2 ):
            $merchant_id      = $extra["merchant_id"];
            $merchant_key     = $extra["merchant_key"];
            $merchant_salt    = $extra["merchant_salt"];
            $email            = $user["email"];
            $payment_amount   = $amount_fee * 100;
            $merchant_oid     = $paymentCode;
            $user_name        = $user["first_name"];
            $user_address     = "Unspecified";
            $user_phone       = $user["telephone"];
            $payment_type     = "eft";
            $user_ip          = GetIP();
            $timeout_limit    = "360";
            $debug_on         = 1;
            $test_mode        = 0;
            $no_installment   = 0;
            $max_installment  = 0;
            $hash_str         = $merchant_id.$user_ip.$merchant_oid.$email.$payment_amount.$payment_type.$test_mode;
            $paytr_token      = base64_encode(hash_hmac('sha256',$hash_str.$merchant_salt,$merchant_key,true));
            $post_vals=array(
                'merchant_id'=>$merchant_id,
                'user_ip'=>$user_ip,
                'merchant_oid'=>$merchant_oid,
                'email'=>$email,
                'payment_amount'=>$payment_amount,
                'payment_type'=>$payment_type,
                'paytr_token'=>$paytr_token,
                'debug_on'=>$debug_on,
                'timeout_limit'=>$timeout_limit,
                'test_mode'=>$test_mode
            );
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.paytr.com/odeme/api/get-token");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1) ;
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_vals);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);
            $result = @curl_exec($ch);
            if(curl_errno($ch))
                die("PAYTR IFRAME connection error. err:".curl_error($ch));
            curl_close($ch);
            $result  = json_decode($result,1);

            if( $result['status']=='success' ):
                unset($_SESSION["data"]);
                $token  = $result['token'];
                $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                $insert-> execute(array("c_id"=>$user["client_id"],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP()));
                $success    = 1;
                $successText= $languageArray["error.addfunds.online.success"];
                $payment_url= "https://www.paytr.com/odeme/api/".$token;
                $_POST = $result;
            else:
                $error    = 1;
                $errorText= $languageArray["error.addfunds.online.fail"];
            endif;
        elseif( $method_id == 1 ):
            $merchant_id      = $extra["merchant_id"];
            $merchant_key     = $extra["merchant_key"];
            $merchant_salt    = $extra["merchant_salt"];
            $email            = $user["email"];
            $payment_amount   = $amount_fee * 100;
            $merchant_oid     = $paymentCode;
            $user_name        = $user["first_name"];
            $user_address     = "Unspecified";
            $user_phone       = $user["telephone"];
            $currency         = "TL";
            $merchant_ok_url  = URL;
            $merchant_fail_url= URL;
            $user_basket      = base64_encode(json_encode(array( array($amount." ".$currency." Bakiye", $amount_fee, 1)   )));
            $user_ip          = GetIP();
            $timeout_limit    = "360";
            $debug_on         = 1;
            $test_mode        = 0;
            $no_installment   = 0;
            $max_installment  = 0;
            $hash_str         = $merchant_id .$user_ip .$merchant_oid .$email .$payment_amount .$user_basket.$no_installment.$max_installment.$currency.$test_mode;
            $paytr_token      = base64_encode(hash_hmac('sha256',$hash_str.$merchant_salt,$merchant_key,true));
            $post_vals=array(
                'merchant_id'=>$merchant_id,
                'user_ip'=>$user_ip,
                'merchant_oid'=>$merchant_oid,
                'email'=>$email,
                'payment_amount'=>$payment_amount,
                'paytr_token'=>$paytr_token,
                'user_basket'=>$user_basket,
                'debug_on'=>$debug_on,
                'no_installment'=>$no_installment,
                'max_installment'=>$max_installment,
                'user_name'=>$user_name,
                'user_address'=>$user_address,
                'user_phone'=>$user_phone,
                'merchant_ok_url'=>$merchant_ok_url,
                'merchant_fail_url'=>$merchant_fail_url,
                'timeout_limit'=>$timeout_limit,
                'currency'=>$currency,
                'test_mode'=>$test_mode
            );
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.paytr.com/odeme/api/get-token");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1) ;
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_vals);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);
            $result = @curl_exec($ch);
            if(curl_errno($ch))
                die("PAYTR IFRAME connection error. err:".curl_error($ch));
            curl_close($ch);
            $result  = json_decode($result,1);

            if( $result['status']=='success' ):
                unset($_SESSION["data"]);
                $token  = $result['token'];
                $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                $insert-> execute(array("c_id"=>$user["client_id"],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
                $success    = 1;
                $successText= $languageArray["error.addfunds.online.success"];
                $payment_url= "https://www.paytr.com/odeme/guvenli/".$token;
            else:
                $error    = 1;
                $errorText= $languageArray["error.addfunds.online.fail"] . " - " . $result['reason'];
            endif;
        elseif( $method_id == 3 ):

            $payment_types  = ""; foreach ($extra["payment_type"] as $i => $v ) { $payment_types .= $v.",";  } $payment_types = substr($payment_types,0,-1);
            $hashOlustur = base64_encode(hash_hmac('sha256',$user["email"]."|".$user["email"]."|".$user['client_id'].$extra['apiKey'],$extra['apiSecret'],true));
            $postData = array(
                'apiKey' => $extra['apiKey'],
                'hash' => $hashOlustur,
                'returnData'=> $user["email"],
                'userEmail' => $user["email"],
                'userIPAddress' => GetIP(),
                'userID' => $user["client_id"],
                'proApi' => TRUE,
                'productData' => [
                    "name" =>  $amount." TL Tutarında Bakiye (".$paymentCode.")",
                    "amount" => $amount_fee * 100,
                    "extraData" => $paymentCode,
                    "paymentChannel" => $payment_types, // 1 Mobil Ödeme, 2 Kredi Kartı,3 Banka Havale/Eft/Atm,4 Türk Telekom Ödeme (TTNET),5 Mikrocard,6 CashU
                    "commissionType" => $extra["commissionType"] // 1 seçilirse komisyonu bizden al, 2 olursa komisyonu müşteri ödesin
                ]
            );
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "http://api.paywant.com/gateway.php",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => http_build_query($postData),
            ));
            $response = curl_exec($curl); $err = curl_error($curl);
            if( !$err ):
                $jsonDecode = json_decode($response,false);
                $jsonDecode->Message = str_replace("https://", "",str_replace("http://", "", $jsonDecode->Message));
                $jsonDecode->Message = "https://".$jsonDecode->Message;
                if($jsonDecode->Status == 100):
                    unset($_SESSION["data"]);
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                    $insert-> execute(array("c_id"=>$user["client_id"],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
                    $success    = 1;
                    $successText= $languageArray["error.addfunds.online.success"];
                    $payment_url= $jsonDecode->Message;
                else:
                    //echo $response; // Dönen hatanın ne olduğunu bastır
                    $error    = 1;
                    $errorText= $languageArray["error.addfunds.online.fail"];
                endif;
            else:
                $error    = 1;
                $errorText= $languageArray["error.addfunds.online.fail"];
            endif;
        elseif( $method_id == 4 ):
            if( $extra["processing_fee"] ):
                $amount_fee = $amount_fee + "0.49";
            endif;
            $form_data = [
                "website_index"   =>	$extra["website_index"],
                "apikey"	        =>	$extra["apiKey"],
                "apisecret"	      =>	$extra["apiSecret"],
                "item_name"       =>  "Bakiye Ekleme",
                "order_id"        =>  $paymentCode,
                "buyer_name"      =>  $user["name"],
                "buyer_surname"   =>  " ",
                "buyer_email"     =>  $user["email"],
                "buyer_phone"     =>  $user["telephone"],
                "city"            =>  "NA",
                "billing_address" =>  "NA",
                "ucret"           =>  $amount_fee
            ];
            print_r(generate_shopier_form(json_decode(json_encode($form_data))));
            if( $_SESSION["data"]["payment_shopier"] == true ):
                $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                $insert-> execute(array("c_id"=>$user['client_id'],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
                $success    = 1;
                $successText= $languageArray["error.addfunds.online.success"];
                $payment_url  = $response;
                unset($_SESSION["data"]);
            else:
                $error    = 1;
                $errorText= $languageArray["error.addfunds.online.fail"];
            endif;
        elseif( $method_id == 5 ):
            
                $shoplemo = new \Shoplemo\Config();
                $shoplemo->setAPIKey($extra["apiKey"]);
                $shoplemo->setSecretKey($extra["apiSecret"]);
                $shoplemo->setServiceBaseUrl('https://payment.shoplemo.com'); 
             
                $request = new \Shoplemo\Paywith\CreditCard($shoplemo);
                $request->setUserEmail($user["email"]);
                $request->setCustomParams(json_encode(['payment_code' => $paymentCode,'client_id' => $user["client_id"]])); 
                
                $basket = new \Shoplemo\Model\Basket;
                $basket->setTotalPrice($amount_fee*100);
                $item1  = new \Shoplemo\Model\BasketItem;
                $item1->setName($amount.' TL Bakiye Ekleme');
                $item1->setPrice($amount_fee*100);
                $item1->setType(\Shoplemo\Model\BasketItem::DIGITAL);
                $item1->setQuantity(1);  
                $basket->addItem($item1);
                
                $request->setBasket($basket);
                
                $request->setRedirectUrl(site_url()); 
                
                if($request->execute()){
                    $responseShoplemo =  json_decode($request->getResponse(),true); 
                    $responseShoplemoUrl = $responseShoplemo["url"];
                    
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                    $insert-> execute(array("c_id"=>$user['client_id'],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
                    $success    = 1;
                    $successText= $languageArray["error.addfunds.online.success"];
                    $payment_url  = $responseShoplemoUrl;
                    unset($_SESSION["data"]);
                }else{
                    $error    = 1;
                    $errorText= $languageArray["error.addfunds.online.fail"];
                }

        elseif ($method_id == 6):
                // Create a new API wrapper instance
                $cps_api = new CoinpaymentsAPI($extra["coinpayments_private_key"], $extra["coinpayments_public_key"], 'json');

                // This would be the price for the product or service that you're selling
                $cp_amount = str_replace(',', '.', $amount_fee);

                // The currency for the amount above (original price)
                $currency1 = $settings['site_currency'];

                // Litecoin Testnet is a no value currency for testing
                // The currency the buyer will be sending equal to amount of $currency1
                $currency2 = $extra["coinpayments_currency"];

                // Enter buyer email below
                $buyer_email = $user["email"];

                // Set a custom address to send the funds to.
                // Will override the settings on the Coin Acceptance Settings page
                $address = '';

                // Enter a buyer name for later reference
                $buyer_name = 'No Name';

                // Enter additional transaction details
                $item_name = 'Add Balance';
                $item_number = $cp_amount;
                $custom = 'Express order';
                $invoice = 'addbalancetosmm001';
                $ipn_url = site_url('payment/coinpayments');

                // Make call to API to create the transaction
                try {
                    $transaction_response = $cps_api->CreateComplexTransaction($cp_amount, $currency1, $currency2, $buyer_email, $address, $buyer_name, $item_name, $item_number, $invoice, $custom, $ipn_url);
                } catch (Exception $e) {
                    echo 'Error: ' . $e->getMessage();
                    exit();
                }

                if ($transaction_response['error'] == 'ok'):
                    unset($_SESSION["data"]);
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                    $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Automatic", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $transaction_response['result']['txn_id']));
                    $success = 1;
                    $successText= $languageArray["error.addfunds.online.success"];
                    $payment_url = $transaction_response['result']['checkout_url'];
                else:
                    $error = 1;
                    $errorText= $languageArray["error.addfunds.online.fail"];
                endif;

        elseif ($method_id == 9):
                require_once("lib/2checkout/2checkout-php/lib/Twocheckout.php");
                Twocheckout::privateKey($extra['private_key']);
                Twocheckout::sellerId($extra['seller_id']);

                // If you want to turn off SSL verification (Please don't do this in your production environment)
                Twocheckout::verifySSL(false);  // this is set to true by default

                // To use your sandbox account set sandbox to true
                Twocheckout::sandbox(false);

                // All methods return an Array by default or you can set the format to 'json' to get a JSON response.
                Twocheckout::format('json');

                $icid = md5(rand(1,999999));
                $getcur = $extra['currency'];
                $lastcur = 1;
                $tc_amount = str_replace(',', '.', $amount_fee);
                $params = array(
                    'sid' => $icid,
                    'mode' => '2CO',
                    'li_0_name' => 'Add Balance',
                    'li_0_price' => number_format($tc_amount * $lastcur, 2, '.', '')
                );

                unset($_SESSION["data"]);
                $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Automatic", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $icid));
             $success    = 1;
             $successText= $languageArray["error.addfunds.online.success"];
                Twocheckout_Charge::form($params, 'auto');
        
        
          elseif ($method_id == 12):
                    
                    require_once($_SERVER['DOCUMENT_ROOT']."/lib/paytm/encdec_paytm.php");
    
                    $icid = "ORDS".rand(10000,99999999);
    
                    $checkSum = "";
                    $paramList = array();
                    
                    $TXN_AMOUNT = $amount;
            
                    $paramList["MID"] = $extra['merchant_mid'];
                    $paramList["ORDER_ID"] = $icid;
                    $paramList["CUST_ID"] = $user['client_id'];
                    $paramList["INDUSTRY_TYPE_ID"] = "Retail";
                    $paramList["CHANNEL_ID"] = "WEB";
                    $paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
                    $paramList["WEBSITE"] = "WEBSTAGING";
                    $paramList["CALLBACK_URL"] = site_url('payment/paytm');;
                    
                    $checkSum = getChecksumFromArray($paramList, $extra['merchant_key']);
                
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                    $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Otomatik", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $icid));
                    $success = 1;
                    $successText = "Your payment was initiated successfully, you are being redirected..";
                    
                    echo '<form method="post" action="https://securegw.paytm.in/theia/processTransaction" name="f1">
                    		<table border="1">
                    			<tbody>';
                    			foreach($paramList as $name => $value) {
                    				echo '<input type="hidden" name="' .$name.'" value="' .$value .'">';
                    			}
                    			echo '<input type="hidden" name="CHECKSUMHASH" value="' .$checkSum. '">
                    			</tbody>
                    		</table>
                    		<script type="text/javascript">
                    			document.f1.submit();
                    		</script>
                    	</form>';
                    	
                    	
        
       elseif($method_id == 13):
           
             
        $weepay['Auth'] = array(
            'bayiId'=>$extra["bayi_id"],
            'apiKey'=>$extra["api_key"],
            'secretKey'=>$extra["secret_key"]);   
            
            $weepay['Data'] = array('paidPrice' => $amount_fee,
            'orderId' => $paymentCode,
            'locale' =>  "tr",
            'ipAddress' => GetIP(),
            'callBackUrl' => site_url("payment/weepay?token=".$paymentCode),
            'outSourceId' => $paymentCode,
            'description' => "Bakiye yükleme",
            'currency' => $extra["currency"]);	
         $weepay["Customer"] = array(
            'customerId' => $user["client_id"],
            'customerName' => $user["username"],
            'customerSurname' => $user["username"],
            'gsmNumber' => $user["telephone"],
            'email' => $user["email"],
            'identityNumber' => "11111111111",
            'city' => "Istanbul",
            'country' => 'Türkiye'
         );
         $weepay['BillingAddress'] = array(
           'contactName' => "SMMPanel",
           'address' => '123 street Istanbul bahcelievler',
           'city' => "Istanbul",
           'country' => 'Türkiye'
         );
    
         $weepay["Products"][1] = array(
              'productId' => "123123",
           'name' => 'bakiye',
           'productPrice' => $amount_fee,
           'itemType' => 'VIRTUAL'      
          );
         
            $data = json_encode($weepay); 
         
            
            $ch=curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://api.weepay.co/Payment/PaymentCreate");
            curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type: application/json"));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1) ;
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);
            $result = @curl_exec($ch);                
            $responseWeepay = json_decode($result);
            curl_close($ch);
                     
                   if($responseWeepay->errorCode !== 999){
                       $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
                       $insert-> execute(array("c_id"=>$user['client_id'],"amount"=>$amount,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
                       unset($_SESSION["data"]);
                       echo $responseWeepay->CheckoutFormData;
                       
                       if(weepayMobile()){
    echo '<meta name="viewport" content="width=device-width, initial-scale=1">
   <div id="weePay-checkout-form" class="responsive"></div>'; 
    die;
   }else{
    echo '<div id="weePay-checkout-form" class="popup"></div>'; 
   }
                       echo '<div id="weePay-checkout-form" class="popup"></div>';
                  
                   }else{
                       $error    = 1;
                       $errorText= $languageArray["error.addfunds.online.fail"];
                   }
                   

elseif( $method_id == 14 ):
                    
                    require_once($_SERVER['DOCUMENT_ROOT']."/lib/paytm/encdec_paytm.php");
    
                    $icid = $paytmqr_orderid;
                    //$icid = "ORDS57382437";
    
                    $TXN_AMOUNT = $amount;
            
                    $responseParamList = array();

                	$requestParamList = array();

                	$requestParamList = array("MID" => $extra['merchant_mid'] , "ORDERID" => $icid);  
                	
                	if (!countRow(['table' => 'payments', 'where' => ['client_id' => $user['client_id'], 'payment_method' => 14, 'payment_status' => 3, 'payment_delivery' => 2, 'payment_extra' => $icid]])) {

                        $responseParamList = getTxnStatusNew($requestParamList);

                        if($amount == $responseParamList["TXNAMOUNT"]) {
    
    
    
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                    
                    $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Otomatik", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $icid));
                            
                            
                            $success = 1;
                            $successText = "Your payment was initiated successfully, you are being redirected..";
                            
                            echo '<form method="post" action="'.site_url('payment/paytmqr').'" name="f1">
                            		<table border="1">
                            			<tbody>';
                            			foreach($requestParamList as $name => $value) {
                            				echo '<input type="hidden" name="' .$name.'" value="' .$value .'">';
                            			}
                            			echo '</tbody>
                            			</table>
                            		<script type="text/javascript">
                            			document.f1.submit();
                            		</script>
                            	</form>';
                            	
                        }else{
                    	    $error = 1;
                            $errorText = "Amount is invalid";
                	    }
                        	
                	}else{
                	    $error = 1;
                        $errorText = "This orderid is already used";
                	}
                	
                	
                	
                	
                 elseif ($method_id == 15):

                    $checkSum = "";
                    $paramList = array();
    
                    $icid = md5(rand(1,999999));
                    $ptm_amount = 1;
                   
                    $paramList["public_key"] = $extra['public_key'];
                    $paramList["ORDER_ID"] = $icid;
                    $paramList["CUST_ID"] = $user['client_id'];
                    $paramList["EMAIL"] = $user['email'];
                    $paramList["INDUSTRY_TYPE_ID"] = "Retail";
                    $paramList["CHANNEL_ID"] = "WEB";
                    $paramList["TXN_AMOUNT"] = $ptm_amount;
                    $paramList["WEBSITE"] = $extra['merchant_website'];
                    $paramList["CALLBACK_URL"] = site_url('payment/razorpay');
    
                   
                  
                    $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                    $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Otomatik", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $icid));
                    $success = 1;
                    $successText = "Your payment was initiated successfully, you are being redirected..";
                     echo '  
                      <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
                     <form action="'.$paramList["CALLBACK_URL"].'" method="POST">
            
                  
                    <script type="text/javascript" src="https://checkout.razorpay.com/v1/checkout.js"
                        data-key="'.$paramList["public_key"].'"
                        data-amount="'.($amount*100).'"
                        data-currency="INR"
                      
                        data-buttontext="Pay with Razorpay"
                         data-name="'.$user["name"].'"
                        data-description=""
                        data-image="http://ashvinstech.com/panel/assets/images/logo-white.png" 
                        data-prefill.name="'.$user["name"].'"
                        data-prefill.email="'.$user["email"].'"
                        data-theme.color="#F37254"></script>
                       
                
                
                    <input type="hidden" custom="Hidden Element" name="ORDERID" value='.$icid.'>
                     <input type="hidden" custom="Hidden Element" name="amount" value='.$amount.'>
                </form>
                <script>$(document).ready(function(){
                
                    $(".razorpay-payment-button").click();
                });</script>
                ';
                
                elseif ($method_id == 16):
                    
                		    $amount = (double)$amount;
                		
                	        $client_id = $extra['usd'];
                	        
                	       // $users = session('user_current_info');
                	        $order_id = strtotime(NOW);
                	        $perfectmoney = array(
                	        	'PAYEE_ACCOUNT' 	=> $client_id,
                	        	'PAYEE_NAME' 		=> $extra['merchant_website'],
                	        	'PAYMENT_UNITS' 	=> "USD",
                	        	'STATUS_URL' 		=> site_url('payment/perfectmoney'),
                	        	'PAYMENT_URL' 		=> site_url('payment/perfectmoney'),
                	        	'NOPAYMENT_URL' 	=> site_url('payment/perfectmoney'),
                	        	'BAGGAGE_FIELDS' 	=> 'IDENT',
                	        	'ORDER_NUM' 		=> $order_id,
                	        	'PAYMENT_ID' 		=> strtotime(NOW),
                	        	'CUST_NUM' 		    => "USERID" . rand(10000,99999999),
                	        	'memo' 		        => "Balance recharge - ".  $user['email'],
                
                	        );
                			$tnx_id = $perfectmoney['PAYMENT_ID'];
                			
                			$insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip, payment_extra=:extra");
                            $insert->execute(array("c_id" => $user['client_id'], "amount" => $amount, "code" => $paymentCode, "method" => $method_id, "mode" => "Otomatik", "date" => date("Y.m.d H:i:s"), "ip" => GetIP(), "extra" => $tnx_id));
                            $success = 1;
                            $successText = "Your payment was initiated successfully, you are being redirected..";
                			
                			
                		
                         echo '<div class="dimmer active" style="min-height: 400px;">
                          <div class="loader"></div>
                          <div class="dimmer-content">
                            <center><h2>Please do not refresh this page</h2></center>
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin:auto;background:#fff;display:block;" width="200px" height="200px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
                              <circle cx="50" cy="50" r="32" stroke-width="8" stroke="#e15b64" stroke-dasharray="50.26548245743669 50.26548245743669" fill="none" stroke-linecap="round">
                                <animateTransform attributeName="transform" type="rotate" dur="1s" repeatCount="indefinite" keyTimes="0;1" values="0 50 50;360 50 50"></animateTransform>
                              </circle>
                              <circle cx="50" cy="50" r="23" stroke-width="8" stroke="#f8b26a" stroke-dasharray="36.12831551628262 36.12831551628262" stroke-dashoffset="36.12831551628262" fill="none" stroke-linecap="round">
                                <animateTransform attributeName="transform" type="rotate" dur="1s" repeatCount="indefinite" keyTimes="0;1" values="0 50 50;-360 50 50"></animateTransform>
                              </circle>
                            </svg>
                            <form method="post" action="https://perfectmoney.is/api/step1.asp" id="redirection_form">
                              <input type="hidden" name="PAYMENT_AMOUNT" value="'.$amount.'">
                              <input type="hidden" name="PAYEE_ACCOUNT" value="'.$perfectmoney["PAYEE_ACCOUNT"].'">
                              <input type="hidden" name="PAYEE_NAME" value="'.$perfectmoney["PAYEE_NAME"].'">
                              <input type="hidden" name="PAYMENT_UNITS" value="'.$perfectmoney["PAYMENT_UNITS"].'">
                              <input type="hidden" name="STATUS_URL" value="'.$perfectmoney["STATUS_URL"].'">
                              <input type="hidden" name="PAYMENT_URL" value="'.$perfectmoney["PAYMENT_URL"].'">
                              <input type="hidden" name="NOPAYMENT_URL" value="'.$perfectmoney["NOPAYMENT_URL"].'">
                              <input type="hidden" name="BAGGAGE_FIELDS" value="'.$perfectmoney["BAGGAGE_FIELDS"].'">
                              <input type="hidden" name="ORDER_NUM" value="'.$perfectmoney["ORDER_NUM"].'">
                              <input type="hidden" name="CUST_NUM" value="'.$perfectmoney["CUST_NUM"].'">
                              <input type="hidden" name="PAYMENT_ID" value="'.$perfectmoney["PAYMENT_ID"].'>
                              <input type="hidden" name="PAYMENT_URL_METHOD" value="POST">
                              <input type="hidden" name="NOPAYMENT_URL_METHOD" value="POST">
                              <input type="hidden" name="SUGGESTED_MEMO" value="'.$perfectmoney["memo"].'">
                              <script type="text/javascript">
                                document.getElementById("redirection_form").submit();
                              </script>
                            </form>
                          </div>
                        </div>';	
                	
                	
                	
                	
                	
                	
                	
                	
                
elseif( $method_id == 17 ):

            $insert = $conn->prepare("INSERT INTO payments SET client_id=:c_id, payment_amount=:amount, papara_amount=:p_amount, payment_privatecode=:code, payment_method=:method, payment_mode=:mode, payment_create_date=:date, payment_ip=:ip ");
            $insert-> execute(array("c_id"=>$user['client_id'],"amount"=>$amount,"p_amount"=>$amount_fee,"code"=>$paymentCode,"method"=>$method_id,"mode"=>"Automatic","date"=>date("Y.m.d H:i:s"),"ip"=>GetIP() ));
               
            $response = site_url("payment/papara");
            
            $_SESSION["totoken"] = $paymentCode;

            if( $insert ):
                $success    = 1;
                $successText= $languageArray["error.addfunds.online.success"];
                $payment_url  = $response;
                unset($_SESSION["data"]);
            else:
                $error    = 1;
                $errorText= $languageArray["error.addfunds.online.fail"];
            endif;
           endif;
        
}

endif;

if( $payment_url ):
    echo '<script>setInterval(function(){window.location="'.$payment_url.'"},2000)</script>';
endif;
 
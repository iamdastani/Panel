<?php
    
    define('PATH', realpath('.'));
    define('SUBFOLDER', false);
    define('URL', 'https://social.yipstanzania.co.tz');
    define('DINAMICLISANCE', 'host');
    
    ini_set('display_errors', 1);
    date_default_timezone_set('Asia/Kolkata');
    
    return [
      'db' => [
        'name'    =>  'fanaufwd_smm',
        'host'    =>  'localhost',
        'user'    =>  'fanaufwd_smm',
        'pass'    =>  'fanaufwd_smm',
        'charset' =>  'utf8mb4' 
      ]
    ];
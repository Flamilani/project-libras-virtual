<?php
session_start();

ini_set('display_errors', 1);
ini_set('display_startup_erros', 1);
error_reporting(E_ALL);

require 'config.php';

spl_autoload_register(function($class) {
    
  if(strpos($class, 'Controller') > -1) {
        if(file_exists('controllers/' . $class . '.php')) {
            require 'controllers/' . $class . '.php';
      }
    } else if(file_exists('models/' . $class . '.php')) {
        require 'models/' . $class . '.php';

    } else if(file_exists('core/' . $class . '.php')) {
        require 'core/' . $class . '.php';
    }
});

$core = new Core();
$core->run();
?>
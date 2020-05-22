<?php 
require 'environment.php';

global $config;
$config = array();

if(ENVIRONMENT == 'development') {
	define("BASE", "http://localhost/estrutura_ead/");
	$config['dbname'] = 'mod_ead';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '123123';
} else {
	define("BASE", "http://wwww.librasvirtual.com.br/painel");
	$config['dbname'] = 'mod_ead';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '123123';
}

 ?>
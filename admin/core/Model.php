<?php
class Model {

	protected $db;

	public function __construct() {
		global $config;

	//	$this->db = new PDO("mysql:dbname=".$config['dbname'].";host=".$config['host'], $config['dbuser'], $config['dbpass']);

	 	$option = [PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"];

		$dsn = "mysql:dbname=" . $config['dbname'] . ';host=' . $config['host'];
		$dbUser = $config['dbuser'];
		$dbPass = $config['dbpass'];		

		try {
			$this->db = new PDO($dsn, $dbUser, $dbPass, $option);
			$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        	$this->db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
	
		} catch (PDOException $ex) {
			echo "Falha na conexão: " . $ex->getMessage(); 
		} 
		
	}
}


?>
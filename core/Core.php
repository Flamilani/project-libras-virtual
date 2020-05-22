<?php
class Core {

	public function run() {

		$url = '/';
		if(isset($_GET['url'])) {
			$url .= $_GET['url'];
		}

        $params = array();	
        
		if(!empty($url) && $url != '/') {
			$url = explode('/', $url);
			array_shift($url);

			$currentController = $url[0] . 'Controller';
			array_shift($url);

			if(isset($url[0]) && !empty($url[0])) {
				$currentAction = $url[0];
				array_shift($url);
			} else {				
				$currentAction = 'index';
			}

 			if(count($url) > 0) {
				$params = $url;
			} 

		//	print_r($url);

		} else {
			$currentController = 'homeController';
			$currentAction = 'index';
		} 

	/* 	echo "<hr />";
		echo "CONTROLLER: " . $currentController . "<br />";
		echo "ACTION " . $currentAction . "<br />"; */
		 
 		if(!file_exists('controllers/' . $currentController . '.php') || !method_exists($currentController, $currentAction)) {
			$currentController = 'notfoundController';
			$currentAction = 'index';
		 }	 		 
		 
		 $controller = new $currentController();  

/* 		if(file_exists('controllers/' . $currentController . '.php')) {
			$c = new $currentController();   
		} else {
			$c = new paginaController();
			$currentAction = "index";
			$pNome = explode("Controller", $currentController);
			$pNome = $pNome[0];
			$params = array('url' => $pNome);
		}      */    

		call_user_func_array(array($controller, $currentAction), $params);
	}
}

?>
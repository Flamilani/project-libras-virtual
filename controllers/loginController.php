<?php
class loginController extends Controller {

    public function __construct() {
       // parent::__construct();
    }
    
    public function index() {
       $array = array();

        $this->loadTemplate('login', $array);

    }  

}

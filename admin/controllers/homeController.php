<?php
class homeController extends controller {

    public function __construct() {
        parent::__construct();

         $usuarios = new Usuarios();
         if(!$usuarios->isLogged()) {
            header("Location: " . BASE . "admin/login");
        } 
    }
    
    public function index() {
        $dados = array();
        $this->loadTemplate('home', $dados);
    }  

}

<?php
class homeController extends Controller {

    public function __construct() {
       // parent::__construct();

        $alunos = new Alunos();

        if($alunos->isLogged()) {
            header("Location: " . BASE . "login");
        }
    }
    
    public function index() {
       $dados = array();

        $this->loadTemplate('home', $dados);

    }  

}

<?php
class notfoundController extends controller {

    public function index() {
        $array = array();
        
        $this->loadView("404", $array);
    }

}

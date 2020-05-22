<?php
class Alunos extends Model {

    public function isLogged() {
      if(isset($_SESSION['Logado']) && !empty($_SESSION['Logado'])) {
        return true;
      } else {
        return false;
      }
    }
}
?>
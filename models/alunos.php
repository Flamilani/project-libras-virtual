<?php
class Alunos extends model {

    public function isLogged() {
      if(isset($_SESSION['logaluno']) && !empty($_SESSION['logaluno'])) {
        return true;

      } else {
        return false;

      }
    }

    public function fazerLogin($email, $senha) {

      $sql = "SELECT * FROM alunos WHERE email = '$email' AND senha = md5('$senha')";
      $sql = $this->db->query($sql);
  
      if($sql->rowCount() > 0) {
        $row = $sql->fetch();
  
        $_SESSION['logaluno'] = $row['id'];
        $_SESSION['nome'] = $row['nome'];
        $_SESSION['email'] = $row['email'];
  
        return true;
      }
  
      return false;
  
    }
}
?>
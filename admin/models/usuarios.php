<?php
class Usuarios extends model {

    public function isLogged() {
        if(isset($_SESSION['logadmin']) && !empty($_SESSION['logadmin'])) {
          return true;
          
        } else {
          return false;
        }
      }

    public function fazerLogin($email, $senha) {

        $sql = "SELECT * FROM usuarios WHERE email = '$email' AND senha = md5('$senha')";
        $sql = $this->db->query($sql);

        if($sql->rowCount() > 0) {
          $row = $sql->fetch();
    
          $_SESSION['logadmin'] = $row['id'];    
          $_SESSION['nome'] = $row['nome'];
          $_SESSION['email'] = $row['email'];

          return true;
        }
    
        return false;
    
      }
}
?>
<?php require 'inc/header.php'; ?>
<img class="container d-flex justify-content-center mt-5 logo-login" src="<?= BASE; ?>assets/imgs/logo_p.png" alt="Logo Libras Virtual">
    <main class="container d-flex justify-content-center mt-3">
            <div class="row">          
                    <div class="card">                  
                            <div class="card-header text-white bg-secondary">
                             <div class="h4 font-weight-normal text-center">Login</div> 
                            </div>
                            <div class="card-body">
                                    <form class="form-signin" method="POST">                                  
                                            <div class="form-label-group">
                                              <input type="email" name="email" id="email" class="form-control" placeholder="E-mail" required autofocus>
                                              <label style="cursor:text" for="email">E-mail</label>
                                            </div>
                                      
                                            <div class="form-label-group">
                                              <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>
                                              <label style="cursor:text" for="senha">Senha</label>
                                            </div>
                                      
                                            <div class="checkbox mb-3">
                                              <label>
                                                <input type="checkbox" value="remember-me"> Lembrar-me
                                              </label>
                                            </div>
                                            <input class="btn btn-primary btn-block" type="submit" value="Acessar" />                      
                                     </form>         
                                     <a href="#"><i class="fa fa-arrow-left mr-2" aria-hidden="true"></i>Voltar a Inicial</a>                            
                            </div>
                          </div>   
                       
                  </div>       
    </main>
<?php require 'inc/footer.php'; ?> 
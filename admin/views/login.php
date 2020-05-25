<?php require 'inc/header.php'; ?>
<main class="container d-flex justify-content-center mt-5">
            <div class="row">
                    <div class="card">
                            <div class="card-header text-white bg-secondary">
                             <div class="h4 font-weight-normal text-center">Painel Administrativo</div> 
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
                                            <input class="btn btn-primary btn-block mt-4" type="submit" value="Acessar" />                      
                                     </form>                                                                       
                            </div>
                          </div>   
                       
                  </div>       
    </main>
<?php require 'inc/footer.php'; ?> 